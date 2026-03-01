// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_routing_configuration.dart';

/// Result data returned by getAlias.
class GetAliasResult {
  /// ARN identifying the State Machine alias.
  final String arn;
  /// Date the state machine Alias was created.
  final String creationDate;
  /// Description of state machine alias.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  /// Routing Configuration of state machine alias
  final List<GetAliasRoutingConfiguration> routingConfigurations;
  final String statemachineArn;

  /// Creates a new [GetAliasResult].
  /// [arn] ARN identifying the State Machine alias.
  /// [creationDate] Date the state machine Alias was created.
  /// [description] Description of state machine alias.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [routingConfigurations] Routing Configuration of state machine alias
  /// [statemachineArn] Required.
  GetAliasResult({
    required this.arn,
    required this.creationDate,
    this.description,
    required this.id,
    required this.name,
    required this.region,
    required this.routingConfigurations,
    required this.statemachineArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'creationDate': creationDate,
      'description': ?description,
      'id': id,
      'name': name,
      'region': region,
      'routingConfigurations': pulumi.Input.encodeList<GetAliasRoutingConfiguration, Map<String, dynamic>>(routingConfigurations, (value) => value.toMap()),
      'statemachineArn': statemachineArn,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      arn: map['arn'] as String,
      creationDate: map['creationDate'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      routingConfigurations: pulumi.Input.decodeList<GetAliasRoutingConfiguration>(map['routingConfigurations'], (value) => GetAliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      statemachineArn: map['statemachineArn'] as String,
    );
  }
}

