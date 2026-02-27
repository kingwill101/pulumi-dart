// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_physical_connection_requirements/connection_physical_connection_requirements.dart';

/// The set of arguments for Connection.
class ConnectionGlueArgs {
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
  final pulumi.Input<ConnectionPhysicalConnectionRequirements>?
      physicalConnectionRequirements;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ConnectionGlueArgs({
    this.athenaProperties,
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
    final map = <String, dynamic>{};
    final athenaPropertiesValue = athenaProperties;
    if (athenaPropertiesValue != null) {
      map['athenaProperties'] = athenaPropertiesValue;
    }
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final connectionPropertiesValue = connectionProperties;
    if (connectionPropertiesValue != null) {
      map['connectionProperties'] = connectionPropertiesValue;
    }
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final matchCriteriasValue = matchCriterias;
    if (matchCriteriasValue != null) {
      map['matchCriterias'] = matchCriteriasValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final physicalConnectionRequirementsValue = physicalConnectionRequirements;
    if (physicalConnectionRequirementsValue != null) {
      map['physicalConnectionRequirements'] =
          pulumi.Input.mapOptionalInputValue<
                  ConnectionPhysicalConnectionRequirements,
                  Map<String, dynamic>>(
              physicalConnectionRequirementsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ConnectionGlueArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionGlueArgs(
      athenaProperties: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['athenaProperties']),
      catalogId: pulumi.Input.asOptionalInput<String>(map['catalogId']),
      connectionProperties: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['connectionProperties']),
      connectionType:
          pulumi.Input.asOptionalInput<String>(map['connectionType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      matchCriterias:
          pulumi.Input.asOptionalInput<List<String>>(map['matchCriterias']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      physicalConnectionRequirements: pulumi.Input.asOptionalInput<
              ConnectionPhysicalConnectionRequirements>(
          map['physicalConnectionRequirements']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
