// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPermissionSet.
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

  GetPermissionSetArgs({
    this.arn,
    required this.instanceArn,
    this.name,
    this.region,
    this.tags,
  });

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
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
