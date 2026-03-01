// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_provider_profile_infra_network_profile.dart';
import 'cloud_provider_profile_infra_storage_profile.dart';

/// CloudProviderProfile - The underlying cloud infra provider properties.
class CloudProviderProfile {
  /// InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  final CloudProviderProfileInfraNetworkProfile? infraNetworkProfile;
  /// InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  final CloudProviderProfileInfraStorageProfile? infraStorageProfile;

  /// Creates a new [CloudProviderProfile].
  /// [infraNetworkProfile] InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  /// [infraStorageProfile] InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  CloudProviderProfile({
    this.infraNetworkProfile,
    this.infraStorageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infraNetworkProfile': ?infraNetworkProfile == null ? null : infraNetworkProfile!.toMap(),
      'infraStorageProfile': ?infraStorageProfile == null ? null : infraStorageProfile!.toMap(),
    };
  }

  factory CloudProviderProfile.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfile(
      infraNetworkProfile: map['infraNetworkProfile'] == null ? null : CloudProviderProfileInfraNetworkProfile.fromMap((map['infraNetworkProfile'] as Map).cast<String, dynamic>()),
      infraStorageProfile: map['infraStorageProfile'] == null ? null : CloudProviderProfileInfraStorageProfile.fromMap((map['infraStorageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

