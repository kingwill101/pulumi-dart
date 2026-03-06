// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dc access security code
class DcAccessSecurityCodeResponse {
  /// Forward Dc access security code.
  final pulumi.Input<String>? forwardDCAccessCode;
  /// Reverse Dc access security code.
  final pulumi.Input<String>? reverseDCAccessCode;

  /// Creates a new [DcAccessSecurityCodeResponse].
  /// [forwardDCAccessCode] Forward Dc access security code.
  /// [reverseDCAccessCode] Reverse Dc access security code.
  const DcAccessSecurityCodeResponse({
    this.forwardDCAccessCode,
    this.reverseDCAccessCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardDCAccessCode': ?forwardDCAccessCode,
      'reverseDCAccessCode': ?reverseDCAccessCode,
    };
  }

  factory DcAccessSecurityCodeResponse.fromMap(Map<String, dynamic> map) {
    return DcAccessSecurityCodeResponse(
      forwardDCAccessCode: (() { final guardedValue = map['forwardDCAccessCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reverseDCAccessCode: (() { final guardedValue = map['reverseDCAccessCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

