// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extension_action_point_action.dart';

class ExtensionActionPoint {
  /// An action defines the tasks the extension performs during the AppConfig workflow. Detailed below.
  final List<ExtensionActionPointAction> actions;
  /// The point at which to perform the defined actions. Valid points are `PRE_CREATE_HOSTED_CONFIGURATION_VERSION`, `PRE_START_DEPLOYMENT`, `ON_DEPLOYMENT_START`, `ON_DEPLOYMENT_STEP`, `ON_DEPLOYMENT_BAKING`, `ON_DEPLOYMENT_COMPLETE`, `ON_DEPLOYMENT_ROLLED_BACK`.
  final String point;

  /// Creates a new [ExtensionActionPoint].
  /// [actions] An action defines the tasks the extension performs during the AppConfig workflow. Detailed below.
  /// [point] The point at which to perform the defined actions. Valid points are `PRE_CREATE_HOSTED_CONFIGURATION_VERSION`, `PRE_START_DEPLOYMENT`, `ON_DEPLOYMENT_START`, `ON_DEPLOYMENT_STEP`, `ON_DEPLOYMENT_BAKING`, `ON_DEPLOYMENT_COMPLETE`, `ON_DEPLOYMENT_ROLLED_BACK`.
  ExtensionActionPoint({
    required this.actions,
    required this.point,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<ExtensionActionPointAction, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'point': point,
    };
  }

  factory ExtensionActionPoint.fromMap(Map<String, dynamic> map) {
    return ExtensionActionPoint(
      actions: pulumi.Input.decodeList<ExtensionActionPointAction>(map['actions'], (value) => ExtensionActionPointAction.fromMap((value as Map).cast<String, dynamic>())),
      point: map['point'] as String,
    );
  }
}

