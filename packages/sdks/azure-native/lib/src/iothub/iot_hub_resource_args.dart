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
  final pulumi.Input<ArmIdentity>? identity;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// IotHub properties
  final pulumi.Input<IotHubProperties>? properties;
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String>? resourceName;
  /// IotHub SKU info
  final pulumi.Input<IotHubSkuInfo> sku;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotHubResourceArgs].
  /// [identity] The managed identities for the IotHub.
  /// [location] The resource location.
  /// [properties] IotHub properties
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  /// [sku] IotHub SKU info
  /// [tags] The resource tags.
  IotHubResourceArgs({
    pulumi.Output<ArmIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<IotHubProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    required pulumi.Output<IotHubSkuInfo> sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ArmIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<IotHubProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      sku = pulumi.Input.asInput<IotHubSkuInfo>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<ArmIdentity>(ArmIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<IotHubProperties>(IotHubProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      sku: pulumi.Output.create<IotHubSkuInfo>(IotHubSkuInfo.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

