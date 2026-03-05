// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Migration Progress
class MigrationProgressResponse {
  /// Completion Percentage
  final pulumi.Input<double>? completionPercentage;
  /// Progress Message
  final pulumi.Input<String>? progressMessage;

  /// Creates a new [MigrationProgressResponse].
  /// [completionPercentage] Completion Percentage
  /// [progressMessage] Progress Message
  MigrationProgressResponse({
    this.completionPercentage,
    this.progressMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completionPercentage': ?completionPercentage,
      'progressMessage': ?progressMessage,
    };
  }

  factory MigrationProgressResponse.fromMap(Map<String, dynamic> map) {
    return MigrationProgressResponse(
      completionPercentage: (() { final guardedValue = map['completionPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      progressMessage: (() { final guardedValue = map['progressMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

