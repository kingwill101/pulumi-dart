// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_kms_response.dart';
import 'managed_cluster_security_profile_defender_response.dart';
import 'managed_cluster_security_profile_image_cleaner_response.dart';
import 'managed_cluster_security_profile_workload_identity_response.dart';

/// Security profile for the container service cluster.
class ManagedClusterSecurityProfileResponse {
  /// Azure Key Vault [key management service](https://kubernetes.io/docs/tasks/administer-cluster/kms-provider/) settings for the security profile.
  final pulumi.Input<AzureKeyVaultKmsResponse>? azureKeyVaultKms;
  /// A list of up to 10 base64 encoded CAs that will be added to the trust store on all nodes in the cluster. For more information see [Custom CA Trust Certificates](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority).
  final pulumi.Input<List<String>>? customCATrustCertificates;
  /// Microsoft Defender settings for the security profile.
  final pulumi.Input<ManagedClusterSecurityProfileDefenderResponse>? defender;
  /// Image Cleaner settings for the security profile.
  final pulumi.Input<ManagedClusterSecurityProfileImageCleanerResponse>? imageCleaner;
  /// Workload identity settings for the security profile. Workload identity enables Kubernetes applications to access Azure cloud resources securely with Azure AD. See https://aka.ms/aks/wi for more details.
  final pulumi.Input<ManagedClusterSecurityProfileWorkloadIdentityResponse>? workloadIdentity;

  /// Creates a new [ManagedClusterSecurityProfileResponse].
  /// [azureKeyVaultKms] Azure Key Vault [key management service](https://kubernetes.io/docs/tasks/administer-cluster/kms-provider/) settings for the security profile.
  /// [customCATrustCertificates] A list of up to 10 base64 encoded CAs that will be added to the trust store on all nodes in the cluster. For more information see [Custom CA Trust Certificates](https://learn.microsoft.com/en-us/azure/aks/custom-certificate-authority).
  /// [defender] Microsoft Defender settings for the security profile.
  /// [imageCleaner] Image Cleaner settings for the security profile.
  /// [workloadIdentity] Workload identity settings for the security profile. Workload identity enables Kubernetes applications to access Azure cloud resources securely with Azure AD. See https://aka.ms/aks/wi for more details.
  ManagedClusterSecurityProfileResponse({
    this.azureKeyVaultKms,
    this.customCATrustCertificates,
    this.defender,
    this.imageCleaner,
    this.workloadIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureKeyVaultKms': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultKmsResponse, Map<String, dynamic>>(azureKeyVaultKms, (value) => value.toMap()),
      'customCATrustCertificates': ?customCATrustCertificates,
      'defender': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfileDefenderResponse, Map<String, dynamic>>(defender, (value) => value.toMap()),
      'imageCleaner': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfileImageCleanerResponse, Map<String, dynamic>>(imageCleaner, (value) => value.toMap()),
      'workloadIdentity': ?pulumi.Input.mapOptionalInputValue<ManagedClusterSecurityProfileWorkloadIdentityResponse, Map<String, dynamic>>(workloadIdentity, (value) => value.toMap()),
    };
  }

  factory ManagedClusterSecurityProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileResponse(
      azureKeyVaultKms: (() { final guardedValue = map['azureKeyVaultKms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultKmsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customCATrustCertificates: (() { final guardedValue = map['customCATrustCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defender: (() { final guardedValue = map['defender']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterSecurityProfileDefenderResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageCleaner: (() { final guardedValue = map['imageCleaner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterSecurityProfileImageCleanerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workloadIdentity: (() { final guardedValue = map['workloadIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedClusterSecurityProfileWorkloadIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

