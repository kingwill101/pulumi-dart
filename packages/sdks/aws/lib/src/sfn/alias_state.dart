// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_routing_configuration.dart';

/// Input properties used for looking up and filtering Alias resources.
class AliasState {
  /// ARN identifying your state machine alias.
  final pulumi.Input<String?>? arn;
  /// The date the state machine alias was created.
  final pulumi.Input<String?>? creationDate;
  /// Description of the alias.
  final pulumi.Input<String?>? description;
  /// Name for the alias you are creating.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The StateMachine alias' route configuration settings. Fields documented below
  final pulumi.Input<List<AliasRoutingConfiguration>?>? routingConfigurations;

  /// Creates a new [AliasState].
  /// [arn] ARN identifying your state machine alias.
  /// [creationDate] The date the state machine alias was created.
  /// [description] Description of the alias.
  /// [name] Name for the alias you are creating.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingConfigurations] The StateMachine alias' route configuration settings. Fields documented below
  const AliasState({
    this.arn,
    this.creationDate,
    this.description,
    this.name,
    this.region,
    this.routingConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationDate': ?creationDate,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'routingConfigurations': ?pulumi.Input.mapOptionalInputValue<List<AliasRoutingConfiguration>, List<Map<String, dynamic>>>(routingConfigurations, (value) => pulumi.Input.encodeList<AliasRoutingConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AliasState.fromMap(Map<String, dynamic> map) {
    return AliasState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingConfigurations: (() { final guardedValue = map['routingConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AliasRoutingConfiguration>(guardedValue, (value) => AliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
