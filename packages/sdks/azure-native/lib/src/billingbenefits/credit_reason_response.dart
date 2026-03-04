// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reason for the credit. Not required if not applicable.
class CreditReasonResponse {
  /// The reason code for credit.
  final pulumi.Input<double> code;

  /// The free string description of the credit.
  final pulumi.Input<String> description;

  /// Creates a new [CreditReasonResponse].
  /// [code] The reason code for credit.
  /// [description] The free string description of the credit.
  CreditReasonResponse({required this.code, required this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'description': description};
  }

  factory CreditReasonResponse.fromMap(Map<String, dynamic> map) {
    return CreditReasonResponse(
      code: pulumi.Input.fromValue(map['code'] as double),
      description: pulumi.Input.fromValue(map['description'] as String),
    );
  }
}
