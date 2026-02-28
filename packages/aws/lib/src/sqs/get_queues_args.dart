// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqs_get_queues_get_queues_args_doc}
/// Arguments for getQueues.
/// {@endtemplate}
/// {@macro pulumi_sqs_get_queues_get_queues_args_doc}
class GetQueuesArgs {
  /// A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned. Queue URLs and names are case-sensitive.
  final pulumi.Input<String>? queueNamePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetQueuesArgs].
  /// [queueNamePrefix] A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned. Queue URLs and names are case-sensitive.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetQueuesArgs({
    String? queueNamePrefix,
    String? region,
  })  : queueNamePrefix = pulumi.Input.asOptionalInput<String>(queueNamePrefix),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      queueNamePrefix: map['queueNamePrefix'] == null
          ? null
          : map['queueNamePrefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
