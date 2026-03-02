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
    this.identity,
    this.location,
    required this.properties,
    this.provisioningServiceName,
    required this.resourceGroupName,
    this.resourcegroup,
    required this.sku,
    this.subscriptionid,
    this.tags,
  });

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
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: (IotDpsPropertiesDescription.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      provisioningServiceName: map['provisioningServiceName'] == null ? null : (map['provisioningServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourcegroup: map['resourcegroup'] == null ? null : (map['resourcegroup'] as String).input(),
      sku: (IotDpsSkuInfo.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      subscriptionid: map['subscriptionid'] == null ? null : (map['subscriptionid'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

