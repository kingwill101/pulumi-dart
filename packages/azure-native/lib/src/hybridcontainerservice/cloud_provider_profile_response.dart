// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_provider_profile_response_infra_network_profile.dart';
import 'cloud_provider_profile_response_infra_storage_profile.dart';

/// CloudProviderProfile - The underlying cloud infra provider properties.
class CloudProviderProfileResponse {
  /// InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  final CloudProviderProfileResponseInfraNetworkProfile? infraNetworkProfile;
  /// InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  final CloudProviderProfileResponseInfraStorageProfile? infraStorageProfile;

  /// Creates a new [CloudProviderProfileResponse].
  /// [infraNetworkProfile] InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  /// [infraStorageProfile] InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  CloudProviderProfileResponse({
    this.infraNetworkProfile,
    this.infraStorageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infraNetworkProfile': ?infraNetworkProfile == null ? null : infraNetworkProfile!.toMap(),
      'infraStorageProfile': ?infraStorageProfile == null ? null : infraStorageProfile!.toMap(),
    };
  }

  factory CloudProviderProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfileResponse(
      infraNetworkProfile: map['infraNetworkProfile'] == null ? null : CloudProviderProfileResponseInfraNetworkProfile.fromMap((map['infraNetworkProfile'] as Map).cast<String, dynamic>()),
      infraStorageProfile: map['infraStorageProfile'] == null ? null : CloudProviderProfileResponseInfraStorageProfile.fromMap((map['infraStorageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

