// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reason for the credit. Not required if not applicable.
class CreditReasonResponse {
  /// The reason code for credit.
  final pulumi.Input<String>? code;
  /// The free string description of the credit.
  final pulumi.Input<String>? description;

  /// Creates a new [CreditReasonResponse].
  /// [code] The reason code for credit.
  /// [description] The free string description of the credit.
  const CreditReasonResponse({
    this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'description': ?description,
    };
  }

  factory CreditReasonResponse.fromMap(Map<String, dynamic> map) {
    return CreditReasonResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
