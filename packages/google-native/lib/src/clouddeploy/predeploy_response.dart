// ignore_for_file: unused_element, unnecessary_cast

/// Predeploy contains the predeploy job configuration information.
class PredeployResponse {
  /// Optional. A sequence of Skaffold custom actions to invoke during execution of the predeploy job.
  final List<String> actions;

  /// Creates a new [PredeployResponse].
  /// [actions] Optional. A sequence of Skaffold custom actions to invoke during execution of the predeploy job.
  PredeployResponse({required this.actions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': actions};
  }

  factory PredeployResponse.fromMap(Map<String, dynamic> map) {
    return PredeployResponse(actions: (map['actions'] as List).cast<String>());
  }
}
