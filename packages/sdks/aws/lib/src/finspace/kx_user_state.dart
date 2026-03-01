// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KxUser resources.
class KxUserState {
  /// Amazon Resource Name (ARN) identifier of the KX user.
  final pulumi.Input<String>? arn;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String>? environmentId;
  /// IAM role ARN to be associated with the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? iamRole;
  /// A unique identifier for the user.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KxUserState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX user.
  /// [environmentId] Unique identifier for the KX environment.
  /// [iamRole] IAM role ARN to be associated with the user.
  /// [name] A unique identifier for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KxUserState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? iamRole,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      iamRole = pulumi.Input.asOptionalInput<String>(iamRole),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'environmentId': ?environmentId,
      'iamRole': ?iamRole,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KxUserState.fromMap(Map<String, dynamic> map) {
    return KxUserState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      iamRole: map['iamRole'] == null ? null : pulumi.Output.create<String>(map['iamRole'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

