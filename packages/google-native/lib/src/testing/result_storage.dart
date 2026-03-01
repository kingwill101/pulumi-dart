// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_storage.dart';
import 'tool_results_history.dart';

/// Locations where the results of running the test are stored.
class ResultStorage {
  /// Required.
  final GoogleCloudStorage googleCloudStorage;

  /// The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  final ToolResultsHistory? toolResultsHistory;

  /// Creates a new [ResultStorage].
  /// [googleCloudStorage] Required.
  /// [toolResultsHistory] The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.
  ResultStorage({required this.googleCloudStorage, this.toolResultsHistory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleCloudStorage': googleCloudStorage.toMap(),
      'toolResultsHistory': ?toolResultsHistory == null
          ? null
          : toolResultsHistory!.toMap(),
    };
  }

  factory ResultStorage.fromMap(Map<String, dynamic> map) {
    return ResultStorage(
      googleCloudStorage: GoogleCloudStorage.fromMap(
        (map['googleCloudStorage'] as Map).cast<String, dynamic>(),
      ),
      toolResultsHistory: map['toolResultsHistory'] == null
          ? null
          : ToolResultsHistory.fromMap(
              (map['toolResultsHistory'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
