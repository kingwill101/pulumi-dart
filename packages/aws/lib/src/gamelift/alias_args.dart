// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_routing_strategy.dart';

/// {@template pulumi_gamelift_alias_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_gamelift_alias_alias_args_doc}
class AliasArgs {
  /// Description of the alias.
  final pulumi.Input<String>? description;
  /// Name of the alias.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the fleet and/or routing type to use for the alias.
  final pulumi.Input<AliasRoutingStrategy> routingStrategy;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AliasArgs].
  /// [description] Description of the alias.
  /// [name] Name of the alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingStrategy] Specifies the fleet and/or routing type to use for the alias.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AliasArgs({
    String? description,
    String? name,
    String? region,
    required AliasRoutingStrategy routingStrategy,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingStrategy = pulumi.Input.asInput<AliasRoutingStrategy>(routingStrategy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'routingStrategy': pulumi.Input.mapInputValue<AliasRoutingStrategy, Map<String, dynamic>>(routingStrategy, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routingStrategy: AliasRoutingStrategy.fromMap((map['routingStrategy'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

