// ignore_for_file: unused_element, unnecessary_cast


class ClusterRebalancing {
  /// The status of intelligent rebalancing. Valid values: `ACTIVE`, `PAUSED`. Default is `ACTIVE` for new Express-based clusters.
  ///
  /// > **NOTE:** Intelligent rebalancing is only available for MSK Provisioned clusters with Express brokers. When enabled, you cannot use third-party rebalancing tools such as Cruise Control. See [AWS MSK Intelligent Rebalancing](https://docs.aws.amazon.com/msk/latest/developerguide/intelligent-rebalancing.html) for more information.
  final String status;

  /// Creates a new [ClusterRebalancing].
  /// [status] The status of intelligent rebalancing. Valid values: `ACTIVE`, `PAUSED`. Default is `ACTIVE` for new Express-based clusters.
  ClusterRebalancing({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory ClusterRebalancing.fromMap(Map<String, dynamic> map) {
    return ClusterRebalancing(
      status: map['status'] as String,
    );
  }
}

