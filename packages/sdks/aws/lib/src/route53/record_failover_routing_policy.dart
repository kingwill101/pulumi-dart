// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordFailoverRoutingPolicy {
  /// `PRIMARY` or `SECONDARY`. A `PRIMARY` record will be served if its healthcheck is passing, otherwise the `SECONDARY` will be served. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html#dns-failover-failover-rrsets
  final pulumi.Input<String> type;

  /// Creates a new [RecordFailoverRoutingPolicy].
  /// [type] `PRIMARY` or `SECONDARY`. A `PRIMARY` record will be served if its healthcheck is passing, otherwise the `SECONDARY` will be served. See http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html#dns-failover-failover-rrsets
  const RecordFailoverRoutingPolicy({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory RecordFailoverRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordFailoverRoutingPolicy(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
