// ignore_for_file: unused_element, unnecessary_cast

/// Postdeploy contains the postdeploy job configuration information.
class Postdeploy {
  /// Optional. A sequence of Skaffold custom actions to invoke during execution of the postdeploy job.
  final List<String>? actions;

  Postdeploy({
    this.actions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = actionsValue;
    }
    return map;
  }

  factory Postdeploy.fromMap(Map<String, dynamic> map) {
    return Postdeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
