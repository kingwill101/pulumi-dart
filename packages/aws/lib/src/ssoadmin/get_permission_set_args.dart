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
  /// > **NOTE:** Either `arn` or `name` must be configured.
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
  GetPermissionSetArgs({
    String? arn,
    required String instanceArn,
    String? name,
    String? region,
    Map<String, String>? tags,
  })  : arn = pulumi.Input.asOptionalInput<String>(arn),
        instanceArn = pulumi.Input.asInput<String>(instanceArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    map['instanceArn'] = instanceArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPermissionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionSetArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      instanceArn: map['instanceArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
