// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RegionCompositeHealthCheck.
class RegionCompositeHealthCheckArgs {
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final pulumi.Input<String>? description;

  /// URL to the destination resource. Must be set. Must be a
  /// ForwardingRule. The ForwardingRule must have
  /// load balancing scheme INTERNAL or
  /// INTERNAL_MANAGED and must be regional and in the same region
  /// as the CompositeHealthCheck (cross-region deployment for
  /// INTERNAL_MANAGED is not supported). Can be mutated.
  final pulumi.Input<String> healthDestination;

  /// URLs to the HealthSource resources whose results are AND'ed.
  /// I.e. he aggregated result is is HEALTHY only if all sources
  /// are HEALTHY. Must have at least 1. Must not have more than 10.
  /// Must be regional and in the same region as the
  /// CompositeHealthCheck. Can be mutated.
  final pulumi.Input<List<String>>? healthSources;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// URL of the region where the composite health check resides.
  final pulumi.Input<String> region;

  RegionCompositeHealthCheckArgs({
    this.description,
    required this.healthDestination,
    this.healthSources,
    this.name,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['healthDestination'] = healthDestination;
    final healthSourcesValue = healthSources;
    if (healthSourcesValue != null) {
      map['healthSources'] = healthSourcesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory RegionCompositeHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return RegionCompositeHealthCheckArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      healthDestination: pulumi.Input.asInput<String>(map['healthDestination']),
      healthSources:
          pulumi.Input.asOptionalInput<List<String>>(map['healthSources']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
