// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_trail_trail_properties.dart';

/// {@template pulumi_awsconnector_cloud_trail_trail_args_doc}
/// The set of arguments for CloudTrailTrail.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_cloud_trail_trail_args_doc}
class CloudTrailTrailArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of CloudTrailTrail
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<CloudTrailTrailProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CloudTrailTrailArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of CloudTrailTrail
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  CloudTrailTrailArgs({
    String? location,
    String? name,
    CloudTrailTrailProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<CloudTrailTrailProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudTrailTrailProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CloudTrailTrailArgs.fromMap(Map<String, dynamic> map) {
    return CloudTrailTrailArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : CloudTrailTrailProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

