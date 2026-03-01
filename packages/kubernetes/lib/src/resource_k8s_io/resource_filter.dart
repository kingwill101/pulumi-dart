// ignore_for_file: unused_element, unnecessary_cast

import 'named_resources_filter.dart';

/// ResourceFilter is a filter for resources from one particular driver.
class ResourceFilter {
  /// DriverName is the name used by the DRA driver kubelet plugin.
  final String? driverName;
  /// NamedResources describes a resource filter using the named resources model.
  final NamedResourcesFilter? namedResources;

  /// Creates a new [ResourceFilter].
  /// [driverName] DriverName is the name used by the DRA driver kubelet plugin.
  /// [namedResources] NamedResources describes a resource filter using the named resources model.
  ResourceFilter({
    this.driverName,
    this.namedResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverName': ?driverName,
      'namedResources': ?namedResources == null ? null : namedResources!.toMap(),
    };
  }

  factory ResourceFilter.fromMap(Map<String, dynamic> map) {
    return ResourceFilter(
      driverName: map['driverName'] == null ? null : map['driverName'] as String,
      namedResources: map['namedResources'] == null ? null : NamedResourcesFilter.fromMap((map['namedResources'] as Map).cast<String, dynamic>()),
    );
  }
}

