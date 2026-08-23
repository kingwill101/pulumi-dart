// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_authentication_configuration.dart';
import 'get_connection_physical_connection_requirement.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// ARN of the Glue Connection.
  final String arn;
  /// Map of connection properties specific to the Athena compute environment.
  final Map<String, String> athenaProperties;
  /// Configuration block for authentication options. See `authenticationConfiguration` Block for details.
  final List<GetConnectionAuthenticationConfiguration> authenticationConfigurations;
  /// Catalog ID of the Glue Connection.
  final String catalogId;
  /// Map of connection properties.
  final Map<String, String> connectionProperties;
  /// Type of Glue Connection.
  final String connectionType;
  /// Description of the connection.
  final String description;
  final String id;
  /// List of criteria that can be used in selecting this connection.
  final List<String> matchCriterias;
  /// Name of the Glue Connection.
  final String name;
  /// Map of physical connection requirements, such as VPC and SecurityGroup. See `physicalConnectionRequirements` Block for details.
  final List<GetConnectionPhysicalConnectionRequirement> physicalConnectionRequirements;
  final String region;
  /// Tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetConnectionResult].
  /// [arn] ARN of the Glue Connection.
  /// [athenaProperties] Map of connection properties specific to the Athena compute environment.
  /// [authenticationConfigurations] Configuration block for authentication options. See `authenticationConfiguration` Block for details.
  /// [catalogId] Catalog ID of the Glue Connection.
  /// [connectionProperties] Map of connection properties.
  /// [connectionType] Type of Glue Connection.
  /// [description] Description of the connection.
  /// [id] Required.
  /// [matchCriterias] List of criteria that can be used in selecting this connection.
  /// [name] Name of the Glue Connection.
  /// [physicalConnectionRequirements] Map of physical connection requirements, such as VPC and SecurityGroup. See `physicalConnectionRequirements` Block for details.
  /// [region] Required.
  /// [tags] Tags assigned to the resource.
  const GetConnectionResult({
    required this.arn,
    required this.athenaProperties,
    required this.authenticationConfigurations,
    required this.catalogId,
    required this.connectionProperties,
    required this.connectionType,
    required this.description,
    required this.id,
    required this.matchCriterias,
    required this.name,
    required this.physicalConnectionRequirements,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'athenaProperties': athenaProperties,
      'authenticationConfigurations': pulumi.Input.encodeList<GetConnectionAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfigurations, (value) => value.toMap()),
      'catalogId': catalogId,
      'connectionProperties': connectionProperties,
      'connectionType': connectionType,
      'description': description,
      'id': id,
      'matchCriterias': matchCriterias,
      'name': name,
      'physicalConnectionRequirements': pulumi.Input.encodeList<GetConnectionPhysicalConnectionRequirement, Map<String, dynamic>>(physicalConnectionRequirements, (value) => value.toMap()),
      'region': region,
      'tags': tags,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: map['arn'] as String,
      athenaProperties: (map['athenaProperties'] as Map).cast<String, String>(),
      authenticationConfigurations: pulumi.Input.decodeList<GetConnectionAuthenticationConfiguration>(map['authenticationConfigurations']!, (value) => GetConnectionAuthenticationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      catalogId: map['catalogId'] as String,
      connectionProperties: (map['connectionProperties'] as Map).cast<String, String>(),
      connectionType: map['connectionType'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      matchCriterias: (map['matchCriterias'] as List).cast<String>(),
      name: map['name'] as String,
      physicalConnectionRequirements: pulumi.Input.decodeList<GetConnectionPhysicalConnectionRequirement>(map['physicalConnectionRequirements']!, (value) => GetConnectionPhysicalConnectionRequirement.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
