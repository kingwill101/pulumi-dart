// ignore_for_file: unused_element, unnecessary_cast

class ReceiptRuleAddHeaderAction {
  /// The name of the header to add
  final String headerName;

  /// The value of the header to add
  final String headerValue;

  /// The position of the action in the receipt rule
  final int position;

  ReceiptRuleAddHeaderAction({
    required this.headerName,
    required this.headerValue,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headerName'] = headerName;
    map['headerValue'] = headerValue;
    map['position'] = position;
    return map;
  }

  factory ReceiptRuleAddHeaderAction.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleAddHeaderAction(
      headerName: map['headerName'] as String,
      headerValue: map['headerValue'] as String,
      position: map['position'] as int,
    );
  }
}
