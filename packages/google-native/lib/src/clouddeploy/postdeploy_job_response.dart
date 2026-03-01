// ignore_for_file: unused_element, unnecessary_cast

/// A postdeploy Job.
class PostdeployJobResponse {
  /// The custom actions that the postdeploy Job executes.
  final List<String> actions;

  /// Creates a new [PostdeployJobResponse].
  /// [actions] The custom actions that the postdeploy Job executes.
  PostdeployJobResponse({required this.actions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': actions};
  }

  factory PostdeployJobResponse.fromMap(Map<String, dynamic> map) {
    return PostdeployJobResponse(
      actions: (map['actions'] as List).cast<String>(),
    );
  }
}
