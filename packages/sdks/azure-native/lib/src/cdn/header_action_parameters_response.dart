// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the request header action.
class HeaderActionParametersResponse {
  /// Action to perform
  final pulumi.Input<String> headerAction;
  /// Name of the header to modify
  final pulumi.Input<String> headerName;
  /// Expected value is 'DeliveryRuleHeaderActionParameters'.
  final pulumi.Input<String> typeName;
  /// Value for the specified action
  final pulumi.Input<String>? value;

  /// Creates a new [HeaderActionParametersResponse].
  /// [headerAction] Action to perform
  /// [headerName] Name of the header to modify
  /// [typeName] Expected value is 'DeliveryRuleHeaderActionParameters'.
  /// [value] Value for the specified action
  HeaderActionParametersResponse({
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

  factory HeaderActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return HeaderActionParametersResponse(
      headerAction: (map['headerAction'] as String).input(),
      headerName: (map['headerName'] as String).input(),
      typeName: (map['typeName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

