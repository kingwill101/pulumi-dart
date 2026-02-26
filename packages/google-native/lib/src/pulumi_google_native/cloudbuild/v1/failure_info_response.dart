// ignore_for_file: unused_element, unnecessary_cast

/// A fatal problem encountered during the execution of the build.
class FailureInfoResponse {
  /// Explains the failure issue in more detail using hard-coded text.
  final String detail;

  /// The name of the failure.
  final String type;

  FailureInfoResponse({
    required this.detail,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detail'] = detail;
    map['type'] = type;
    return map;
  }

  factory FailureInfoResponse.fromMap(Map<String, dynamic> map) {
    return FailureInfoResponse(
      detail: map['detail'] as String,
      type: map['type'] as String,
    );
  }
}
