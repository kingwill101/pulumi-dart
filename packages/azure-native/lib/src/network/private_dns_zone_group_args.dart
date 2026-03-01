// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_dns_zone_config.dart';

/// {@template pulumi_network_private_dns_zone_group_args_doc}
/// The set of arguments for PrivateDnsZoneGroup.
/// {@endtemplate}
/// {@macro pulumi_network_private_dns_zone_group_args_doc}
class PrivateDnsZoneGroupArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// A collection of private dns zone configurations of the private dns zone group.
  final pulumi.Input<List<PrivateDnsZoneConfig>>? privateDnsZoneConfigs;
  /// The name of the private dns zone group.
  final pulumi.Input<String>? privateDnsZoneGroupName;
  /// The name of the private endpoint.
  final pulumi.Input<String> privateEndpointName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateDnsZoneGroupArgs].
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateDnsZoneConfigs] A collection of private dns zone configurations of the private dns zone group.
  /// [privateDnsZoneGroupName] The name of the private dns zone group.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group.
  PrivateDnsZoneGroupArgs({
    String? id,
    String? name,
    List<PrivateDnsZoneConfig>? privateDnsZoneConfigs,
    String? privateDnsZoneGroupName,
    required String privateEndpointName,
    required String resourceGroupName,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateDnsZoneConfigs = pulumi.Input.asOptionalInput<List<PrivateDnsZoneConfig>>(privateDnsZoneConfigs),
      privateDnsZoneGroupName = pulumi.Input.asOptionalInput<String>(privateDnsZoneGroupName),
      privateEndpointName = pulumi.Input.asInput<String>(privateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateDnsZoneConfigs': ?pulumi.Input.mapOptionalInputValue<List<PrivateDnsZoneConfig>, List<Map<String, dynamic>>>(privateDnsZoneConfigs, (value) => pulumi.Input.encodeList<PrivateDnsZoneConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDnsZoneGroupName': ?privateDnsZoneGroupName,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateDnsZoneGroupArgs.fromMap(Map<String, dynamic> map) {
    return PrivateDnsZoneGroupArgs(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateDnsZoneConfigs: map['privateDnsZoneConfigs'] == null ? null : pulumi.Input.decodeList<PrivateDnsZoneConfig>(map['privateDnsZoneConfigs'], (value) => PrivateDnsZoneConfig.fromMap((value as Map).cast<String, dynamic>())),
      privateDnsZoneGroupName: map['privateDnsZoneGroupName'] == null ? null : map['privateDnsZoneGroupName'] as String,
      privateEndpointName: map['privateEndpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

