// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_collection_cloudformation.dart';
import 'resource_collection_tags.dart';

/// Input properties used for looking up and filtering ResourceCollection resources.
class ResourceCollectionState {
  /// A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  final pulumi.Input<ResourceCollectionCloudformation?>? cloudformation;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  final pulumi.Input<ResourceCollectionTags?>? tags;
  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? type;

  /// Creates a new [ResourceCollectionState].
  /// [cloudformation] A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  /// [type] Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  const ResourceCollectionState({
    this.cloudformation,
    this.region,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudformation': ?pulumi.Input.mapOptionalInputValue<ResourceCollectionCloudformation, Map<String, dynamic>>(cloudformation, (value) => value.toMap()),
      'region': ?region,
      'tags': ?pulumi.Input.mapOptionalInputValue<ResourceCollectionTags, Map<String, dynamic>>(tags, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ResourceCollectionState.fromMap(Map<String, dynamic> map) {
    return ResourceCollectionState(
      cloudformation: (() { final guardedValue = map['cloudformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceCollectionCloudformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceCollectionTags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
