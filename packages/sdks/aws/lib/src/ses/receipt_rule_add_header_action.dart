// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReceiptRuleAddHeaderAction {
  /// The name of the header to add
  final pulumi.Input<String> headerName;
  /// The value of the header to add
  final pulumi.Input<String> headerValue;
  /// The position of the action in the receipt rule
  final pulumi.Input<int> position;

  /// Creates a new [ReceiptRuleAddHeaderAction].
  /// [headerName] The name of the header to add
  /// [headerValue] The value of the header to add
  /// [position] The position of the action in the receipt rule
  const ReceiptRuleAddHeaderAction({
    required this.headerName,
    required this.headerValue,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
      'position': position,
    };
  }

  factory ReceiptRuleAddHeaderAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleAddHeaderAction(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
      position: pulumi.Input.fromValue(map['position'] as int),
    );
  }
}
