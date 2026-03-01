// ignore_for_file: unused_element, unnecessary_cast


/// Migration Progress
class MigrationProgressResponse {
  /// Completion Percentage
  final double? completionPercentage;
  /// Progress Message
  final String? progressMessage;

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
      completionPercentage: map['completionPercentage'] == null ? null : map['completionPercentage'] as double,
      progressMessage: map['progressMessage'] == null ? null : map['progressMessage'] as String,
    );
  }
}

