// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the request header action.
class HeaderActionParameters {
  /// Action to perform
  final pulumi.Input<String> headerAction;
  /// Name of the header to modify
  final pulumi.Input<String> headerName;
  /// Expected value is 'DeliveryRuleHeaderActionParameters'.
  final pulumi.Input<String> typeName;
  /// Value for the specified action
  final pulumi.Input<String>? value;

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
      headerAction: pulumi.Input.fromValue(map['headerAction'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

