// ignore_for_file: unused_element, unnecessary_cast

class PolicyBasedRouteWarning {
  /// (Output)
  /// A warning code, if applicable.
  final String? code;

  /// (Output)
  /// Metadata about this warning in key: value format. The key should provides more detail on the warning being returned. For example, for warnings where there are no results in a list request for a particular zone, this key might be scope and the key value might be the zone name. Other examples might be a key indicating a deprecated resource and a suggested replacement.
  final Map<String, String>? data;

  /// (Output)
  /// A human-readable description of the warning code.
  final String? warningMessage;

  /// Creates a new [PolicyBasedRouteWarning].
  /// [code] (Output)
  /// [data] (Output)
  /// [warningMessage] (Output)
  PolicyBasedRouteWarning({this.code, this.data, this.warningMessage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'data': ?data,
      'warningMessage': ?warningMessage,
    };
  }

  factory PolicyBasedRouteWarning.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteWarning(
      code: map['code'] == null ? null : map['code'] as String,
      data: map['data'] == null
          ? null
          : (map['data'] as Map).cast<String, String>(),
      warningMessage: map['warningMessage'] == null
          ? null
          : map['warningMessage'] as String,
    );
  }
}
