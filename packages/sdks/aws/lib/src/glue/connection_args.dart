// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_authentication_configuration.dart';
import 'connection_physical_connection_requirements.dart';

/// {@template pulumi_glue_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_glue_connection_connection_args_doc}
class ConnectionArgs {
  /// Map of key-value pairs used as connection properties specific to the Athena compute environment.
  final pulumi.Input<Map<String, String>?>? athenaProperties;
  /// Configuration block for authentication options. See `authenticationConfiguration` below.
  final pulumi.Input<ConnectionAuthenticationConfiguration?>? authenticationConfiguration;
  /// ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
  final pulumi.Input<String?>? catalogId;
  /// Map of key-value pairs used as parameters for this connection. For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html).
  final pulumi.Input<Map<String, String>?>? connectionProperties;
  /// Type of the connection. Valid values: `AZURECOSMOS`, `AZURESQL`, `BIGQUERY`, `CUSTOM`, `DYNAMODB`, `JDBC`, `KAFKA`, `MARKETPLACE`, `MONGODB`, `NETWORK`, `OPENSEARCH`, `SNOWFLAKE`. Defaults to `JDBC`. Some connection types require the `SparkProperties` property with a JSON document that contains the actual connection properties. For specific examples, refer to Example Usage.
  final pulumi.Input<String?>? connectionType;
  /// Description of the connection.
  final pulumi.Input<String?>? description;
  /// List of criteria that can be used in selecting this connection.
  final pulumi.Input<List<String>?>? matchCriterias;
  /// Name of the connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Map of physical connection requirements, such as VPC and SecurityGroup. See `physicalConnectionRequirements` below.
  final pulumi.Input<ConnectionPhysicalConnectionRequirements?>? physicalConnectionRequirements;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ConnectionArgs].
  /// [athenaProperties] Map of key-value pairs used as connection properties specific to the Athena compute environment.
  /// [authenticationConfiguration] Configuration block for authentication options. See `authenticationConfiguration` below.
  /// [catalogId] ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.
  /// [connectionProperties] Map of key-value pairs used as parameters for this connection. For more information, see the [AWS Documentation](https://docs.aws.amazon.com/glue/latest/dg/connection-properties.html).
  /// [connectionType] Type of the connection. Valid values: `AZURECOSMOS`, `AZURESQL`, `BIGQUERY`, `CUSTOM`, `DYNAMODB`, `JDBC`, `KAFKA`, `MARKETPLACE`, `MONGODB`, `NETWORK`, `OPENSEARCH`, `SNOWFLAKE`. Defaults to `JDBC`. Some connection types require the `SparkProperties` property with a JSON document that contains the actual connection properties. For specific examples, refer to Example Usage.
  /// [description] Description of the connection.
  /// [matchCriterias] List of criteria that can be used in selecting this connection.
  /// [name] Name of the connection.
  /// [physicalConnectionRequirements] Map of physical connection requirements, such as VPC and SecurityGroup. See `physicalConnectionRequirements` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ConnectionArgs({
    this.athenaProperties,
    this.authenticationConfiguration,
    this.catalogId,
    this.connectionProperties,
    this.connectionType,
    this.description,
    this.matchCriterias,
    this.name,
    this.physicalConnectionRequirements,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'athenaProperties': ?athenaProperties,
      'authenticationConfiguration': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
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
      athenaProperties: (() { final guardedValue = map['athenaProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authenticationConfiguration: (() { final guardedValue = map['authenticationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionAuthenticationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionProperties: (() { final guardedValue = map['connectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchCriterias: (() { final guardedValue = map['matchCriterias']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalConnectionRequirements: (() { final guardedValue = map['physicalConnectionRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionPhysicalConnectionRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
