// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_connection_physical_connection_requirement/get_connection_physical_connection_requirement.dart';

/// Result data returned by getConnection.
class GetConnectionGlueResult {
  /// ARN of the Glue Connection.
  final String arn;

  /// A map of connection properties specific to the Athena compute environment.
  final Map<String, String> athenaProperties;

  /// Catalog ID of the Glue Connection.
  final String catalogId;

  /// A map of connection properties.
  final Map<String, String> connectionProperties;

  /// Type of Glue Connection.
  final String connectionType;

  /// Description of the connection.
  final String description;
  final String id;

  /// A list of criteria that can be used in selecting this connection.
  final List<String> matchCriterias;

  /// Name of the Glue Connection.
  final String name;

  /// A map of physical connection requirements, such as VPC and SecurityGroup.
  final List<GetConnectionPhysicalConnectionRequirement>
      physicalConnectionRequirements;
  final String region;

  /// Tags assigned to the resource
  final Map<String, String> tags;

  GetConnectionGlueResult({
    required this.arn,
    required this.athenaProperties,
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['athenaProperties'] = athenaProperties;
    map['catalogId'] = catalogId;
    map['connectionProperties'] = connectionProperties;
    map['connectionType'] = connectionType;
    map['description'] = description;
    map['id'] = id;
    map['matchCriterias'] = matchCriterias;
    map['name'] = name;
    map['physicalConnectionRequirements'] = pulumi.Input.encodeList<
            GetConnectionPhysicalConnectionRequirement, Map<String, dynamic>>(
        physicalConnectionRequirements, (value) => value.toMap());
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetConnectionGlueResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionGlueResult(
      arn: map['arn'] as String,
      athenaProperties: (map['athenaProperties'] as Map).cast<String, String>(),
      catalogId: map['catalogId'] as String,
      connectionProperties:
          (map['connectionProperties'] as Map).cast<String, String>(),
      connectionType: map['connectionType'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      matchCriterias: (map['matchCriterias'] as List).cast<String>(),
      name: map['name'] as String,
      physicalConnectionRequirements:
          pulumi.Input.decodeList<GetConnectionPhysicalConnectionRequirement>(
              map['physicalConnectionRequirements'],
              (value) => GetConnectionPhysicalConnectionRequirement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
