// ignore_for_file: unused_element, unnecessary_cast

import 'azure_key_vault_kms.dart';
import 'managed_cluster_security_profile_defender.dart';
import 'managed_cluster_security_profile_image_cleaner.dart';
import 'managed_cluster_security_profile_workload_identity.dart';

/// Security profile for the container service cluster.
class ManagedClusterSecurityProfile {
  /// Azure Key Vault [key management service](https://kubernetes.io/docs/tasks/administer-cluster/kms-provider/) settings for the security profile.
  final AzureKeyVaultKms? azureKeyVaultKms;
  /// A list of up to 10 base64 encoded CAs that will be added to the trust store on all nodes in the cluster. For more information see [Custom CA Trust Certificates](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority).
  final List<String>? customCATrustCertificates;
  /// Microsoft Defender settings for the security profile.
  final ManagedClusterSecurityProfileDefender? defender;
  /// Image Cleaner settings for the security profile.
  final ManagedClusterSecurityProfileImageCleaner? imageCleaner;
  /// Workload identity settings for the security profile. Workload identity enables Kubernetes applications to access Azure cloud resources securely with Azure AD. See https://aka.ms/aks/wi for more details.
  final ManagedClusterSecurityProfileWorkloadIdentity? workloadIdentity;

  /// Creates a new [ManagedClusterSecurityProfile].
  /// [azureKeyVaultKms] Azure Key Vault [key management service](https://kubernetes.io/docs/tasks/administer-cluster/kms-provider/) settings for the security profile.
  /// [customCATrustCertificates] A list of up to 10 base64 encoded CAs that will be added to the trust store on all nodes in the cluster. For more information see [Custom CA Trust Certificates](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority).
  /// [defender] Microsoft Defender settings for the security profile.
  /// [imageCleaner] Image Cleaner settings for the security profile.
  /// [workloadIdentity] Workload identity settings for the security profile. Workload identity enables Kubernetes applications to access Azure cloud resources securely with Azure AD. See https://aka.ms/aks/wi for more details.
  ManagedClusterSecurityProfile({
    this.azureKeyVaultKms,
    this.customCATrustCertificates,
    this.defender,
    this.imageCleaner,
    this.workloadIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultKms': ?azureKeyVaultKms == null ? null : azureKeyVaultKms!.toMap(),
      'customCATrustCertificates': ?customCATrustCertificates,
      'defender': ?defender == null ? null : defender!.toMap(),
      'imageCleaner': ?imageCleaner == null ? null : imageCleaner!.toMap(),
      'workloadIdentity': ?workloadIdentity == null ? null : workloadIdentity!.toMap(),
    };
  }

  factory ManagedClusterSecurityProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfile(
      azureKeyVaultKms: map['azureKeyVaultKms'] == null ? null : AzureKeyVaultKms.fromMap((map['azureKeyVaultKms'] as Map).cast<String, dynamic>()),
      customCATrustCertificates: map['customCATrustCertificates'] == null ? null : (map['customCATrustCertificates'] as List).cast<String>(),
      defender: map['defender'] == null ? null : ManagedClusterSecurityProfileDefender.fromMap((map['defender'] as Map).cast<String, dynamic>()),
      imageCleaner: map['imageCleaner'] == null ? null : ManagedClusterSecurityProfileImageCleaner.fromMap((map['imageCleaner'] as Map).cast<String, dynamic>()),
      workloadIdentity: map['workloadIdentity'] == null ? null : ManagedClusterSecurityProfileWorkloadIdentity.fromMap((map['workloadIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

