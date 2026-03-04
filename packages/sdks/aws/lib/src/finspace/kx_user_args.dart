// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_finspace_kx_user_kx_user_args_doc}
/// The set of arguments for KxUser.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_user_kx_user_args_doc}
class KxUserArgs {
  /// Unique identifier for the KX environment.
  final pulumi.Input<String> environmentId;

  /// IAM role ARN to be associated with the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> iamRole;

  /// A unique identifier for the user.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KxUserArgs].
  /// [environmentId] Unique identifier for the KX environment.
  /// [iamRole] IAM role ARN to be associated with the user.
  /// [name] A unique identifier for the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  KxUserArgs({
    required this.environmentId,
    required this.iamRole,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': environmentId,
      'iamRole': iamRole,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory KxUserArgs.fromMap(Map<String, dynamic> map) {
    return KxUserArgs(
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      iamRole: pulumi.Input.fromValue(map['iamRole'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
