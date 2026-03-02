// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_spec.dart';

/// Input properties used for looking up and filtering Mesh resources.
class MeshState {
  /// ARN of the service mesh.
  final pulumi.Input<String>? arn;
  /// Creation date of the service mesh.
  final pulumi.Input<String>? createdDate;
  /// Last update date of the service mesh.
  final pulumi.Input<String>? lastUpdatedDate;
  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String>? meshOwner;
  /// Name to use for the service mesh. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource owner's AWS account ID.
  final pulumi.Input<String>? resourceOwner;
  /// Service mesh specification to apply.
  final pulumi.Input<MeshSpec>? spec;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [MeshState].
  /// [arn] ARN of the service mesh.
  /// [createdDate] Creation date of the service mesh.
  /// [lastUpdatedDate] Last update date of the service mesh.
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name to use for the service mesh. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceOwner] Resource owner's AWS account ID.
  /// [spec] Service mesh specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  MeshState({
    this.arn,
    this.createdDate,
    this.lastUpdatedDate,
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
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'resourceOwner': ?resourceOwner,
      'spec': ?pulumi.Input.mapOptionalInputValue<MeshSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory MeshState.fromMap(Map<String, dynamic> map) {
    return MeshState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate'] as String).input(),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : (map['lastUpdatedDate'] as String).input(),
      meshOwner: map['meshOwner'] == null ? null : (map['meshOwner'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceOwner: map['resourceOwner'] == null ? null : (map['resourceOwner'] as String).input(),
      spec: map['spec'] == null ? null : (MeshSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

