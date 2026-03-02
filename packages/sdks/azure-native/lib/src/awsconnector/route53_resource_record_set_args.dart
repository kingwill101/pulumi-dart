// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route53_resource_record_set_properties.dart';

/// {@template pulumi_awsconnector_route53_resource_record_set_args_doc}
/// The set of arguments for Route53ResourceRecordSet.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_route53_resource_record_set_args_doc}
class Route53ResourceRecordSetArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of Route53ResourceRecordSet
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<Route53ResourceRecordSetProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Route53ResourceRecordSetArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of Route53ResourceRecordSet
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  Route53ResourceRecordSetArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<Route53ResourceRecordSetProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory Route53ResourceRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return Route53ResourceRecordSetArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (Route53ResourceRecordSetProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

