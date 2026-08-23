// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Drill asset properties.
class AssetPropertiesOfDrill {
  /// Region where Drill's internal resources will be created.
  final pulumi.Input<String> region;
  /// Resource group where Drill's internal resources will be created. If not specified, defaults to 'AzureResilienceManagementDrills'. This value is immutable after drill creation.
  final pulumi.Input<String>? resourceGroup;
  /// Subscription where Drill's internal resources will be created.
  final pulumi.Input<String> subscription;

  /// Creates a new [AssetPropertiesOfDrill].
  /// [region] Region where Drill's internal resources will be created.
  /// [resourceGroup] Resource group where Drill's internal resources will be created. If not specified, defaults to 'AzureResilienceManagementDrills'. This value is immutable after drill creation.
  /// [subscription] Subscription where Drill's internal resources will be created.
  const AssetPropertiesOfDrill({
    required this.region,
    this.resourceGroup,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'resourceGroup': ?resourceGroup,
      'subscription': subscription,
    };
  }

  factory AssetPropertiesOfDrill.fromMap(Map<String, dynamic> map) {
    return AssetPropertiesOfDrill(
      region: pulumi.Input.fromValue(map['region'] as String),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscription: pulumi.Input.fromValue(map['subscription'] as String),
    );
  }
}
