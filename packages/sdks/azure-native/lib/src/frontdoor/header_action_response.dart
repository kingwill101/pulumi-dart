// ignore_for_file: unused_element, unnecessary_cast


/// An action that can manipulate an http header.
class HeaderActionResponse {
  /// Which type of manipulation to apply to the header.
  final String headerActionType;
  /// The name of the header this action will apply to.
  final String headerName;
  /// The value to update the given header name with. This value is not used if the actionType is Delete.
  final String? value;

  /// Creates a new [HeaderActionResponse].
  /// [headerActionType] Which type of manipulation to apply to the header.
  /// [headerName] The name of the header this action will apply to.
  /// [value] The value to update the given header name with. This value is not used if the actionType is Delete.
  HeaderActionResponse({
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
      headerActionType: map['headerActionType'] as String,
      headerName: map['headerName'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

