// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudhealth_get_entity_history_args_doc}
/// Arguments for getEntityHistory.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_get_entity_history_args_doc}
class GetEntityHistoryArgs {
  /// End time for the history query. Defaults to now if not specified.
  final pulumi.Input<String?>? endAt;
  /// Name of the entity. Must be unique within a health model.
  final pulumi.Input<String> entityName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Start time for the history query. Defaults to 24 hours ago if not specified.
  final pulumi.Input<String?>? startAt;

  /// Creates a new [GetEntityHistoryArgs].
  /// [endAt] End time for the history query. Defaults to now if not specified.
  /// [entityName] Name of the entity. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startAt] Start time for the history query. Defaults to 24 hours ago if not specified.
  const GetEntityHistoryArgs({
    this.endAt,
    required this.entityName,
    required this.healthModelName,
    required this.resourceGroupName,
    this.startAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endAt': ?endAt,
      'entityName': entityName,
      'healthModelName': healthModelName,
      'resourceGroupName': resourceGroupName,
      'startAt': ?startAt,
    };
  }

  factory GetEntityHistoryArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityHistoryArgs(
      endAt: (() { final guardedValue = map['endAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityName: pulumi.Input.fromValue(map['entityName'] as String),
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
