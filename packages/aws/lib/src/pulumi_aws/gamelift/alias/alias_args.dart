// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../alias_routing_strategy/alias_routing_strategy.dart';

/// The set of arguments for Alias.
class AliasArgs {
  /// Description of the alias.
  final Input<String>? description;

  /// Name of the alias.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the fleet and/or routing type to use for the alias.
  final Input<AliasRoutingStrategy> routingStrategy;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AliasArgs({
    this.description,
    this.name,
    this.region,
    required this.routingStrategy,
    this.tags,
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
    map['routingStrategy'] =
        Input.mapInputValue<AliasRoutingStrategy, Map<String, dynamic>>(
            routingStrategy, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      routingStrategy:
          Input.asInput<AliasRoutingStrategy>(map['routingStrategy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
