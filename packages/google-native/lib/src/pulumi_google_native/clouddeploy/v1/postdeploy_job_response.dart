// ignore_for_file: unused_element, unnecessary_cast

/// A postdeploy Job.
class PostdeployJobResponse {
  /// The custom actions that the postdeploy Job executes.
  final List<String> actions;

  PostdeployJobResponse({
    required this.actions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions;
    return map;
  }

  factory PostdeployJobResponse.fromMap(Map<String, dynamic> map) {
    return PostdeployJobResponse(
      actions: (map['actions'] as List).cast<String>(),
    );
  }
}
