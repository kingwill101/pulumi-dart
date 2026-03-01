/// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
enum AgentPoolMode {
  valueSystem("System"),
  valueUser("User"),
  valueNotApplicable("NotApplicable");

  const AgentPoolMode(this.value);
  final String value;

  static AgentPoolMode fromValue(String value) {
    for (final item in AgentPoolMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolMode value: $value');
  }
}

