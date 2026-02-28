// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_collection_cloudformation.dart';
import 'resource_collection_tags.dart';

/// {@template pulumi_devopsguru_resource_collection_resource_collection_args_doc}
/// The set of arguments for ResourceCollection.
/// {@endtemplate}
/// {@macro pulumi_devopsguru_resource_collection_resource_collection_args_doc}
class ResourceCollectionArgs {
  /// A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  final pulumi.Input<ResourceCollectionCloudformation>? cloudformation;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  final pulumi.Input<ResourceCollectionTags>? tags;

  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [ResourceCollectionArgs].
  /// [cloudformation] A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  /// [type] Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  ResourceCollectionArgs({
    ResourceCollectionCloudformation? cloudformation,
    String? region,
    ResourceCollectionTags? tags,
    required String type,
  })  : cloudformation =
            pulumi.Input.asOptionalInput<ResourceCollectionCloudformation>(
                cloudformation),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<ResourceCollectionTags>(tags),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudformationValue = cloudformation;
    if (cloudformationValue != null) {
      map['cloudformation'] = pulumi.Input.mapOptionalInputValue<
          ResourceCollectionCloudformation,
          Map<String, dynamic>>(cloudformationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = pulumi.Input.mapOptionalInputValue<ResourceCollectionTags,
          Map<String, dynamic>>(tagsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory ResourceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return ResourceCollectionArgs(
      cloudformation: map['cloudformation'] == null
          ? null
          : ResourceCollectionCloudformation.fromMap(
              (map['cloudformation'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : ResourceCollectionTags.fromMap(
              (map['tags'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
