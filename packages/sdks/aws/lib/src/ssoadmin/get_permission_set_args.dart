// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_get_permission_set_get_permission_set_args_doc}
/// Arguments for getPermissionSet.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_get_permission_set_get_permission_set_args_doc}
class GetPermissionSetArgs {
  /// ARN of the permission set.
  final pulumi.Input<String>? arn;
  /// ARN of the SSO Instance associated with the permission set.
  final pulumi.Input<String> instanceArn;
  /// Name of the SSO Permission Set.
  ///
  /// &gt; **NOTE:** Either `arn` or `name` must be configured.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPermissionSetArgs].
  /// [arn] ARN of the permission set.
  /// [instanceArn] ARN of the SSO Instance associated with the permission set.
  /// [name] Name of the SSO Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags.
  const GetPermissionSetArgs({
    this.arn,
    required this.instanceArn,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'instanceArn': instanceArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPermissionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetArgs(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
