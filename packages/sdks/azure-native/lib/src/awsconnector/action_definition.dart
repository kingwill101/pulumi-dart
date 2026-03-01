// ignore_for_file: unused_element, unnecessary_cast

import 'publish_metric_action.dart';

/// Definition of ActionDefinition
class ActionDefinition {
  /// Property publishMetricAction
  final PublishMetricAction? publishMetricAction;

  /// Creates a new [ActionDefinition].
  /// [publishMetricAction] Property publishMetricAction
  ActionDefinition({
    this.publishMetricAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMetricAction': ?publishMetricAction == null ? null : publishMetricAction!.toMap(),
    };
  }

  factory ActionDefinition.fromMap(Map<String, dynamic> map) {
    return ActionDefinition(
      publishMetricAction: map['publishMetricAction'] == null ? null : PublishMetricAction.fromMap((map['publishMetricAction'] as Map).cast<String, dynamic>()),
    );
  }
}

