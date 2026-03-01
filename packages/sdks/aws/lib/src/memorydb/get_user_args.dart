// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_memorydb_get_user_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_memorydb_get_user_get_user_args_doc}
class GetUserArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the user.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the user.
  final pulumi.Input<String> userName;

  /// Creates a new [GetUserArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the user.
  /// [userName] Name of the user.
  GetUserArgs({
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

