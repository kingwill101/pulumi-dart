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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? lastUpdatedDate,
    pulumi.Output<String>? meshOwner,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceOwner,
    pulumi.Output<MeshSpec>? spec,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      lastUpdatedDate = pulumi.Input.asOptionalInput<String>(lastUpdatedDate),
      meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceOwner = pulumi.Input.asOptionalInput<String>(resourceOwner),
      spec = pulumi.Input.asOptionalInput<MeshSpec>(spec),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      lastUpdatedDate: map['lastUpdatedDate'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedDate'] as String),
      meshOwner: map['meshOwner'] == null ? null : pulumi.Output.create<String>(map['meshOwner'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceOwner: map['resourceOwner'] == null ? null : pulumi.Output.create<String>(map['resourceOwner'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<MeshSpec>(MeshSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

