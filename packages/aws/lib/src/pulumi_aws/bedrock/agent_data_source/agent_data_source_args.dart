// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_data_source_data_source_configuration/agent_data_source_data_source_configuration.dart';
import '../agent_data_source_server_side_encryption_configuration/agent_data_source_server_side_encryption_configuration.dart';
import '../agent_data_source_timeouts/agent_data_source_timeouts.dart';
import '../agent_data_source_vector_ingestion_configuration/agent_data_source_vector_ingestion_configuration.dart';

/// The set of arguments for AgentDataSource.
class AgentDataSourceArgs {
  /// Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  final pulumi.Input<String>? dataDeletionPolicy;

  /// Details about how the data source is stored. See `data_source_configuration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfiguration>
      dataSourceConfiguration;

  /// Description of the data source.
  final pulumi.Input<String>? description;

  /// Unique identifier of the knowledge base to which the data source belongs.
  final pulumi.Input<String> knowledgeBaseId;

  /// Name of the data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Details about the configuration of the server-side encryption. See `server_side_encryption_configuration` block for details.
  final pulumi.Input<AgentDataSourceServerSideEncryptionConfiguration>?
      serverSideEncryptionConfiguration;
  final pulumi.Input<AgentDataSourceTimeouts>? timeouts;

  /// Details about the configuration of the server-side encryption. See `vector_ingestion_configuration` block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfiguration>?
      vectorIngestionConfiguration;

  AgentDataSourceArgs({
    this.dataDeletionPolicy,
    required this.dataSourceConfiguration,
    this.description,
    required this.knowledgeBaseId,
    this.name,
    this.region,
    this.serverSideEncryptionConfiguration,
    this.timeouts,
    this.vectorIngestionConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataDeletionPolicyValue = dataDeletionPolicy;
    if (dataDeletionPolicyValue != null) {
      map['dataDeletionPolicy'] = dataDeletionPolicyValue;
    }
    map['dataSourceConfiguration'] = pulumi.Input.mapInputValue<
            AgentDataSourceDataSourceConfiguration, Map<String, dynamic>>(
        dataSourceConfiguration, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['knowledgeBaseId'] = knowledgeBaseId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serverSideEncryptionConfigurationValue =
        serverSideEncryptionConfiguration;
    if (serverSideEncryptionConfigurationValue != null) {
      map['serverSideEncryptionConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  AgentDataSourceServerSideEncryptionConfiguration,
                  Map<String, dynamic>>(
              serverSideEncryptionConfigurationValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentDataSourceTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final vectorIngestionConfigurationValue = vectorIngestionConfiguration;
    if (vectorIngestionConfigurationValue != null) {
      map['vectorIngestionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              AgentDataSourceVectorIngestionConfiguration,
              Map<String, dynamic>>(
          vectorIngestionConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceArgs(
      dataDeletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['dataDeletionPolicy']),
      dataSourceConfiguration:
          pulumi.Input.asInput<AgentDataSourceDataSourceConfiguration>(
              map['dataSourceConfiguration']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      knowledgeBaseId: pulumi.Input.asInput<String>(map['knowledgeBaseId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      serverSideEncryptionConfiguration: pulumi.Input.asOptionalInput<
              AgentDataSourceServerSideEncryptionConfiguration>(
          map['serverSideEncryptionConfiguration']),
      timeouts: pulumi.Input.asOptionalInput<AgentDataSourceTimeouts>(
          map['timeouts']),
      vectorIngestionConfiguration: pulumi.Input.asOptionalInput<
              AgentDataSourceVectorIngestionConfiguration>(
          map['vectorIngestionConfiguration']),
    );
  }
}
