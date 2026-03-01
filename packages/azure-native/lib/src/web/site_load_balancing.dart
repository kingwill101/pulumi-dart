/// Site load balancing.
enum SiteLoadBalancing {
  valueWeightedRoundRobin("WeightedRoundRobin"),
  valueLeastRequests("LeastRequests"),
  valueLeastResponseTime("LeastResponseTime"),
  valueWeightedTotalTraffic("WeightedTotalTraffic"),
  valueRequestHash("RequestHash"),
  valuePerSiteRoundRobin("PerSiteRoundRobin"),
  valueLeastRequestsWithTieBreaker("LeastRequestsWithTieBreaker");

  const SiteLoadBalancing(this.value);
  final String value;

  static SiteLoadBalancing fromValue(String value) {
    for (final item in SiteLoadBalancing.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SiteLoadBalancing value: $value');
  }
}

