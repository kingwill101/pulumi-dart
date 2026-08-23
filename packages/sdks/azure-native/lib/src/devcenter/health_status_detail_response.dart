// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pool health status detail.
class HealthStatusDetailResponse {
  /// An identifier for the issue.
  final pulumi.Input<String> code;
  /// A message describing the issue, intended to be suitable for display in a user interface
  final pulumi.Input<String> message;

  /// Creates a new [HealthStatusDetailResponse].
  /// [code] An identifier for the issue.
  /// [message] A message describing the issue, intended to be suitable for display in a user interface
  const HealthStatusDetailResponse({
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
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
