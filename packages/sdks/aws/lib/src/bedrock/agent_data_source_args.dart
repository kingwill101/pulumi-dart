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
    return <String, dynamic>{
      'dataDeletionPolicy': ?dataDeletionPolicy,
      'dataSourceConfiguration':
          pulumi.Input.mapInputValue<
            AgentDataSourceDataSourceConfiguration,
            Map<String, dynamic>
          >(dataSourceConfiguration, (value) => value.toMap()),
      'description': ?description,
      'knowledgeBaseId': knowledgeBaseId,
      'name': ?name,
      'region': ?region,
      'serverSideEncryptionConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceServerSideEncryptionConfiguration,
            Map<String, dynamic>
          >(serverSideEncryptionConfiguration, (value) => value.toMap()),
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'vectorIngestionConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentDataSourceVectorIngestionConfiguration,
            Map<String, dynamic>
          >(vectorIngestionConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceArgs(
      dataDeletionPolicy: (() {
        final guardedValue = map['dataDeletionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSourceConfiguration: pulumi.Input.fromValue(
        AgentDataSourceDataSourceConfiguration.fromMap(
          (map['dataSourceConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      knowledgeBaseId: pulumi.Input.fromValue(map['knowledgeBaseId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverSideEncryptionConfiguration: (() {
        final guardedValue = map['serverSideEncryptionConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceServerSideEncryptionConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vectorIngestionConfiguration: (() {
        final guardedValue = map['vectorIngestionConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentDataSourceVectorIngestionConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
