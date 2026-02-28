// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration.dart';
import 'agent_data_source_server_side_encryption_configuration.dart';
import 'agent_data_source_timeouts.dart';
import 'agent_data_source_vector_ingestion_configuration.dart';

/// {@template pulumi_bedrock_agent_data_source_agent_data_source_args_doc}
/// The set of arguments for AgentDataSource.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agent_data_source_agent_data_source_args_doc}
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

  /// Creates a new [AgentDataSourceArgs].
  /// [dataDeletionPolicy] Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  /// [dataSourceConfiguration] Details about how the data source is stored. See `data_source_configuration` block for details.
  /// [description] Description of the data source.
  /// [knowledgeBaseId] Unique identifier of the knowledge base to which the data source belongs.
  /// [name] Name of the data source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverSideEncryptionConfiguration] Details about the configuration of the server-side encryption. See `server_side_encryption_configuration` block for details.
  /// [timeouts] Optional.
  /// [vectorIngestionConfiguration] Details about the configuration of the server-side encryption. See `vector_ingestion_configuration` block for details.
  AgentDataSourceArgs({
    String? dataDeletionPolicy,
    required AgentDataSourceDataSourceConfiguration dataSourceConfiguration,
    String? description,
    required String knowledgeBaseId,
    String? name,
    String? region,
    AgentDataSourceServerSideEncryptionConfiguration?
        serverSideEncryptionConfiguration,
    AgentDataSourceTimeouts? timeouts,
    AgentDataSourceVectorIngestionConfiguration? vectorIngestionConfiguration,
  })  : dataDeletionPolicy =
            pulumi.Input.asOptionalInput<String>(dataDeletionPolicy),
        dataSourceConfiguration =
            pulumi.Input.asInput<AgentDataSourceDataSourceConfiguration>(
                dataSourceConfiguration),
        description = pulumi.Input.asOptionalInput<String>(description),
        knowledgeBaseId = pulumi.Input.asInput<String>(knowledgeBaseId),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        serverSideEncryptionConfiguration = pulumi.Input.asOptionalInput<
                AgentDataSourceServerSideEncryptionConfiguration>(
            serverSideEncryptionConfiguration),
        timeouts =
            pulumi.Input.asOptionalInput<AgentDataSourceTimeouts>(timeouts),
        vectorIngestionConfiguration = pulumi.Input.asOptionalInput<
                AgentDataSourceVectorIngestionConfiguration>(
            vectorIngestionConfiguration);

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
      dataDeletionPolicy: map['dataDeletionPolicy'] == null
          ? null
          : map['dataDeletionPolicy'] as String,
      dataSourceConfiguration: AgentDataSourceDataSourceConfiguration.fromMap(
          (map['dataSourceConfiguration'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      knowledgeBaseId: map['knowledgeBaseId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverSideEncryptionConfiguration:
          map['serverSideEncryptionConfiguration'] == null
              ? null
              : AgentDataSourceServerSideEncryptionConfiguration.fromMap(
                  (map['serverSideEncryptionConfiguration'] as Map)
                      .cast<String, dynamic>()),
      timeouts: map['timeouts'] == null
          ? null
          : AgentDataSourceTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      vectorIngestionConfiguration: map['vectorIngestionConfiguration'] == null
          ? null
          : AgentDataSourceVectorIngestionConfiguration.fromMap(
              (map['vectorIngestionConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
