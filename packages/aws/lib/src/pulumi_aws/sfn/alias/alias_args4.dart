// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../alias_routing_configuration/alias_routing_configuration.dart';

/// The set of arguments for Alias.
class AliasArgs4 {
  /// Description of the alias.
  final Input<String>? description;

  /// Name for the alias you are creating.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The StateMachine alias' route configuration settings. Fields documented below
  final Input<List<AliasRoutingConfiguration>> routingConfigurations;

  AliasArgs4({
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
    map['routingConfigurations'] = Input.mapInputValue<
            List<AliasRoutingConfiguration>, List<Map<String, dynamic>>>(
        routingConfigurations,
        (value) =>
            Input.encodeList<AliasRoutingConfiguration, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory AliasArgs4.fromMap(Map<String, dynamic> map) {
    return AliasArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      routingConfigurations: Input.asInput<List<AliasRoutingConfiguration>>(
          map['routingConfigurations']),
    );
  }
}
