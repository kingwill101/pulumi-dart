// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Error Action Properties
class ErrorActionResponse {
  /// Max tolerated failures
  final pulumi.Input<int>? maxToleratedFailures;
  /// Error action mode
  final pulumi.Input<String>? mode;

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
      maxToleratedFailures: map['maxToleratedFailures'] == null ? null : (map['maxToleratedFailures']! as int).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
    );
  }
}

