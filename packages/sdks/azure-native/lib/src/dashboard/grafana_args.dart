// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_grafana_properties.dart';
import 'managed_service_identity.dart';
import 'resource_sku.dart';

/// {@template pulumi_dashboard_grafana_args_doc}
/// The set of arguments for Grafana.
/// {@endtemplate}
/// {@macro pulumi_dashboard_grafana_args_doc}
class GrafanaArgs {
  /// The managed identity of the grafana resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the grafana resource lives
  final pulumi.Input<String>? location;
  /// Properties specific to the grafana resource.
  final pulumi.Input<ManagedGrafanaProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Sku of the grafana resource.
  final pulumi.Input<ResourceSku>? sku;
  /// The tags for grafana resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The workspace name of Azure Managed Grafana.
  final pulumi.Input<String>? workspaceName;

  /// Creates a new [GrafanaArgs].
  /// [identity] The managed identity of the grafana resource.
  /// [location] The geo-location where the grafana resource lives
  /// [properties] Properties specific to the grafana resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The Sku of the grafana resource.
  /// [tags] The tags for grafana resource.
  /// [workspaceName] The workspace name of Azure Managed Grafana.
  GrafanaArgs({
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ManagedGrafanaProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': ?workspaceName,
    };
  }

  factory GrafanaArgs.fromMap(Map<String, dynamic> map) {
    return GrafanaArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedGrafanaProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: (() { final guardedValue = map['workspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

