// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_dps_properties_description.dart';
import 'iot_dps_sku_info.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_deviceprovisioningservices_iot_dps_resource_args_doc}
/// The set of arguments for IotDpsResource.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_iot_dps_resource_args_doc}
class IotDpsResourceArgs {
  /// The managed identities for a provisioning service.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// Service specific properties for a provisioning service
  final pulumi.Input<IotDpsPropertiesDescription> properties;
  /// Name of provisioning service to create or update.
  final pulumi.Input<String>? provisioningServiceName;
  /// Resource group identifier.
  final pulumi.Input<String> resourceGroupName;
  /// The resource group of the resource.
  final pulumi.Input<String>? resourcegroup;
  /// Sku info for a provisioning Service.
  final pulumi.Input<IotDpsSkuInfo> sku;
  /// The subscription id of the resource.
  final pulumi.Input<String>? subscriptionid;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotDpsResourceArgs].
  /// [identity] The managed identities for a provisioning service.
  /// [location] The resource location.
  /// [properties] Service specific properties for a provisioning service
  /// [provisioningServiceName] Name of provisioning service to create or update.
  /// [resourceGroupName] Resource group identifier.
  /// [resourcegroup] The resource group of the resource.
  /// [sku] Sku info for a provisioning Service.
  /// [subscriptionid] The subscription id of the resource.
  /// [tags] The resource tags.
  IotDpsResourceArgs({
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<IotDpsPropertiesDescription> properties,
    pulumi.Output<String>? provisioningServiceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourcegroup,
    required pulumi.Output<IotDpsSkuInfo> sku,
    pulumi.Output<String>? subscriptionid,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<IotDpsPropertiesDescription>(properties),
      provisioningServiceName = pulumi.Input.asOptionalInput<String>(provisioningServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourcegroup = pulumi.Input.asOptionalInput<String>(resourcegroup),
      sku = pulumi.Input.asInput<IotDpsSkuInfo>(sku),
      subscriptionid = pulumi.Input.asOptionalInput<String>(subscriptionid),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<IotDpsPropertiesDescription, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningServiceName': ?provisioningServiceName,
      'resourceGroupName': resourceGroupName,
      'resourcegroup': ?resourcegroup,
      'sku': pulumi.Input.mapInputValue<IotDpsSkuInfo, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subscriptionid': ?subscriptionid,
      'tags': ?tags,
    };
  }

  factory IotDpsResourceArgs.fromMap(Map<String, dynamic> map) {
    return IotDpsResourceArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<IotDpsPropertiesDescription>(IotDpsPropertiesDescription.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      provisioningServiceName: map['provisioningServiceName'] == null ? null : pulumi.Output.create<String>(map['provisioningServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourcegroup: map['resourcegroup'] == null ? null : pulumi.Output.create<String>(map['resourcegroup'] as String),
      sku: pulumi.Output.create<IotDpsSkuInfo>(IotDpsSkuInfo.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      subscriptionid: map['subscriptionid'] == null ? null : pulumi.Output.create<String>(map['subscriptionid'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

