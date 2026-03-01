// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edge_get_config_template_args_doc}
/// Arguments for getConfigTemplate.
/// {@endtemplate}
/// {@macro pulumi_edge_get_config_template_args_doc}
class GetConfigTemplateArgs {
  /// The name of the ConfigTemplate
  final pulumi.Input<String> configTemplateName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigTemplateArgs].
  /// [configTemplateName] The name of the ConfigTemplate
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConfigTemplateArgs({
    required pulumi.Output<String> configTemplateName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configTemplateName = pulumi.Input.asInput<String>(configTemplateName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configTemplateName': configTemplateName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigTemplateArgs(
      configTemplateName: pulumi.Output.create<String>(map['configTemplateName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

