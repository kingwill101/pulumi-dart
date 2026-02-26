// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agent_data_source_data_source_configuration/agent_data_source_data_source_configuration.dart';
import '../agent_data_source_server_side_encryption_configuration/agent_data_source_server_side_encryption_configuration.dart';
import '../agent_data_source_timeouts/agent_data_source_timeouts.dart';
import '../agent_data_source_vector_ingestion_configuration/agent_data_source_vector_ingestion_configuration.dart';

/// The set of arguments for AgentDataSource.
class AgentDataSourceArgs {
  /// Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  final Input<String>? dataDeletionPolicy;

  /// Details about how the data source is stored. See <span pulumi-lang-nodejs="`dataSourceConfiguration`" pulumi-lang-dotnet="`DataSourceConfiguration`" pulumi-lang-go="`dataSourceConfiguration`" pulumi-lang-python="`data_source_configuration`" pulumi-lang-yaml="`dataSourceConfiguration`" pulumi-lang-java="`dataSourceConfiguration`">`data_source_configuration`</span> block for details.
  final Input<AgentDataSourceDataSourceConfiguration> dataSourceConfiguration;

  /// Description of the data source.
  final Input<String>? description;

  /// Unique identifier of the knowledge base to which the data source belongs.
  final Input<String> knowledgeBaseId;

  /// Name of the data source.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Details about the configuration of the server-side encryption. See <span pulumi-lang-nodejs="`serverSideEncryptionConfiguration`" pulumi-lang-dotnet="`ServerSideEncryptionConfiguration`" pulumi-lang-go="`serverSideEncryptionConfiguration`" pulumi-lang-python="`server_side_encryption_configuration`" pulumi-lang-yaml="`serverSideEncryptionConfiguration`" pulumi-lang-java="`serverSideEncryptionConfiguration`">`server_side_encryption_configuration`</span> block for details.
  final Input<AgentDataSourceServerSideEncryptionConfiguration>?
      serverSideEncryptionConfiguration;
  final Input<AgentDataSourceTimeouts>? timeouts;

  /// Details about the configuration of the server-side encryption. See <span pulumi-lang-nodejs="`vectorIngestionConfiguration`" pulumi-lang-dotnet="`VectorIngestionConfiguration`" pulumi-lang-go="`vectorIngestionConfiguration`" pulumi-lang-python="`vector_ingestion_configuration`" pulumi-lang-yaml="`vectorIngestionConfiguration`" pulumi-lang-java="`vectorIngestionConfiguration`">`vector_ingestion_configuration`</span> block for details.
  final Input<AgentDataSourceVectorIngestionConfiguration>?
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
    map['dataSourceConfiguration'] = Input.mapInputValue<
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
      map['serverSideEncryptionConfiguration'] = Input.mapOptionalInputValue<
              AgentDataSourceServerSideEncryptionConfiguration,
              Map<String, dynamic>>(
          serverSideEncryptionConfigurationValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<AgentDataSourceTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final vectorIngestionConfigurationValue = vectorIngestionConfiguration;
    if (vectorIngestionConfigurationValue != null) {
      map['vectorIngestionConfiguration'] = Input.mapOptionalInputValue<
              AgentDataSourceVectorIngestionConfiguration,
              Map<String, dynamic>>(
          vectorIngestionConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceArgs(
      dataDeletionPolicy:
          Input.asOptionalInput<String>(map['dataDeletionPolicy']),
      dataSourceConfiguration:
          Input.asInput<AgentDataSourceDataSourceConfiguration>(
              map['dataSourceConfiguration']),
      description: Input.asOptionalInput<String>(map['description']),
      knowledgeBaseId: Input.asInput<String>(map['knowledgeBaseId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serverSideEncryptionConfiguration: Input.asOptionalInput<
              AgentDataSourceServerSideEncryptionConfiguration>(
          map['serverSideEncryptionConfiguration']),
      timeouts: Input.asOptionalInput<AgentDataSourceTimeouts>(map['timeouts']),
      vectorIngestionConfiguration:
          Input.asOptionalInput<AgentDataSourceVectorIngestionConfiguration>(
              map['vectorIngestionConfiguration']),
    );
  }
}
