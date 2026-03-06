// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'publish_metric_action.dart';

/// Definition of ActionDefinition
class ActionDefinition {
  /// Property publishMetricAction
  final pulumi.Input<PublishMetricAction>? publishMetricAction;

  /// Creates a new [ActionDefinition].
  /// [publishMetricAction] Property publishMetricAction
  const ActionDefinition({
    this.publishMetricAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMetricAction': ?pulumi.Input.mapOptionalInputValue<PublishMetricAction, Map<String, dynamic>>(publishMetricAction, (value) => value.toMap()),
    };
  }

  factory ActionDefinition.fromMap(Map<String, dynamic> map) {
    return ActionDefinition(
      publishMetricAction: (() { final guardedValue = map['publishMetricAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublishMetricAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

