// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_bucket_policy_properties.dart';

/// {@template pulumi_awsconnector_s3_bucket_policy_args_doc}
/// The set of arguments for S3BucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_s3_bucket_policy_args_doc}
class S3BucketPolicyArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of S3BucketPolicy
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<S3BucketPolicyProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [S3BucketPolicyArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of S3BucketPolicy
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  S3BucketPolicyArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<S3BucketPolicyProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<S3BucketPolicyProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<S3BucketPolicyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory S3BucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return S3BucketPolicyArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<S3BucketPolicyProperties>(S3BucketPolicyProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

