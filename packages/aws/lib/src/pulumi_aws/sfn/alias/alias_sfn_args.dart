// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../alias_routing_configuration/alias_routing_configuration.dart';

/// The set of arguments for Alias.
class AliasSfnArgs {
  /// Description of the alias.
  final pulumi.Input<String>? description;

  /// Name for the alias you are creating.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The StateMachine alias' route configuration settings. Fields documented below
  final pulumi.Input<List<AliasRoutingConfiguration>> routingConfigurations;

  AliasSfnArgs({
    this.description,
    this.name,
    this.region,
    required this.routingConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routingConfigurations'] = pulumi.Input.mapInputValue<
            List<AliasRoutingConfiguration>, List<Map<String, dynamic>>>(
        routingConfigurations,
        (value) => pulumi.Input.encodeList<AliasRoutingConfiguration,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory AliasSfnArgs.fromMap(Map<String, dynamic> map) {
    return AliasSfnArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routingConfigurations:
          pulumi.Input.asInput<List<AliasRoutingConfiguration>>(
              map['routingConfigurations']),
    );
  }
}
