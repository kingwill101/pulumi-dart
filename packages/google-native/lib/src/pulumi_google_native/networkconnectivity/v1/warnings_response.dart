// ignore_for_file: unused_element, unnecessary_cast

/// Informational warning message.
class WarningsResponse {
  /// A warning code, if applicable.
  final String code;

  /// Metadata about this warning in key: value format. The key should provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement.
  final Map<String, String> data;

  /// A human-readable description of the warning code.
  final String warningMessage;

  WarningsResponse({
    required this.code,
    required this.data,
    required this.warningMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['data'] = data;
    map['warningMessage'] = warningMessage;
    return map;
  }

  factory WarningsResponse.fromMap(Map<String, dynamic> map) {
    return WarningsResponse(
      code: map['code'] as String,
      data: (map['data'] as Map).cast<String, String>(),
      warningMessage: map['warningMessage'] as String,
    );
  }
}
