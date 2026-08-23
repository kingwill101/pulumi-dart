// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_profile.dart';
import 'metadata.dart';
import 'upgrade_profile.dart';

/// AppLink Member properties
class AppLinkMemberProperties {
  /// Cluster type
  final pulumi.Input<String>? clusterType;
  /// Connectivity profile.
  final pulumi.Input<ConnectivityProfile>? connectivityProfile;
  /// AppLink Member Metadata
  final pulumi.Input<Metadata> metadata;
  /// Upgrade profile.
  final pulumi.Input<UpgradeProfile>? upgradeProfile;

  /// Creates a new [AppLinkMemberProperties].
  /// [clusterType] Cluster type
  /// [connectivityProfile] Connectivity profile.
  /// [metadata] AppLink Member Metadata
  /// [upgradeProfile] Upgrade profile.
  const AppLinkMemberProperties({
    this.clusterType,
    this.connectivityProfile,
    required this.metadata,
    this.upgradeProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'connectivityProfile': ?pulumi.Input.mapOptionalInputValue<ConnectivityProfile, Map<String, dynamic>>(connectivityProfile, (value) => value.toMap()),
      'metadata': pulumi.Input.mapInputValue<Metadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'upgradeProfile': ?pulumi.Input.mapOptionalInputValue<UpgradeProfile, Map<String, dynamic>>(upgradeProfile, (value) => value.toMap()),
    };
  }

  factory AppLinkMemberProperties.fromMap(Map<String, dynamic> map) {
    return AppLinkMemberProperties(
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectivityProfile: (() { final guardedValue = map['connectivityProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectivityProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadata: pulumi.Input.fromValue(Metadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      upgradeProfile: (() { final guardedValue = map['upgradeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UpgradeProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
