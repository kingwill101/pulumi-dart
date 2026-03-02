// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_shield_get_protection_get_protection_args_doc}
/// Arguments for getProtection.
/// {@endtemplate}
/// {@macro pulumi_shield_get_protection_get_protection_args_doc}
class GetProtectionArgs {
  /// Unique identifier for the protection.
  final pulumi.Input<String>? protectionId;
  /// ARN (Amazon Resource Name) of the resource being protected.
  ///
  /// > Exactly one of `protection_id` or `resource_arn` is required.
  final pulumi.Input<String>? resourceArn;

  /// Creates a new [GetProtectionArgs].
  /// [protectionId] Unique identifier for the protection.
  /// [resourceArn] ARN (Amazon Resource Name) of the resource being protected.
  GetProtectionArgs({
    this.protectionId,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protectionId': ?protectionId,
      'resourceArn': ?resourceArn,
    };
  }

  factory GetProtectionArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectionArgs(
      protectionId: map['protectionId'] == null ? null : (map['protectionId'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
    );
  }
}

