// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_routing_configuration.dart';

/// Result data returned by getAlias.
class GetAliasResult {
  /// ARN identifying the State Machine alias.
  final String? arn;
  /// Date the state machine Alias was created.
  final String? creationDate;
  /// Description of state machine alias.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  /// Routing Configuration of state machine alias
  final List<GetAliasRoutingConfiguration>? routingConfigurations;
  final String? statemachineArn;

  /// Creates a new [GetAliasResult].
  /// [arn] ARN identifying the State Machine alias.
  /// [creationDate] Date the state machine Alias was created.
  /// [description] Description of state machine alias.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [routingConfigurations] Routing Configuration of state machine alias
  /// [statemachineArn] Optional.
  const GetAliasResult({
    this.arn,
    this.creationDate,
    this.description,
    this.id,
    this.name,
    this.region,
    this.routingConfigurations,
    this.statemachineArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'routingConfigurations': ?(() { final guardedValue = routingConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAliasRoutingConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'statemachineArn': ?statemachineArn,
    };
  }

  factory GetAliasResult.fromMap(Map<String, dynamic> map) {
    return GetAliasResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingConfigurations: (() { final guardedValue = map['routingConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAliasRoutingConfiguration>(guardedValue, (value) => GetAliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      statemachineArn: (() { final guardedValue = map['statemachineArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
