// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'child_configuration_filter.dart';
import 'filterable_property.dart';
import 'hierarchy_information.dart';

/// Configuration filters.
class ConfigurationFilter {
  /// Filter to fetch specific child configurations that exist in the configuration. This must be passed to either fetch a list of specific child configurations, or all child configurations of specific types of child configurations.
  final pulumi.Input<ChildConfigurationFilter>? childConfigurationFilter;
  /// Filters specific to product.
  final pulumi.Input<List<FilterableProperty>>? filterableProperty;
  /// Product hierarchy information.
  final pulumi.Input<HierarchyInformation> hierarchyInformation;

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
      'childConfigurationFilter': ?pulumi.Input.mapOptionalInputValue<ChildConfigurationFilter, Map<String, dynamic>>(childConfigurationFilter, (value) => value.toMap()),
      'filterableProperty': ?pulumi.Input.mapOptionalInputValue<List<FilterableProperty>, List<Map<String, dynamic>>>(filterableProperty, (value) => pulumi.Input.encodeList<FilterableProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hierarchyInformation': pulumi.Input.mapInputValue<HierarchyInformation, Map<String, dynamic>>(hierarchyInformation, (value) => value.toMap()),
    };
  }

  factory ConfigurationFilter.fromMap(Map<String, dynamic> map) {
    return ConfigurationFilter(
      childConfigurationFilter: map['childConfigurationFilter'] == null ? null : (ChildConfigurationFilter.fromMap((map['childConfigurationFilter']! as Map).cast<String, dynamic>())).input(),
      filterableProperty: map['filterableProperty'] == null ? null : (pulumi.Input.decodeList<FilterableProperty>(map['filterableProperty']!, (value) => FilterableProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hierarchyInformation: (HierarchyInformation.fromMap((map['hierarchyInformation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

