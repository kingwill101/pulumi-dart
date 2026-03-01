// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_access_point_properties.dart';

/// {@template pulumi_awsconnector_s3_access_point_args_doc}
/// The set of arguments for S3AccessPoint.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_s3_access_point_args_doc}
class S3AccessPointArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of S3AccessPoint
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<S3AccessPointProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [S3AccessPointArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of S3AccessPoint
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  S3AccessPointArgs({
    String? location,
    String? name,
    S3AccessPointProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<S3AccessPointProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<S3AccessPointProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory S3AccessPointArgs.fromMap(Map<String, dynamic> map) {
    return S3AccessPointArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : S3AccessPointProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

