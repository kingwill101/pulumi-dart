// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'publish_metric_action_response.dart';

/// Definition of ActionDefinition
class ActionDefinitionResponse {
  /// Property publishMetricAction
  final pulumi.Input<PublishMetricActionResponse>? publishMetricAction;

  /// Creates a new [ActionDefinitionResponse].
  /// [publishMetricAction] Property publishMetricAction
  ActionDefinitionResponse({
    this.publishMetricAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMetricAction': ?pulumi.Input.mapOptionalInputValue<PublishMetricActionResponse, Map<String, dynamic>>(publishMetricAction, (value) => value.toMap()),
    };
  }

  factory ActionDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ActionDefinitionResponse(
      publishMetricAction: map['publishMetricAction'] == null ? null : (PublishMetricActionResponse.fromMap((map['publishMetricAction'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

