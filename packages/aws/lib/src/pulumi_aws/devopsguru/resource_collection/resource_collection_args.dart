// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resource_collection_cloudformation/resource_collection_cloudformation.dart';
import '../resource_collection_tags/resource_collection_tags.dart';

/// The set of arguments for ResourceCollection.
class ResourceCollectionArgs {
  /// A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  final Input<ResourceCollectionCloudformation>? cloudformation;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  final Input<ResourceCollectionTags>? tags;

  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  ///
  /// The following arguments are optional:
  final Input<String> type;

  ResourceCollectionArgs({
    this.cloudformation,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudformationValue = cloudformation;
    if (cloudformationValue != null) {
      map['cloudformation'] = Input.mapOptionalInputValue<
          ResourceCollectionCloudformation,
          Map<String, dynamic>>(cloudformationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = Input.mapOptionalInputValue<ResourceCollectionTags,
          Map<String, dynamic>>(tagsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory ResourceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return ResourceCollectionArgs(
      cloudformation: Input.asOptionalInput<ResourceCollectionCloudformation>(
          map['cloudformation']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<ResourceCollectionTags>(map['tags']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
