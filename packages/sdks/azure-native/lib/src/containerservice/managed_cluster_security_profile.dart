// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_kms.dart';
import 'managed_cluster_security_profile_defender.dart';
import 'managed_cluster_security_profile_image_cleaner.dart';
import 'managed_cluster_security_profile_workload_identity.dart';

/// Security profile for the container service cluster.
class ManagedClusterSecurityProfile {
  /// Azure Key Vault [key management service](https://kubernetes.io/docs/tasks/administer-cluster/kms-provider/) settings for the security profile.
  final pulumi.Input<AzureKeyVaultKms>? azureKeyVaultKms;
  /// A list of up to 10 base64 encoded CAs that will be added to the trust store on all nodes in the cluster. For more information see [Custom CA Trust Certificates](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority).
  final pulumi.Input<List<String>>? customCATrustCertificates;
  /// Microsoft Defender settings for the security profile.
  final pulumi.Input<ManagedClusterSecurityProfileDefender>? defender;
  /// Image Cleaner settings for the security profile.
  final pulumi.Input<ManagedClusterSecurityProfileImageCleaner>? imageCleaner;
  /// Workload identity settings for the security profile. Workload identity enables Kubernetes applications to access Azure cloud resources securely with Azure AD. See https://aka.ms/aks/wi for more details.
  final pulumi.Input<ManagedClusterSecurityProfileWorkloadIdentity>? workloadIdentity;

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
      'azureKeyVaultKms': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultKms, Map<String, dynamic>>(azureKeyVaultKms, (value) => value.toMap()),
      'customCATrustCertificates': ?customCATrustCertificates,
      'defender': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfileDefender, Map<String, dynamic>>(defender, (value) => value.toMap()),
      'imageCleaner': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfileImageCleaner, Map<String, dynamic>>(imageCleaner, (value) => value.toMap()),
      'workloadIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfileWorkloadIdentity, Map<String, dynamic>>(workloadIdentity, (value) => value.toMap()),
    };
  }

  factory ManagedClusterSecurityProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfile(
      azureKeyVaultKms: map['azureKeyVaultKms'] == null ? null : (AzureKeyVaultKms.fromMap((map['azureKeyVaultKms']! as Map).cast<String, dynamic>())).input(),
      customCATrustCertificates: map['customCATrustCertificates'] == null ? null : ((map['customCATrustCertificates']! as List).cast<String>()).input(),
      defender: map['defender'] == null ? null : (ManagedClusterSecurityProfileDefender.fromMap((map['defender']! as Map).cast<String, dynamic>())).input(),
      imageCleaner: map['imageCleaner'] == null ? null : (ManagedClusterSecurityProfileImageCleaner.fromMap((map['imageCleaner']! as Map).cast<String, dynamic>())).input(),
      workloadIdentity: map['workloadIdentity'] == null ? null : (ManagedClusterSecurityProfileWorkloadIdentity.fromMap((map['workloadIdentity']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

