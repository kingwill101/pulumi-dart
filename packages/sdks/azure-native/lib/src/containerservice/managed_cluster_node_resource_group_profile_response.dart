// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Node resource group lockdown profile for a managed cluster.
class ManagedClusterNodeResourceGroupProfileResponse {
  /// The restriction level applied to the cluster's node resource group. If not specified, the default is 'Unrestricted'
  final pulumi.Input<String>? restrictionLevel;

  /// Creates a new [ManagedClusterNodeResourceGroupProfileResponse].
  /// [restrictionLevel] The restriction level applied to the cluster's node resource group. If not specified, the default is 'Unrestricted'
  const ManagedClusterNodeResourceGroupProfileResponse({
    this.restrictionLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restrictionLevel': ?restrictionLevel,
    };
  }

  factory ManagedClusterNodeResourceGroupProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterNodeResourceGroupProfileResponse(
      restrictionLevel: (() { final guardedValue = map['restrictionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
