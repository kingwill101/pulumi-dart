// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an executable to run on a fully configured node and a timeout period for executable completion.
class NodeInitializationActionResponseDataprocV1beta2 {
  /// Cloud Storage URI of executable file.
  final String executableFile;

  /// Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  final String executionTimeout;

  /// Creates a new [NodeInitializationActionResponseDataprocV1beta2].
  /// [executableFile] Cloud Storage URI of executable file.
  /// [executionTimeout] Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  NodeInitializationActionResponseDataprocV1beta2({
    required this.executableFile,
    required this.executionTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executableFile'] = executableFile;
    map['executionTimeout'] = executionTimeout;
    return map;
  }

  factory NodeInitializationActionResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return NodeInitializationActionResponseDataprocV1beta2(
      executableFile: map['executableFile'] as String,
      executionTimeout: map['executionTimeout'] as String,
    );
  }
}
