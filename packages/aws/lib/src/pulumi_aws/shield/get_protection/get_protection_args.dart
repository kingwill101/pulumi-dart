// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getProtection.
class GetProtectionArgs {
  /// Unique identifier for the protection.
  final Input<String>? protectionId;

  /// ARN (Amazon Resource Name) of the resource being protected.
  ///
  /// > Exactly one of <span pulumi-lang-nodejs="`protectionId`" pulumi-lang-dotnet="`ProtectionId`" pulumi-lang-go="`protectionId`" pulumi-lang-python="`protection_id`" pulumi-lang-yaml="`protectionId`" pulumi-lang-java="`protectionId`">`protection_id`</span> or <span pulumi-lang-nodejs="`resourceArn`" pulumi-lang-dotnet="`ResourceArn`" pulumi-lang-go="`resourceArn`" pulumi-lang-python="`resource_arn`" pulumi-lang-yaml="`resourceArn`" pulumi-lang-java="`resourceArn`">`resource_arn`</span> is required.
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
