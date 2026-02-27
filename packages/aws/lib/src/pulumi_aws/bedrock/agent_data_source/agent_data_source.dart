import 'package:pulumi/pulumi.dart';
import '../agent_data_source_data_source_configuration/agent_data_source_data_source_configuration.dart';
import '../agent_data_source_server_side_encryption_configuration/agent_data_source_server_side_encryption_configuration.dart';
import '../agent_data_source_timeouts/agent_data_source_timeouts.dart';
import '../agent_data_source_vector_ingestion_configuration/agent_data_source_vector_ingestion_configuration.dart';
import 'agent_data_source_args.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Data Source.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Multimodal Parsing
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Data Source using the data source ID and the knowledge base ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentDataSource:AgentDataSource example GWCMFMQF6T,EMDPPAYPZI
/// ```
///
/// [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ConfluenceDataSourceConfiguration.html
/// [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_SalesforceDataSourceConfiguration.html
/// [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_SharePointDataSourceConfiguration.html
/// [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_WebDataSourceConfiguration.html
class AgentDataSource extends CustomResource {
  /// Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  late final Output<String> dataDeletionPolicy;

  /// Details about how the data source is stored. See `data_source_configuration` block for details.
  late final Output<AgentDataSourceDataSourceConfiguration>
      dataSourceConfiguration;

  /// Unique identifier of the data source.
  late final Output<String> dataSourceId;

  /// Description of the data source.
  late final Output<String?> description;

  /// Unique identifier of the knowledge base to which the data source belongs.
  late final Output<String> knowledgeBaseId;

  /// Name of the data source.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Details about the configuration of the server-side encryption. See `server_side_encryption_configuration` block for details.
  late final Output<AgentDataSourceServerSideEncryptionConfiguration?>
      serverSideEncryptionConfiguration;
  late final Output<AgentDataSourceTimeouts?> timeouts;

  /// Details about the configuration of the server-side encryption. See `vector_ingestion_configuration` block for details.
  late final Output<AgentDataSourceVectorIngestionConfiguration?>
      vectorIngestionConfiguration;

  AgentDataSource(
    String name, {
    AgentDataSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentDataSource:AgentDataSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataDeletionPolicy = registerOutput<String>('dataDeletionPolicy');
    this.dataSourceConfiguration =
        registerOutput<AgentDataSourceDataSourceConfiguration>(
            'dataSourceConfiguration');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.description = registerOutput<String?>('description');
    this.knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serverSideEncryptionConfiguration =
        registerOutput<AgentDataSourceServerSideEncryptionConfiguration?>(
            'serverSideEncryptionConfiguration');
    this.timeouts = registerOutput<AgentDataSourceTimeouts?>('timeouts');
    this.vectorIngestionConfiguration =
        registerOutput<AgentDataSourceVectorIngestionConfiguration?>(
            'vectorIngestionConfiguration');
  }
}
