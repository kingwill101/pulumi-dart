// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_spec.dart';

/// Input properties used for looking up and filtering VirtualRouter resources.
class VirtualRouterState {
  /// ARN of the virtual router.
  final pulumi.Input<String>? arn;
  /// Creation date of the virtual router.
  final pulumi.Input<String>? createdDate;
  /// Last update date of the virtual router.
  final pulumi.Input<String>? lastUpdatedDate;
  /// Name of the service mesh in which to create the virtual router. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? meshName;
  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? meshOwner;
  /// Name to use for the virtual router. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource owner's AWS account ID.
  final pulumi.Input<String>? resourceOwner;
  /// Virtual router specification to apply.
  final pulumi.Input<VirtualRouterSpec>? spec;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VirtualRouterState].
  /// [arn] ARN of the virtual router.
  /// [createdDate] Creation date of the virtual router.
  /// [lastUpdatedDate] Last update date of the virtual router.
  /// [meshName] Name of the service mesh in which to create the virtual router. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the virtual router. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [spec] Virtual router specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VirtualRouterState({
    this.arn,
    this.createdDate,
    this.lastUpdatedDate,
    this.meshName,
    this.meshOwner,
    this.name,
    this.region,
    this.resourceOwner,
    this.spec,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'lastUpdatedDate': ?lastUpdatedDate,
      'meshName': ?meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'spec': ?pulumi.Input.mapOptionalInputValue<VirtualRouterSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VirtualRouterState.fromMap(Map<String, dynamic> map) {
    return VirtualRouterState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate'] as String).input(),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : (map['lastUpdatedDate'] as String).input(),
      meshName: map['meshName'] == null ? null : (map['meshName'] as String).input(),
      meshOwner: map['meshOwner'] == null ? null : (map['meshOwner'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceOwner: map['resourceOwner'] == null ? null : (map['resourceOwner'] as String).input(),
      spec: map['spec'] == null ? null : (VirtualRouterSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

