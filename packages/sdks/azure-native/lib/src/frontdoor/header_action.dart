// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An action that can manipulate an http header.
class HeaderAction {
  /// Which type of manipulation to apply to the header.
  final pulumi.Input<String> headerActionType;
  /// The name of the header this action will apply to.
  final pulumi.Input<String> headerName;
  /// The value to update the given header name with. This value is not used if the actionType is Delete.
  final pulumi.Input<String>? value;

  /// Creates a new [HeaderAction].
  /// [headerActionType] Which type of manipulation to apply to the header.
  /// [headerName] The name of the header this action will apply to.
  /// [value] The value to update the given header name with. This value is not used if the actionType is Delete.
  HeaderAction({
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

  factory HeaderAction.fromMap(Map<String, dynamic> map) {
    return HeaderAction(
      headerActionType: (map['headerActionType'] as String).input(),
      headerName: (map['headerName'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

