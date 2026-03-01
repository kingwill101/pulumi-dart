// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_properties.dart';
import 'sku.dart';

/// {@template pulumi_appplatform_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_appplatform_service_args_doc}
class ServiceArgs {
  /// The GEO location of the resource.
  final pulumi.Input<String>? location;
  /// Properties of the Service resource
  final pulumi.Input<ClusterResourceProperties>? properties;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String>? serviceName;
  /// Sku of the Service resource
  final pulumi.Input<Sku>? sku;
  /// Tags of the service which is a list of key value pairs that describe the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [location] The GEO location of the resource.
  /// [properties] Properties of the Service resource
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  /// [sku] Sku of the Service resource
  /// [tags] Tags of the service which is a list of key value pairs that describe the resource.
  ServiceArgs({
    pulumi.Output<String>? location,
    pulumi.Output<ClusterResourceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serviceName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ClusterResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ClusterResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': ?serviceName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ClusterResourceProperties>(ClusterResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

