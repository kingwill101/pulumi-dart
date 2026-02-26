// ignore_for_file: unused_element, unnecessary_cast

class RecordFailoverRoutingPolicy {
  /// `PRIMARY` or `SECONDARY`. A `PRIMARY` record will be served if its healthcheck is passing, otherwise the `SECONDARY` will be served. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html#dns-failover-failover-rrsets
  final String type;

  RecordFailoverRoutingPolicy({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory RecordFailoverRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordFailoverRoutingPolicy(
      type: map['type'] as String,
    );
  }
}
