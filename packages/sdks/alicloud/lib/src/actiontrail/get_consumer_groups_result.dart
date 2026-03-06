// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consumer_groups_group.dart';

/// Result data returned by getConsumerGroups.
class GetConsumerGroupsResult {
  final String? consumerIdRegex;
  final List<String> consumerIds;
  /// A list of consumer group. Each element contains the following attributes:
  final List<GetConsumerGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The instance_id of the instance.
  final String instanceId;
  /// A list of consumer group names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetConsumerGroupsResult].
  /// [consumerIdRegex] Optional.
  /// [consumerIds] Required.
  /// [groups] A list of consumer group. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] The instance_id of the instance.
  /// [names] A list of consumer group names.
  /// [outputFile] Optional.
  const GetConsumerGroupsResult({
    this.consumerIdRegex,
    required this.consumerIds,
    required this.groups,
    required this.id,
    required this.ids,
    required this.instanceId,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerIdRegex': ?consumerIdRegex,
      'consumerIds': consumerIds,
      'groups': pulumi.Input.encodeList<GetConsumerGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'instanceId': instanceId,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetConsumerGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetConsumerGroupsResult(
      consumerIdRegex: (() { final guardedValue = map['consumerIdRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consumerIds: (map['consumerIds'] as List).cast<String>(),
      groups: pulumi.Input.decodeList<GetConsumerGroupsGroup>(map['groups']!, (value) => GetConsumerGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

