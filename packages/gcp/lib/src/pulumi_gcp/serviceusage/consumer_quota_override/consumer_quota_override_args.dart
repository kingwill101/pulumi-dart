// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ConsumerQuotaOverride.
class ConsumerQuotaOverrideArgs {
  /// If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  final pulumi.Input<Map<String, String>>? dimensions;

  /// If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// If `force` is `true`, that safety check is ignored.
  final pulumi.Input<bool>? force;

  /// The limit on the metric, e.g. `/project/region`.
  /// > Make sure that `limit` is in a format that doesn't start with `1/` or contain curly braces.
  /// E.g. use `/project/user` instead of `1/{project}/{user}`.
  final pulumi.Input<String> limit;

  /// The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  final pulumi.Input<String> metric;

  /// The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  final pulumi.Input<String> overrideValue;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The service that the metrics belong to, e.g. `compute.googleapis.com`.
  final pulumi.Input<String> service;

  ConsumerQuotaOverrideArgs({
    this.dimensions,
    this.force,
    required this.limit,
    required this.metric,
    required this.overrideValue,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    map['limit'] = limit;
    map['metric'] = metric;
    map['overrideValue'] = overrideValue;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    return map;
  }

  factory ConsumerQuotaOverrideArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerQuotaOverrideArgs(
      dimensions:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['dimensions']),
      force: pulumi.Input.asOptionalInput<bool>(map['force']),
      limit: pulumi.Input.asInput<String>(map['limit']),
      metric: pulumi.Input.asInput<String>(map['metric']),
      overrideValue: pulumi.Input.asInput<String>(map['overrideValue']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      service: pulumi.Input.asInput<String>(map['service']),
    );
  }
}
