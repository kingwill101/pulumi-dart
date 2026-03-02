// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration.dart';
import 'agent_data_source_server_side_encryption_configuration.dart';
import 'agent_data_source_timeouts.dart';
import 'agent_data_source_vector_ingestion_configuration.dart';

/// Input properties used for looking up and filtering AgentDataSource resources.
class AgentDataSourceState {
  /// Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  final pulumi.Input<String>? dataDeletionPolicy;
  /// Details about how the data source is stored. See `data_source_configuration` block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfiguration>? dataSourceConfiguration;
  /// Unique identifier of the data source.
  final pulumi.Input<String>? dataSourceId;
  /// Description of the data source.
  final pulumi.Input<String>? description;
  /// Unique identifier of the knowledge base to which the data source belongs.
  final pulumi.Input<String>? knowledgeBaseId;
  /// Name of the data source.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Details about the configuration of the server-side encryption. See `server_side_encryption_configuration` block for details.
  final pulumi.Input<AgentDataSourceServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration;
  final pulumi.Input<AgentDataSourceTimeouts>? timeouts;
  /// Details about the configuration of the server-side encryption. See `vector_ingestion_configuration` block for details.
  final pulumi.Input<AgentDataSourceVectorIngestionConfiguration>? vectorIngestionConfiguration;

  /// Creates a new [AgentDataSourceState].
  /// [dataDeletionPolicy] Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  /// [dataSourceConfiguration] Details about how the data source is stored. See `data_source_configuration` block for details.
  /// [dataSourceId] Unique identifier of the data source.
  /// [description] Description of the data source.
  /// [knowledgeBaseId] Unique identifier of the knowledge base to which the data source belongs.
  /// [name] Name of the data source.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverSideEncryptionConfiguration] Details about the configuration of the server-side encryption. See `server_side_encryption_configuration` block for details.
  /// [timeouts] Optional.
  /// [vectorIngestionConfiguration] Details about the configuration of the server-side encryption. See `vector_ingestion_configuration` block for details.
  AgentDataSourceState({
    this.dataDeletionPolicy,
    this.dataSourceConfiguration,
    this.dataSourceId,
    this.description,
    this.knowledgeBaseId,
    this.name,
    this.region,
    this.serverSideEncryptionConfiguration,
    this.timeouts,
    this.vectorIngestionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDeletionPolicy': ?dataDeletionPolicy,
      'dataSourceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceDataSourceConfiguration, Map<String, dynamic>>(dataSourceConfiguration, (value) => value.toMap()),
      'dataSourceId': ?dataSourceId,
      'description': ?description,
      'knowledgeBaseId': ?knowledgeBaseId,
      'name': ?name,
      'region': ?region,
      'serverSideEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceServerSideEncryptionConfiguration, Map<String, dynamic>>(serverSideEncryptionConfiguration, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vectorIngestionConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentDataSourceVectorIngestionConfiguration, Map<String, dynamic>>(vectorIngestionConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceState.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceState(
      dataDeletionPolicy: map['dataDeletionPolicy'] == null ? null : (map['dataDeletionPolicy'] as String).input(),
      dataSourceConfiguration: map['dataSourceConfiguration'] == null ? null : (AgentDataSourceDataSourceConfiguration.fromMap((map['dataSourceConfiguration'] as Map).cast<String, dynamic>())).input(),
      dataSourceId: map['dataSourceId'] == null ? null : (map['dataSourceId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      knowledgeBaseId: map['knowledgeBaseId'] == null ? null : (map['knowledgeBaseId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : (AgentDataSourceServerSideEncryptionConfiguration.fromMap((map['serverSideEncryptionConfiguration'] as Map).cast<String, dynamic>())).input(),
      timeouts: map['timeouts'] == null ? null : (AgentDataSourceTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      vectorIngestionConfiguration: map['vectorIngestionConfiguration'] == null ? null : (AgentDataSourceVectorIngestionConfiguration.fromMap((map['vectorIngestionConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

