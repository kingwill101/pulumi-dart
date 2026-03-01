// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'child_configuration_filter.dart';
import 'filterable_property.dart';
import 'hierarchy_information.dart';

/// Configuration filters.
class ConfigurationFilter {
  /// Filter to fetch specific child configurations that exist in the configuration. This must be passed to either fetch a list of specific child configurations, or all child configurations of specific types of child configurations.
  final ChildConfigurationFilter? childConfigurationFilter;
  /// Filters specific to product.
  final List<FilterableProperty>? filterableProperty;
  /// Product hierarchy information.
  final HierarchyInformation hierarchyInformation;

  /// Creates a new [ConfigurationFilter].
  /// [childConfigurationFilter] Filter to fetch specific child configurations that exist in the configuration. This must be passed to either fetch a list of specific child configurations, or all child configurations of specific types of child configurations.
  /// [filterableProperty] Filters specific to product.
  /// [hierarchyInformation] Product hierarchy information.
  ConfigurationFilter({
    this.childConfigurationFilter,
    this.filterableProperty,
    required this.hierarchyInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'childConfigurationFilter': ?childConfigurationFilter == null ? null : childConfigurationFilter!.toMap(),
      'filterableProperty': ?filterableProperty == null ? null : pulumi.Input.encodeList<FilterableProperty, Map<String, dynamic>>(filterableProperty!, (value) => value.toMap()),
      'hierarchyInformation': hierarchyInformation.toMap(),
    };
  }

  factory ConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return ConfigurationFilter(
      childConfigurationFilter: map['childConfigurationFilter'] == null ? null : ChildConfigurationFilter.fromMap((map['childConfigurationFilter'] as Map).cast<String, dynamic>()),
      filterableProperty: map['filterableProperty'] == null ? null : pulumi.Input.decodeList<FilterableProperty>(map['filterableProperty'], (value) => FilterableProperty.fromMap((value as Map).cast<String, dynamic>())),
      hierarchyInformation: HierarchyInformation.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>()),
    );
  }
}

