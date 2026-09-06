// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_identity.dart';
import 'iot_hub_properties.dart';
import 'iot_hub_sku_info.dart';

/// {@template pulumi_iothub_iot_hub_resource_args_doc}
/// The set of arguments for IotHubResource.
/// {@endtemplate}
/// {@macro pulumi_iothub_iot_hub_resource_args_doc}
class IotHubResourceArgs {
  /// The managed identities for the IotHub.
  final pulumi.Input<ArmIdentity?>? identity;
  /// The resource location.
  final pulumi.Input<String?>? location;
  /// IotHub properties
  final pulumi.Input<IotHubProperties?>? properties;
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String?>? resourceName;
  /// IotHub SKU info
  final pulumi.Input<IotHubSkuInfo> sku;
  /// The resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [IotHubResourceArgs].
  /// [identity] The managed identities for the IotHub.
  /// [location] The resource location.
  /// [properties] IotHub properties
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  /// [sku] IotHub SKU info
  /// [tags] The resource tags.
  const IotHubResourceArgs({
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ArmIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<IotHubProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'sku': pulumi.Input.mapInputValue<IotHubSkuInfo, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory IotHubResourceArgs.fromMap(Map<String, dynamic> map) {
    return IotHubResourceArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IotHubProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(IotHubSkuInfo.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
