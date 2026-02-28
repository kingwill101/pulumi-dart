// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_storage_response.dart';
import 'tool_results_execution_response.dart';
import 'tool_results_history_response.dart';

/// Locations where the results of running the test are stored.
class ResultStorageResponse {
  /// Required.
  final GoogleCloudStorageResponse googleCloudStorage;

  /// URL to the results in the Firebase Web Console.
  final String resultsUrl;

  /// The tool results execution that results are written to.
  final ToolResultsExecutionResponse toolResultsExecution;

  /// The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  final ToolResultsHistoryResponse toolResultsHistory;

  /// Creates a new [ResultStorageResponse].
  /// [googleCloudStorage] Required.
  /// [resultsUrl] URL to the results in the Firebase Web Console.
  /// [toolResultsExecution] The tool results execution that results are written to.
  /// [toolResultsHistory] The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  ResultStorageResponse({
    required this.googleCloudStorage,
    required this.resultsUrl,
    required this.toolResultsExecution,
    required this.toolResultsHistory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['googleCloudStorage'] = googleCloudStorage.toMap();
    map['resultsUrl'] = resultsUrl;
    map['toolResultsExecution'] = toolResultsExecution.toMap();
    map['toolResultsHistory'] = toolResultsHistory.toMap();
    return map;
  }

  factory ResultStorageResponse.fromMap(Map<String, dynamic> map) {
    return ResultStorageResponse(
      googleCloudStorage: GoogleCloudStorageResponse.fromMap(
          (map['googleCloudStorage'] as Map).cast<String, dynamic>()),
      resultsUrl: map['resultsUrl'] as String,
      toolResultsExecution: ToolResultsExecutionResponse.fromMap(
          (map['toolResultsExecution'] as Map).cast<String, dynamic>()),
      toolResultsHistory: ToolResultsHistoryResponse.fromMap(
          (map['toolResultsHistory'] as Map).cast<String, dynamic>()),
    );
  }
}
