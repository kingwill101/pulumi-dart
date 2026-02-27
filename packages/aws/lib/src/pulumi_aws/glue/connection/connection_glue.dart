import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_physical_connection_requirements/connection_physical_connection_requirements.dart';
import 'connection_glue_args.dart';

/// Provides a Glue Connection resource.
///
/// ## Example Usage
///
/// ### Non-VPC Connection
///
///
///
/// ### Non-VPC Connection with secret manager reference
///
///
///
/// ### VPC Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/populate-add-connection.html#connection-JDBC-VPC).
///
///
///
/// ### Connection using a custom connector
///
///
///
/// ### Azure Cosmos Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-azurecosmos).
///
///
///
/// ### Azure SQL Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-azuresql).
///
///
///
/// ### Google BigQuery Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-bigquery).
///
///
///
/// ### OpenSearch Service Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-opensearch).
///
///
///
/// ### Snowflake Connection
///
/// For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html#connection-properties-snowflake).
///
///
///
/// ### DynamoDB Connection
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Connections using the `CATALOG-ID` (AWS account ID if not custom) and `NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/connection:Connection MyConnection 123456789012:MyConnection
/// ```
class ConnectionGlue extends pulumi.CustomResource {
  /// ARN of the Glue Connection.
  late final pulumi.Output<String> arn;

  /// Map of key-value pairs used as connection properties specific to the Athena compute environment.
  late final pulumi.Output<Map<String, String>?> athenaProperties;

  /// ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
  late final pulumi.Output<String> catalogId;

  /// Map of key-value pairs used as parameters for this connection. For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html).
  ///
  /// **Note:** Some connection types require the `SparkProperties` property with a JSON document that contains the actual connection properties. For specific examples, refer to Example Usage.
  late final pulumi.Output<Map<String, String>?> connectionProperties;

  /// Type of the connection. Valid values: `AZURECOSMOS`, `AZURESQL`, `BIGQUERY`, `CUSTOM`, `DYNAMODB`, `JDBC`, `KAFKA`, `MARKETPLACE`, `MONGODB`, `NETWORK`, `OPENSEARCH`, `SNOWFLAKE`. Defaults to `JDBC`.
  late final pulumi.Output<String?> connectionType;

  /// Description of the connection.
  late final pulumi.Output<String?> description;

  /// List of criteria that can be used in selecting this connection.
  late final pulumi.Output<List<String>?> matchCriterias;

  /// Name of the connection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Map of physical connection requirements, such as VPC and SecurityGroup. See `physical_connection_requirements` Block for details.
  late final pulumi.Output<ConnectionPhysicalConnectionRequirements?>
      physicalConnectionRequirements;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ConnectionGlue(
    String name, {
    ConnectionGlueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.athenaProperties =
        registerOutput<Map<String, String>?>('athenaProperties');
    this.catalogId = registerOutput<String>('catalogId');
    this.connectionProperties =
        registerOutput<Map<String, String>?>('connectionProperties');
    this.connectionType = registerOutput<String?>('connectionType');
    this.description = registerOutput<String?>('description');
    this.matchCriterias = registerOutput<List<String>?>('matchCriterias');
    this.name = registerOutput<String>('name');
    this.physicalConnectionRequirements =
        registerOutput<ConnectionPhysicalConnectionRequirements?>(
            'physicalConnectionRequirements');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
