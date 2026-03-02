// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_provider_profile_response_infra_network_profile.dart';
import 'cloud_provider_profile_response_infra_storage_profile.dart';

/// CloudProviderProfile - The underlying cloud infra provider properties.
class CloudProviderProfileResponse {
  /// InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  final pulumi.Input<CloudProviderProfileResponseInfraNetworkProfile>? infraNetworkProfile;
  /// InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  final pulumi.Input<CloudProviderProfileResponseInfraStorageProfile>? infraStorageProfile;

  /// Creates a new [CloudProviderProfileResponse].
  /// [infraNetworkProfile] InfraNetworkProfile - List of infra network profiles for the provisioned cluster
  /// [infraStorageProfile] InfraStorageProfile - List of infra storage profiles for the provisioned cluster
  CloudProviderProfileResponse({
    this.infraNetworkProfile,
    this.infraStorageProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infraNetworkProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfileResponseInfraNetworkProfile, Map<String, dynamic>>(infraNetworkProfile, (value) => value.toMap()),
      'infraStorageProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfileResponseInfraStorageProfile, Map<String, dynamic>>(infraStorageProfile, (value) => value.toMap()),
    };
  }

  factory CloudProviderProfileResponse.fromMap(Map<String, dynamic> map) {
    return CloudProviderProfileResponse(
      infraNetworkProfile: map['infraNetworkProfile'] == null ? null : (CloudProviderProfileResponseInfraNetworkProfile.fromMap((map['infraNetworkProfile'] as Map).cast<String, dynamic>())).input(),
      infraStorageProfile: map['infraStorageProfile'] == null ? null : (CloudProviderProfileResponseInfraStorageProfile.fromMap((map['infraStorageProfile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

