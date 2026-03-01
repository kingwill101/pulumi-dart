// ignore_for_file: unused_element, unnecessary_cast


/// The retry policy for the user request
class RetryPolicyResponse {
  /// Retry count for user request
  final int? retryCount;
  /// Retry window in minutes for user request
  final int? retryWindowInMinutes;

  /// Creates a new [RetryPolicyResponse].
  /// [retryCount] Retry count for user request
  /// [retryWindowInMinutes] Retry window in minutes for user request
  RetryPolicyResponse({
    this.retryCount,
    this.retryWindowInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retryCount': ?retryCount,
      'retryWindowInMinutes': ?retryWindowInMinutes,
    };
  }

  factory RetryPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetryPolicyResponse(
      retryCount: map['retryCount'] == null ? null : map['retryCount'] as int,
      retryWindowInMinutes: map['retryWindowInMinutes'] == null ? null : map['retryWindowInMinutes'] as int,
    );
  }
}

