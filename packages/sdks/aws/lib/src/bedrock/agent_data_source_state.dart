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
    pulumi.Output<String>? dataDeletionPolicy,
    pulumi.Output<AgentDataSourceDataSourceConfiguration>? dataSourceConfiguration,
    pulumi.Output<String>? dataSourceId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? knowledgeBaseId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<AgentDataSourceServerSideEncryptionConfiguration>? serverSideEncryptionConfiguration,
    pulumi.Output<AgentDataSourceTimeouts>? timeouts,
    pulumi.Output<AgentDataSourceVectorIngestionConfiguration>? vectorIngestionConfiguration,
  }) :
      dataDeletionPolicy = pulumi.Input.asOptionalInput<String>(dataDeletionPolicy),
      dataSourceConfiguration = pulumi.Input.asOptionalInput<AgentDataSourceDataSourceConfiguration>(dataSourceConfiguration),
      dataSourceId = pulumi.Input.asOptionalInput<String>(dataSourceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      knowledgeBaseId = pulumi.Input.asOptionalInput<String>(knowledgeBaseId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverSideEncryptionConfiguration = pulumi.Input.asOptionalInput<AgentDataSourceServerSideEncryptionConfiguration>(serverSideEncryptionConfiguration),
      timeouts = pulumi.Input.asOptionalInput<AgentDataSourceTimeouts>(timeouts),
      vectorIngestionConfiguration = pulumi.Input.asOptionalInput<AgentDataSourceVectorIngestionConfiguration>(vectorIngestionConfiguration);

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
      dataDeletionPolicy: map['dataDeletionPolicy'] == null ? null : pulumi.Output.create<String>(map['dataDeletionPolicy'] as String),
      dataSourceConfiguration: map['dataSourceConfiguration'] == null ? null : pulumi.Output.create<AgentDataSourceDataSourceConfiguration>(AgentDataSourceDataSourceConfiguration.fromMap((map['dataSourceConfiguration'] as Map).cast<String, dynamic>())),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<String>(map['dataSourceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      knowledgeBaseId: map['knowledgeBaseId'] == null ? null : pulumi.Output.create<String>(map['knowledgeBaseId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverSideEncryptionConfiguration: map['serverSideEncryptionConfiguration'] == null ? null : pulumi.Output.create<AgentDataSourceServerSideEncryptionConfiguration>(AgentDataSourceServerSideEncryptionConfiguration.fromMap((map['serverSideEncryptionConfiguration'] as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentDataSourceTimeouts>(AgentDataSourceTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vectorIngestionConfiguration: map['vectorIngestionConfiguration'] == null ? null : pulumi.Output.create<AgentDataSourceVectorIngestionConfiguration>(AgentDataSourceVectorIngestionConfiguration.fromMap((map['vectorIngestionConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

