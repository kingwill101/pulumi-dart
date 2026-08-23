// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An action that can manipulate an http header.
class HeaderActionResponse {
  /// Which type of manipulation to apply to the header.
  final pulumi.Input<String> headerActionType;
  /// The name of the header this action will apply to.
  final pulumi.Input<String> headerName;
  /// The value to update the given header name with. This value is not used if the actionType is Delete.
  final pulumi.Input<String>? value;

  /// Creates a new [HeaderActionResponse].
  /// [headerActionType] Which type of manipulation to apply to the header.
  /// [headerName] The name of the header this action will apply to.
  /// [value] The value to update the given header name with. This value is not used if the actionType is Delete.
  const HeaderActionResponse({
    required this.headerActionType,
    required this.headerName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerActionType': headerActionType,
      'headerName': headerName,
      'value': ?value,
    };
  }

  factory HeaderActionResponse.fromMap(Map<String, dynamic> map) {
    return HeaderActionResponse(
      headerActionType: pulumi.Input.fromValue(map['headerActionType'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
