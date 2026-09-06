// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'topic_metadata_entity_response.dart';
import 'topics_input_config_response.dart';
import 'topics_related_link_response.dart';

/// Result data returned by getTopic.
class GetTopicResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Config Specification of the topic
  final TopicsRelatedLinkResponse? configs;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Input Config Specification of the topic
  final List<TopicsInputConfigResponse>? inputConfigs;
  /// Type of topic
  final String? kind;
  /// Metadata of the record
  final TopicMetadataEntityResponse? metadata;
  /// The name of the resource
  final String? name;
  /// Partition Specification of the topic
  final TopicsRelatedLinkResponse? partitions;
  /// Partition count of the topic
  final String? partitionsCount;
  /// Partition Reassignment Specification of the topic
  final TopicsRelatedLinkResponse? partitionsReassignments;
  /// Replication factor of the topic
  final String? replicationFactor;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Topic Id returned by Confluent
  final String? topicId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetTopicResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configs] Config Specification of the topic
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [inputConfigs] Input Config Specification of the topic
  /// [kind] Type of topic
  /// [metadata] Metadata of the record
  /// [name] The name of the resource
  /// [partitions] Partition Specification of the topic
  /// [partitionsCount] Partition count of the topic
  /// [partitionsReassignments] Partition Reassignment Specification of the topic
  /// [replicationFactor] Replication factor of the topic
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [topicId] Topic Id returned by Confluent
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetTopicResult({
    this.azureApiVersion,
    this.configs,
    this.id,
    this.inputConfigs,
    this.kind,
    this.metadata,
    this.name,
    this.partitions,
    this.partitionsCount,
    this.partitionsReassignments,
    this.replicationFactor,
    this.systemData,
    this.topicId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'configs': ?configs?.toMap(),
      'id': ?id,
      'inputConfigs': ?(() { final guardedValue = inputConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<TopicsInputConfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'metadata': ?metadata?.toMap(),
      'name': ?name,
      'partitions': ?partitions?.toMap(),
      'partitionsCount': ?partitionsCount,
      'partitionsReassignments': ?partitionsReassignments?.toMap(),
      'replicationFactor': ?replicationFactor,
      'systemData': ?systemData?.toMap(),
      'topicId': ?topicId,
      'type': ?type,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return TopicsRelatedLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inputConfigs: (() { final guardedValue = map['inputConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TopicsInputConfigResponse>(guardedValue, (value) => TopicsInputConfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return TopicMetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitions: (() { final guardedValue = map['partitions']; if (guardedValue == null) return null; return TopicsRelatedLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      partitionsCount: (() { final guardedValue = map['partitionsCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionsReassignments: (() { final guardedValue = map['partitionsReassignments']; if (guardedValue == null) return null; return TopicsRelatedLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      replicationFactor: (() { final guardedValue = map['replicationFactor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      topicId: (() { final guardedValue = map['topicId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
