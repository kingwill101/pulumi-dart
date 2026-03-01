// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an executable to run on a fully configured node and a timeout period for executable completion.
class NodeInitializationAction {
  /// Cloud Storage URI of executable file.
  final String executableFile;

  /// Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  final String? executionTimeout;

  /// Creates a new [NodeInitializationAction].
  /// [executableFile] Cloud Storage URI of executable file.
  /// [executionTimeout] Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period.
  NodeInitializationAction({
    required this.executableFile,
    this.executionTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executableFile': executableFile,
      'executionTimeout': ?executionTimeout,
    };
  }

  factory NodeInitializationAction.fromMap(Map<String, dynamic> map) {
    return NodeInitializationAction(
      executableFile: map['executableFile'] as String,
      executionTimeout: map['executionTimeout'] == null
          ? null
          : map['executionTimeout'] as String,
    );
  }
}
