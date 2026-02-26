// ignore_for_file: unused_element, unnecessary_cast

/// Predeploy contains the predeploy job configuration information.
class Predeploy {
  /// Optional. A sequence of Skaffold custom actions to invoke during execution of the predeploy job.
  final List<String>? actions;

  Predeploy({
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

  factory Predeploy.fromMap(Map<String, dynamic> map) {
    return Predeploy(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
    );
  }
}
