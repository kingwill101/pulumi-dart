// ignore_for_file: unused_element, unnecessary_cast


class WorkflowTemplatePlacementManagedClusterConfigInitializationAction {
  /// Required. Cloud Storage URI of executable file.
  final String? executableFile;
  /// Amount of time executable has to complete. Default is 10 minutes (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)). Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  final String? executionTimeout;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigInitializationAction].
  /// [executableFile] Required. Cloud Storage URI of executable file.
  /// [executionTimeout] Amount of time executable has to complete. Default is 10 minutes (see JSON representation of [JSON Mapping - Language Guide (proto 3)](https://developers.google.com/protocol-buffers/docs/proto3#json)). Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  WorkflowTemplatePlacementManagedClusterConfigInitializationAction({
    this.executableFile,
    this.executionTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executableFile': ?executableFile,
      'executionTimeout': ?executionTimeout,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigInitializationAction.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigInitializationAction(
      executableFile: map['executableFile'] == null ? null : map['executableFile'] as String,
      executionTimeout: map['executionTimeout'] == null ? null : map['executionTimeout'] as String,
    );
  }
}

