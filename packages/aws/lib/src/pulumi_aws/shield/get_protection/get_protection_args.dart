// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProtection.
class GetProtectionArgs {
  /// Unique identifier for the protection.
  final Input<String>? protectionId;

  /// ARN (Amazon Resource Name) of the resource being protected.
  ///
  /// > Exactly one of `protection_id` or `resource_arn` is required.
  final Input<String>? resourceArn;

  GetProtectionArgs({
    this.protectionId,
    this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final protectionIdValue = protectionId;
    if (protectionIdValue != null) {
      map['protectionId'] = protectionIdValue;
    }
    final resourceArnValue = resourceArn;
    if (resourceArnValue != null) {
      map['resourceArn'] = resourceArnValue;
    }
    return map;
  }

  factory GetProtectionArgs.fromMap(Map<String, dynamic> map) {
    return GetProtectionArgs(
      protectionId: Input.asOptionalInput<String>(map['protectionId']),
      resourceArn: Input.asOptionalInput<String>(map['resourceArn']),
    );
  }
}
