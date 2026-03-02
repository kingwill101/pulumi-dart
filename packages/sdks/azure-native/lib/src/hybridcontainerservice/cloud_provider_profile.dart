// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_provider_profile_infra_network_profile.dart';
import 'cloud_provider_profile_infra_storage_profile.dart';

/// CloudProviderProfile - The underlying cloud infra provider properties.
class CloudProviderProfile {
  /// InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  final pulumi.Input<CloudProviderProfileInfraNetworkProfile>? infraNetworkProfile;
  /// InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  final pulumi.Input<CloudProviderProfileInfraStorageProfile>? infraStorageProfile;

  /// Creates a new [CloudProviderProfile].
  /// [infraNetworkProfile] InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  /// [infraStorageProfile] InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  CloudProviderProfile({
    this.infraNetworkProfile,
    this.infraStorageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infraNetworkProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfileInfraNetworkProfile, Map<String, dynamic>>(infraNetworkProfile, (value) => value.toMap()),
      'infraStorageProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfileInfraStorageProfile, Map<String, dynamic>>(infraStorageProfile, (value) => value.toMap()),
    };
  }

  factory CloudProviderProfile.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfile(
      infraNetworkProfile: map['infraNetworkProfile'] == null ? null : (CloudProviderProfileInfraNetworkProfile.fromMap((map['infraNetworkProfile'] as Map).cast<String, dynamic>())).input(),
      infraStorageProfile: map['infraStorageProfile'] == null ? null : (CloudProviderProfileInfraStorageProfile.fromMap((map['infraStorageProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

