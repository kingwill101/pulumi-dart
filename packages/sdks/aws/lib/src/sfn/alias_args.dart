// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_routing_configuration.dart';

/// {@template pulumi_sfn_alias_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_sfn_alias_alias_args_doc}
class AliasArgs {
  /// Description of the alias.
  final pulumi.Input<String>? description;
  /// Name for the alias you are creating.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The StateMachine alias' route configuration settings. Fields documented below
  final pulumi.Input<List<AliasRoutingConfiguration>> routingConfigurations;

  /// Creates a new [AliasArgs].
  /// [description] Description of the alias.
  /// [name] Name for the alias you are creating.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingConfigurations] The StateMachine alias' route configuration settings. Fields documented below
  AliasArgs({
    this.description,
    this.name,
    this.region,
    required this.routingConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'routingConfigurations': pulumi.Input.mapInputValue<List<AliasRoutingConfiguration>, List<Map<String, dynamic>>>(routingConfigurations, (value) => pulumi.Input.encodeList<AliasRoutingConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routingConfigurations: (pulumi.Input.decodeList<AliasRoutingConfiguration>(map['routingConfigurations']!, (value) => AliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

