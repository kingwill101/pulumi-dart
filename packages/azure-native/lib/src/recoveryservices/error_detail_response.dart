// ignore_for_file: unused_element, unnecessary_cast


/// Error Detail class which encapsulates Code, Message and Recommendations.
class ErrorDetailResponse {
  /// Error code.
  final String code;
  /// Error Message related to the Code.
  final String message;
  /// List of recommendation strings.
  final List<String> recommendations;

  /// Creates a new [ErrorDetailResponse].
  /// [code] Error code.
  /// [message] Error Message related to the Code.
  /// [recommendations] List of recommendation strings.
  ErrorDetailResponse({
    required this.code,
    required this.message,
    required this.recommendations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
      'recommendations': recommendations,
    };
  }

  factory ErrorDetailResponse.fromMap(Map<String, dynamic> map) {
    return ErrorDetailResponse(
      code: map['code'] as String,
      message: map['message'] as String,
      recommendations: (map['recommendations'] as List).cast<String>(),
    );
  }
}

