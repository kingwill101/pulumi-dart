// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_physical_connection_requirements.dart';

/// {@template pulumi_glue_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_glue_connection_connection_args_doc}
class ConnectionArgs {
  /// Map of key-value pairs used as connection properties specific to the Athena compute environment.
  final pulumi.Input<Map<String, String>>? athenaProperties;
  /// ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
  final pulumi.Input<String>? catalogId;
  /// Map of key-value pairs used as parameters for this connection. For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html).
  ///
  /// **Note:** Some connection types require the `SparkProperties` property with a JSON document that contains the actual connection properties. For specific examples, refer to Example Usage.
  final pulumi.Input<Map<String, String>>? connectionProperties;
  /// Type of the connection. Valid values: `AZURECOSMOS`, `AZURESQL`, `BIGQUERY`, `CUSTOM`, `DYNAMODB`, `JDBC`, `KAFKA`, `MARKETPLACE`, `MONGODB`, `NETWORK`, `OPENSEARCH`, `SNOWFLAKE`. Defaults to `JDBC`.
  final pulumi.Input<String>? connectionType;
  /// Description of the connection.
  final pulumi.Input<String>? description;
  /// List of criteria that can be used in selecting this connection.
  final pulumi.Input<List<String>>? matchCriterias;
  /// Name of the connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Map of physical connection requirements, such as VPC and SecurityGroup. See `physical_connection_requirements` Block for details.
  final pulumi.Input<ConnectionPhysicalConnectionRequirements>? physicalConnectionRequirements;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConnectionArgs].
  /// [athenaProperties] Map of key-value pairs used as connection properties specific to the Athena compute environment.
  /// [catalogId] ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
  /// [connectionProperties] Map of key-value pairs used as parameters for this connection. For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html).
  /// [connectionType] Type of the connection. Valid values: `AZURECOSMOS`, `AZURESQL`, `BIGQUERY`, `CUSTOM`, `DYNAMODB`, `JDBC`, `KAFKA`, `MARKETPLACE`, `MONGODB`, `NETWORK`, `OPENSEARCH`, `SNOWFLAKE`. Defaults to `JDBC`.
  /// [description] Description of the connection.
  /// [matchCriterias] List of criteria that can be used in selecting this connection.
  /// [name] Name of the connection.
  /// [physicalConnectionRequirements] Map of physical connection requirements, such as VPC and SecurityGroup. See `physical_connection_requirements` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ConnectionArgs({
    Map<String, String>? athenaProperties,
    String? catalogId,
    Map<String, String>? connectionProperties,
    String? connectionType,
    String? description,
    List<String>? matchCriterias,
    String? name,
    ConnectionPhysicalConnectionRequirements? physicalConnectionRequirements,
    String? region,
    Map<String, String>? tags,
  }) :
      athenaProperties = pulumi.Input.asOptionalInput<Map<String, String>>(athenaProperties),
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      connectionProperties = pulumi.Input.asOptionalInput<Map<String, String>>(connectionProperties),
      connectionType = pulumi.Input.asOptionalInput<String>(connectionType),
      description = pulumi.Input.asOptionalInput<String>(description),
      matchCriterias = pulumi.Input.asOptionalInput<List<String>>(matchCriterias),
      name = pulumi.Input.asOptionalInput<String>(name),
      physicalConnectionRequirements = pulumi.Input.asOptionalInput<ConnectionPhysicalConnectionRequirements>(physicalConnectionRequirements),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'athenaProperties': ?athenaProperties,
      'catalogId': ?catalogId,
      'connectionProperties': ?connectionProperties,
      'connectionType': ?connectionType,
      'description': ?description,
      'matchCriterias': ?matchCriterias,
      'name': ?name,
      'physicalConnectionRequirements': ?pulumi.Input.mapOptionalInputValue<ConnectionPhysicalConnectionRequirements, Map<String, dynamic>>(physicalConnectionRequirements, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      athenaProperties: map['athenaProperties'] == null ? null : (map['athenaProperties'] as Map).cast<String, String>(),
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      connectionProperties: map['connectionProperties'] == null ? null : (map['connectionProperties'] as Map).cast<String, String>(),
      connectionType: map['connectionType'] == null ? null : map['connectionType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      matchCriterias: map['matchCriterias'] == null ? null : (map['matchCriterias'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      physicalConnectionRequirements: map['physicalConnectionRequirements'] == null ? null : ConnectionPhysicalConnectionRequirements.fromMap((map['physicalConnectionRequirements'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

