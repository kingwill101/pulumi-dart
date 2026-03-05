/// Defines the behavior for undrainable nodes during upgrade. The most common cause of undrainable nodes is Pod Disruption Budgets (PDBs), but other issues, such as pod termination grace period is exceeding the remaining per-node drain timeout or pod is still being in a running state, can also cause undrainable nodes.
enum UndrainableNodeBehavior {
  valueCordon("Cordon"),
  valueSchedule("Schedule");

  const UndrainableNodeBehavior(this.wireValue);
  final String wireValue;

  static UndrainableNodeBehavior fromValue(String value) {
    for (final item in UndrainableNodeBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UndrainableNodeBehavior value: $value');
  }
}

