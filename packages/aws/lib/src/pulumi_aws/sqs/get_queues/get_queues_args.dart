// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQueues.
class GetQueuesArgs {
  /// A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned. Queue URLs and names are case-sensitive.
  final Input<String>? queueNamePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetQueuesArgs({
    this.queueNamePrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queueNamePrefixValue = queueNamePrefix;
    if (queueNamePrefixValue != null) {
      map['queueNamePrefix'] = queueNamePrefixValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetQueuesArgs.fromMap(Map<String, dynamic> map) {
    return GetQueuesArgs(
      queueNamePrefix: Input.asOptionalInput<String>(map['queueNamePrefix']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
