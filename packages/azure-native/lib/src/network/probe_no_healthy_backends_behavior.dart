/// Determines how new connections are handled by the load balancer when all backend instances are probed down.
enum ProbeNoHealthyBackendsBehavior {
  valueAllProbedDown("AllProbedDown"),
  valueAllProbedUp("AllProbedUp");

  const ProbeNoHealthyBackendsBehavior(this.value);
  final String value;

  static ProbeNoHealthyBackendsBehavior fromValue(String value) {
    for (final item in ProbeNoHealthyBackendsBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProbeNoHealthyBackendsBehavior value: $value');
  }
}

