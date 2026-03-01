// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Protection resources.
class ProtectionState {
  /// The ARN of the Protection.
  final pulumi.Input<String>? arn;
  /// A friendly name for the Protection you are creating.
  final pulumi.Input<String>? name;
  /// The ARN (Amazon Resource Name) of the resource to be protected.
  final pulumi.Input<String>? resourceArn;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProtectionState].
  /// [arn] The ARN of the Protection.
  /// [name] A friendly name for the Protection you are creating.
  /// [resourceArn] The ARN (Amazon Resource Name) of the resource to be protected.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ProtectionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'resourceArn': ?resourceArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ProtectionState.fromMap(Map<String, dynamic> map) {
    return ProtectionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

