// ignore_for_file: unused_element, unnecessary_cast

class TransferAgentPoolBandwidthLimit {
  /// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  final String limitMbps;

  TransferAgentPoolBandwidthLimit({
    required this.limitMbps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['limitMbps'] = limitMbps;
    return map;
  }

  factory TransferAgentPoolBandwidthLimit.fromMap(Map<String, dynamic> map) {
    return TransferAgentPoolBandwidthLimit(
      limitMbps: map['limitMbps'] as String,
    );
  }
}
