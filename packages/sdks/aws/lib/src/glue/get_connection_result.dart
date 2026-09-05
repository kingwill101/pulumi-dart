// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_authentication_configuration.dart';
import 'get_connection_physical_connection_requirement.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// ARN of the Glue Connection.
  final String? arn;
  /// Map of connection properties specific to the Athena compute environment.
  final Map<String, String>? athenaProperties;
  /// Configuration block for authentication options. See `authenticationConfiguration` Block for details.
  final List<GetConnectionAuthenticationConfiguration>? authenticationConfigurations;
  /// Catalog ID of the Glue Connection.
  final String? catalogId;
  /// Map of connection properties.
  final Map<String, String>? connectionProperties;
  /// Type of Glue Connection.
  final String? connectionType;
  /// Description of the connection.
  final String? description;
  final String? id;
  /// List of criteria that can be used in selecting this connection.
  final List<String>? matchCriterias;
  /// Name of the Glue Connection.
  final String? name;
  /// Map of physical connection requirements, such as VPC and SecurityGroup. See `physicalConnectionRequirements` Block for details.
  final List<GetConnectionPhysicalConnectionRequirement>? physicalConnectionRequirements;
  final String? region;
  /// Tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetConnectionResult].
  /// [arn] ARN of the Glue Connection.
  /// [athenaProperties] Map of connection properties specific to the Athena compute environment.
  /// [authenticationConfigurations] Configuration block for authentication options. See `authenticationConfiguration` Block for details.
  /// [catalogId] Catalog ID of the Glue Connection.
  /// [connectionProperties] Map of connection properties.
  /// [connectionType] Type of Glue Connection.
  /// [description] Description of the connection.
  /// [id] Optional.
  /// [matchCriterias] List of criteria that can be used in selecting this connection.
  /// [name] Name of the Glue Connection.
  /// [physicalConnectionRequirements] Map of physical connection requirements, such as VPC and SecurityGroup. See `physicalConnectionRequirements` Block for details.
  /// [region] Optional.
  /// [tags] Tags assigned to the resource.
  const GetConnectionResult({
    this.arn,
    this.athenaProperties,
    this.authenticationConfigurations,
    this.catalogId,
    this.connectionProperties,
    this.connectionType,
    this.description,
    this.id,
    this.matchCriterias,
    this.name,
    this.physicalConnectionRequirements,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'athenaProperties': ?athenaProperties,
      'authenticationConfigurations': ?(() { final guardedValue = authenticationConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectionAuthenticationConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'catalogId': ?catalogId,
      'connectionProperties': ?connectionProperties,
      'connectionType': ?connectionType,
      'description': ?description,
      'id': ?id,
      'matchCriterias': ?matchCriterias,
      'name': ?name,
      'physicalConnectionRequirements': ?(() { final guardedValue = physicalConnectionRequirements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectionPhysicalConnectionRequirement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      athenaProperties: (() { final guardedValue = map['athenaProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      authenticationConfigurations: (() { final guardedValue = map['authenticationConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectionAuthenticationConfiguration>(guardedValue, (value) => GetConnectionAuthenticationConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionProperties: (() { final guardedValue = map['connectionProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      matchCriterias: (() { final guardedValue = map['matchCriterias']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      physicalConnectionRequirements: (() { final guardedValue = map['physicalConnectionRequirements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectionPhysicalConnectionRequirement>(guardedValue, (value) => GetConnectionPhysicalConnectionRequirement.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
