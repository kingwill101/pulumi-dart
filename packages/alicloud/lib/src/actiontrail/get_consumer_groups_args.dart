// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_get_consumer_groups_get_consumer_groups_args_doc}
/// Arguments for getConsumerGroups.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_get_consumer_groups_get_consumer_groups_args_doc}
class GetConsumerGroupsArgs {
  /// A regex string to filter results by the consumer group id.
  final pulumi.Input<String>? consumerIdRegex;
  /// A list of ALIKAFKA Consumer Groups IDs, It is formatted to `<instance_id>:<consumer_id>`.
  final pulumi.Input<List<String>>? ids;
  /// ID of the ALIKAFKA Instance that owns the consumer groups.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetConsumerGroupsArgs].
  /// [consumerIdRegex] A regex string to filter results by the consumer group id.
  /// [ids] A list of ALIKAFKA Consumer Groups IDs, It is formatted to `<instance_id>:<consumer_id>`.
  /// [instanceId] ID of the ALIKAFKA Instance that owns the consumer groups.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetConsumerGroupsArgs({
    String? consumerIdRegex,
    List<String>? ids,
    required String instanceId,
    String? outputFile,
  }) :
      consumerIdRegex = pulumi.Input.asOptionalInput<String>(consumerIdRegex),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      consumerIdRegex: map['consumerIdRegex'] == null ? null : map['consumerIdRegex'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

