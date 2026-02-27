// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Protection.
class ProtectionArgs {
  /// A friendly name for the Protection you are creating.
  final pulumi.Input<String>? name;

  /// The ARN (Amazon Resource Name) of the resource to be protected.
  final pulumi.Input<String> resourceArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ProtectionArgs({
    this.name,
    required this.resourceArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['resourceArn'] = resourceArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProtectionArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
