// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_get_service_updates_get_service_updates_args_doc}
/// Arguments for getServiceUpdates.
/// {@endtemplate}
/// {@macro pulumi_elasticache_get_service_updates_get_service_updates_args_doc}
class GetServiceUpdatesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Set of one or more Service Update statuses. Elements must be one of `available`, `cancelled`, or `expired`.
  final pulumi.Input<List<String>?>? statuses;

  /// Creates a new [GetServiceUpdatesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [statuses] Set of one or more Service Update statuses. Elements must be one of `available`, `cancelled`, or `expired`.
  const GetServiceUpdatesArgs({
    this.region,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'statuses': ?statuses,
    };
  }

  factory GetServiceUpdatesArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceUpdatesArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
