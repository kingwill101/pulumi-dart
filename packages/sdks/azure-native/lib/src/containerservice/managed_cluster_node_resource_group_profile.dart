// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node resource group lockdown profile for a managed cluster.
class ManagedClusterNodeResourceGroupProfile {
  /// The restriction level applied to the cluster's node resource group. If not specified, the default is 'Unrestricted'
  final pulumi.Input<String>? restrictionLevel;

  /// Creates a new [ManagedClusterNodeResourceGroupProfile].
  /// [restrictionLevel] The restriction level applied to the cluster's node resource group. If not specified, the default is 'Unrestricted'
  ManagedClusterNodeResourceGroupProfile({
    this.restrictionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restrictionLevel': ?restrictionLevel,
    };
  }

  factory ManagedClusterNodeResourceGroupProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNodeResourceGroupProfile(
      restrictionLevel: (() { final guardedValue = map['restrictionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

