// ignore_for_file: unused_element, unnecessary_cast


/// Pool health status detail.
class HealthStatusDetailResponse {
  /// An identifier for the issue.
  final String code;
  /// A message describing the issue, intended to be suitable for display in a user interface
  final String message;

  /// Creates a new [HealthStatusDetailResponse].
  /// [code] An identifier for the issue.
  /// [message] A message describing the issue, intended to be suitable for display in a user interface
  HealthStatusDetailResponse({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory HealthStatusDetailResponse.fromMap(Map<String, dynamic> map) {
    return HealthStatusDetailResponse(
      code: map['code'] as String,
      message: map['message'] as String,
    );
  }
}

