// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionHealthSource.
class RegionHealthSourceArgs {
  /// An optional description of this resource. Provide this property when you
  /// create the resource.
  final Input<String>? description;

  /// URL to the `HealthAggregationPolicy` resource. Must be set. Must
  /// be regional and in the same region as the `HealthSource`. Can be
  /// mutated.
  final Input<String>? healthAggregationPolicy;

  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular
  /// expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must
  /// be a dash, lowercase letter, or digit, except the last character, which
  /// cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// URL of the region where the health source resides.
  final Input<String> region;

  /// Specifies the type of the `HealthSource`. The only allowed value
  /// is `BACKEND_SERVICE`. Must be specified when the
  /// `HealthSource` is created, and cannot be mutated.
  /// Possible values are: `BACKEND_SERVICE`.
  final Input<String> sourceType;

  /// URLs to the source resources. Must be size 1. Must be a
  /// `BackendService` if the `sourceType` is `BACKEND_SERVICE`. The
  /// `BackendService` must have load balancing scheme
  /// `INTERNAL` or `INTERNAL_MANAGED` and must be regional
  /// and in the same region as the `HealthSource` (cross-region
  /// deployment for `INTERNAL_MANAGED` is not supported). The
  /// `BackendService` may use only IGs, MIGs, or NEGs of type
  /// `GCE_VM_IP` or `GCE_VM_IP_PORT`. The
  /// `BackendService` may not use `haPolicy`. Can be
  /// mutated.
  final Input<String>? sources;

  RegionHealthSourceArgs({
    this.description,
    this.healthAggregationPolicy,
    this.name,
    this.project,
    required this.region,
    required this.sourceType,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final healthAggregationPolicyValue = healthAggregationPolicy;
    if (healthAggregationPolicyValue != null) {
      map['healthAggregationPolicy'] = healthAggregationPolicyValue;
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
    map['sourceType'] = sourceType;
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = sourcesValue;
    }
    return map;
  }

  factory RegionHealthSourceArgs.fromMap(Map<String, dynamic> map) {
    return RegionHealthSourceArgs(
      description: Input.asOptionalInput<String>(map['description']),
      healthAggregationPolicy:
          Input.asOptionalInput<String>(map['healthAggregationPolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      sourceType: Input.asInput<String>(map['sourceType']),
      sources: Input.asOptionalInput<String>(map['sources']),
    );
  }
}
