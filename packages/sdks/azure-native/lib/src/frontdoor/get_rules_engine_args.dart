// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_frontdoor_get_rules_engine_args_doc}
/// Arguments for getRulesEngine.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_get_rules_engine_args_doc}
class GetRulesEngineArgs {
  /// Name of the Front Door which is globally unique.
  final pulumi.Input<String> frontDoorName;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Rules Engine which is unique within the Front Door.
  final pulumi.Input<String> rulesEngineName;

  /// Creates a new [GetRulesEngineArgs].
  /// [frontDoorName] Name of the Front Door which is globally unique.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [rulesEngineName] Name of the Rules Engine which is unique within the Front Door.
  GetRulesEngineArgs({
    required pulumi.Output<String> frontDoorName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> rulesEngineName,
  }) :
      frontDoorName = pulumi.Input.asInput<String>(frontDoorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rulesEngineName = pulumi.Input.asInput<String>(rulesEngineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontDoorName': frontDoorName,
      'resourceGroupName': resourceGroupName,
      'rulesEngineName': rulesEngineName,
    };
  }

  factory GetRulesEngineArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesEngineArgs(
      frontDoorName: pulumi.Output.create<String>(map['frontDoorName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rulesEngineName: pulumi.Output.create<String>(map['rulesEngineName'] as String),
    );
  }
}

