// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketReplicationConfigRuleDestinationReplicationTimeTime {
  /// Time in minutes. Valid values: `15`.
  final pulumi.Input<int> minutes;

  /// Creates a new [BucketReplicationConfigRuleDestinationReplicationTimeTime].
  /// [minutes] Time in minutes. Valid values: `15`.
  const BucketReplicationConfigRuleDestinationReplicationTimeTime({
    required this.minutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minutes': minutes,
    };
  }

  factory BucketReplicationConfigRuleDestinationReplicationTimeTime.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfigRuleDestinationReplicationTimeTime(
      minutes: pulumi.Input.fromValue((map['minutes'] as num).toInt()),
    );
  }
}
