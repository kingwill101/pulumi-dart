// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reason for the credit. Not required if not applicable.
class CreditReason {
  /// The reason code for credit.
  final pulumi.Input<String>? code;
  /// The free string description of the credit.
  final pulumi.Input<String>? description;

  /// Creates a new [CreditReason].
  /// [code] The reason code for credit.
  /// [description] The free string description of the credit.
  const CreditReason({
    this.code,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'description': ?description,
    };
  }

  factory CreditReason.fromMap(Map<String, dynamic> map) {
    return CreditReason(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
