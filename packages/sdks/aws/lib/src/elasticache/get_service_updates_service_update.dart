// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceUpdatesServiceUpdate {
  /// Whether the update will be applied after `recommendedApplyByDate`.
  final pulumi.Input<bool> autoUpdateAfterRecommendedApplyByDate;
  /// Description of the update.
  final pulumi.Input<String> description;
  /// Date the update will no longer be available.
  final pulumi.Input<String> endDate;
  /// Engine this update applies to.
  final pulumi.Input<String> engine;
  /// Engine version this update applies to.
  final pulumi.Input<String> engineVersion;
  /// Estimated duration of update.
  final pulumi.Input<String> estimatedUpdateTime;
  /// Name of the update.
  final pulumi.Input<String> name;
  /// Date the update should be applied by.
  final pulumi.Input<String> recommendedApplyByDate;
  /// Date the update was released.
  final pulumi.Input<String> releaseDate;
  /// Severity of the update. One of `critical`, `important`, `medium`, or `low`.
  final pulumi.Input<String> severity;
  /// Set of one or more Service Update statuses. Elements must be one of `available`, `cancelled`, or `expired`.
  final pulumi.Input<String> status;
  /// Type of the update.
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceUpdatesServiceUpdate].
  /// [autoUpdateAfterRecommendedApplyByDate] Whether the update will be applied after `recommendedApplyByDate`.
  /// [description] Description of the update.
  /// [endDate] Date the update will no longer be available.
  /// [engine] Engine this update applies to.
  /// [engineVersion] Engine version this update applies to.
  /// [estimatedUpdateTime] Estimated duration of update.
  /// [name] Name of the update.
  /// [recommendedApplyByDate] Date the update should be applied by.
  /// [releaseDate] Date the update was released.
  /// [severity] Severity of the update. One of `critical`, `important`, `medium`, or `low`.
  /// [status] Set of one or more Service Update statuses. Elements must be one of `available`, `cancelled`, or `expired`.
  /// [type] Type of the update.
  const GetServiceUpdatesServiceUpdate({
    required this.autoUpdateAfterRecommendedApplyByDate,
    required this.description,
    required this.endDate,
    required this.engine,
    required this.engineVersion,
    required this.estimatedUpdateTime,
    required this.name,
    required this.recommendedApplyByDate,
    required this.releaseDate,
    required this.severity,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdateAfterRecommendedApplyByDate': autoUpdateAfterRecommendedApplyByDate,
      'description': description,
      'endDate': endDate,
      'engine': engine,
      'engineVersion': engineVersion,
      'estimatedUpdateTime': estimatedUpdateTime,
      'name': name,
      'recommendedApplyByDate': recommendedApplyByDate,
      'releaseDate': releaseDate,
      'severity': severity,
      'status': status,
      'type': type,
    };
  }

  factory GetServiceUpdatesServiceUpdate.fromMap(Map<String, dynamic> map) {
    return GetServiceUpdatesServiceUpdate(
      autoUpdateAfterRecommendedApplyByDate: pulumi.Input.fromValue(map['autoUpdateAfterRecommendedApplyByDate'] as bool),
      description: pulumi.Input.fromValue(map['description'] as String),
      endDate: pulumi.Input.fromValue(map['endDate'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      estimatedUpdateTime: pulumi.Input.fromValue(map['estimatedUpdateTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      recommendedApplyByDate: pulumi.Input.fromValue(map['recommendedApplyByDate'] as String),
      releaseDate: pulumi.Input.fromValue(map['releaseDate'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
