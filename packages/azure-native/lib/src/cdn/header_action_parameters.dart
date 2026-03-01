// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for the request header action.
class HeaderActionParameters {
  /// Action to perform
  final String headerAction;
  /// Name of the header to modify
  final String headerName;
  /// Expected value is 'DeliveryRuleHeaderActionParameters'.
  final String typeName;
  /// Value for the specified action
  final String? value;

  /// Creates a new [HeaderActionParameters].
  /// [headerAction] Action to perform
  /// [headerName] Name of the header to modify
  /// [typeName] Expected value is 'DeliveryRuleHeaderActionParameters'.
  /// [value] Value for the specified action
  HeaderActionParameters({
    required this.headerAction,
    required this.headerName,
    required this.typeName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerAction': headerAction,
      'headerName': headerName,
      'typeName': typeName,
      'value': ?value,
    };
  }

  factory HeaderActionParameters.fromMap(Map<String, dynamic> map) {
    return HeaderActionParameters(
      headerAction: map['headerAction'] as String,
      headerName: map['headerName'] as String,
      typeName: map['typeName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

