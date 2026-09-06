// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_profile_response.dart';
import 'metadata_response.dart';
import 'observability_profile_response.dart';
import 'upgrade_profile_response.dart';

/// AppLink Member properties
class AppLinkMemberPropertiesResponse {
  /// Cluster type
  final pulumi.Input<String?>? clusterType;
  /// Connectivity profile.
  final pulumi.Input<ConnectivityProfileResponse?>? connectivityProfile;
  /// AppLink Member Metadata
  final pulumi.Input<MetadataResponse> metadata;
  /// Observability profile
  final pulumi.Input<ObservabilityProfileResponse?>? observabilityProfile;
  /// Provisioning state
  final pulumi.Input<String> provisioningState;
  /// Upgrade profile.
  final pulumi.Input<UpgradeProfileResponse?>? upgradeProfile;

  /// Creates a new [AppLinkMemberPropertiesResponse].
  /// [clusterType] Cluster type
  /// [connectivityProfile] Connectivity profile.
  /// [metadata] AppLink Member Metadata
  /// [observabilityProfile] Observability profile
  /// [provisioningState] Provisioning state
  /// [upgradeProfile] Upgrade profile.
  const AppLinkMemberPropertiesResponse({
    this.clusterType,
    this.connectivityProfile,
    required this.metadata,
    this.observabilityProfile,
    required this.provisioningState,
    this.upgradeProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'connectivityProfile': ?pulumi.Input.mapOptionalInputValue<ConnectivityProfileResponse, Map<String, dynamic>>(connectivityProfile, (value) => value.toMap()),
      'metadata': pulumi.Input.mapInputValue<MetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'observabilityProfile': ?pulumi.Input.mapOptionalInputValue<ObservabilityProfileResponse, Map<String, dynamic>>(observabilityProfile, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'upgradeProfile': ?pulumi.Input.mapOptionalInputValue<UpgradeProfileResponse, Map<String, dynamic>>(upgradeProfile, (value) => value.toMap()),
    };
  }

  factory AppLinkMemberPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AppLinkMemberPropertiesResponse(
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectivityProfile: (() { final guardedValue = map['connectivityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadata: pulumi.Input.fromValue(MetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      observabilityProfile: (() { final guardedValue = map['observabilityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObservabilityProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      upgradeProfile: (() { final guardedValue = map['upgradeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
