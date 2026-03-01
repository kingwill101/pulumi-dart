// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_control_multi_region_access_point_policy_document_properties.dart';

/// {@template pulumi_awsconnector_s3_control_multi_region_access_point_policy_document_args_doc}
/// The set of arguments for S3ControlMultiRegionAccessPointPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_s3_control_multi_region_access_point_policy_document_args_doc}
class S3ControlMultiRegionAccessPointPolicyDocumentArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of S3ControlMultiRegionAccessPointPolicyDocument
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<S3ControlMultiRegionAccessPointPolicyDocumentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [S3ControlMultiRegionAccessPointPolicyDocumentArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of S3ControlMultiRegionAccessPointPolicyDocument
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  S3ControlMultiRegionAccessPointPolicyDocumentArgs({
    String? location,
    String? name,
    S3ControlMultiRegionAccessPointPolicyDocumentProperties? properties,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<S3ControlMultiRegionAccessPointPolicyDocumentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<S3ControlMultiRegionAccessPointPolicyDocumentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory S3ControlMultiRegionAccessPointPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return S3ControlMultiRegionAccessPointPolicyDocumentArgs(
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : S3ControlMultiRegionAccessPointPolicyDocumentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

