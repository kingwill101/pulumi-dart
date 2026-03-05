// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_consumer_groups_get_consumer_groups_args_doc}
/// Arguments for getConsumerGroups.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_consumer_groups_get_consumer_groups_args_doc}
class GetConsumerGroupsArgs {
  /// A regex string to filter results by the consumer group id.
  final pulumi.Input<String>? consumerIdRegex;
  /// A list of ALIKAFKA Consumer Groups IDs, It is formatted to `&lt;instance_id&gt;:&lt;consumer_id&gt;`.
  final pulumi.Input<List<String>>? ids;
  /// ID of the ALIKAFKA Instance that owns the consumer groups.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetConsumerGroupsArgs].
  /// [consumerIdRegex] A regex string to filter results by the consumer group id.
  /// [ids] A list of ALIKAFKA Consumer Groups IDs, It is formatted to `&lt;instance_id&gt;:&lt;consumer_id&gt;`.
  /// [instanceId] ID of the ALIKAFKA Instance that owns the consumer groups.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetConsumerGroupsArgs({
    this.consumerIdRegex,
    this.ids,
    required this.instanceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerIdRegex': ?consumerIdRegex,
      'ids': ?ids,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetConsumerGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumerGroupsArgs(
      consumerIdRegex: (() { final guardedValue = map['consumerIdRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

