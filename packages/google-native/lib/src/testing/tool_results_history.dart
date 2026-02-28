// ignore_for_file: unused_element, unnecessary_cast


/// Represents a tool results history resource.
class ToolResultsHistory {
  /// A tool results history ID.
  final String historyId;
  /// The cloud project that owns the tool results history.
  final String project;

  /// Creates a new [ToolResultsHistory].
  /// [historyId] A tool results history ID.
  /// [project] The cloud project that owns the tool results history.
  ToolResultsHistory({
    required this.historyId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historyId': historyId,
      'project': project,
    };
  }

  factory ToolResultsHistory.fromMap(Map<String, dynamic> map) {
    return ToolResultsHistory(
      historyId: map['historyId'] as String,
      project: map['project'] as String,
    );
  }
}

