// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blueprint_get_blueprint_args_doc}
/// Arguments for getBlueprint.
/// {@endtemplate}
/// {@macro pulumi_blueprint_get_blueprint_args_doc}
class GetBlueprintArgs {
  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;
  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;

  /// Creates a new [GetBlueprintArgs].
  /// [blueprintName] Name of the blueprint definition.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  GetBlueprintArgs({
    required this.blueprintName,
    required this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueprintName': blueprintName,
      'resourceScope': resourceScope,
    };
  }

  factory GetBlueprintArgs.fromMap(Map<String, dynamic> map) {
    return GetBlueprintArgs(
      blueprintName: (map['blueprintName'] as String).input(),
      resourceScope: (map['resourceScope'] as String).input(),
    );
  }
}

