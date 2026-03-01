// ignore_for_file: unused_element, unnecessary_cast


/// Error Action Properties
class ErrorActionResponse {
  /// Max tolerated failures
  final int? maxToleratedFailures;
  /// Error action mode
  final String? mode;

  /// Creates a new [ErrorActionResponse].
  /// [maxToleratedFailures] Max tolerated failures
  /// [mode] Error action mode
  ErrorActionResponse({
    this.maxToleratedFailures,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxToleratedFailures': ?maxToleratedFailures,
      'mode': ?mode,
    };
  }

  factory ErrorActionResponse.fromMap(Map<String, dynamic> map) {
    return ErrorActionResponse(
      maxToleratedFailures: map['maxToleratedFailures'] == null ? null : map['maxToleratedFailures'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}

