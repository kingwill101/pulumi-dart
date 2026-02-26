// ignore_for_file: unused_element, unnecessary_cast

/// A predeploy Job.
class PredeployJobResponse {
  /// The custom actions that the predeploy Job executes.
  final List<String> actions;

  PredeployJobResponse({
    required this.actions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions;
    return map;
  }

  factory PredeployJobResponse.fromMap(Map<String, dynamic> map) {
    return PredeployJobResponse(
      actions: (map['actions'] as List).cast<String>(),
    );
  }
}
