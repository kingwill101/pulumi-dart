// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_shield_protection_protection_args_doc}
/// The set of arguments for Protection.
/// {@endtemplate}
/// {@macro pulumi_shield_protection_protection_args_doc}
class ProtectionArgs {
  /// A friendly name for the Protection you are creating.
  final pulumi.Input<String>? name;
  /// The ARN (Amazon Resource Name) of the resource to be protected.
  final pulumi.Input<String> resourceArn;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProtectionArgs].
  /// [name] A friendly name for the Protection you are creating.
  /// [resourceArn] The ARN (Amazon Resource Name) of the resource to be protected.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProtectionArgs({
    this.name,
    required this.resourceArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceArn': resourceArn,
      'tags': ?tags,
    };
  }

  factory ProtectionArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceArn: (map['resourceArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

