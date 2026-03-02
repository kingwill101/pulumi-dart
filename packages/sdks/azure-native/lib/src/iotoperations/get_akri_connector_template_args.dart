// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_akri_connector_template_args_doc}
/// Arguments for getAkriConnectorTemplate.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_akri_connector_template_args_doc}
class GetAkriConnectorTemplateArgs {
  /// Name of AkriConnectorTemplate resource.
  final pulumi.Input<String> akriConnectorTemplateName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAkriConnectorTemplateArgs].
  /// [akriConnectorTemplateName] Name of AkriConnectorTemplate resource.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAkriConnectorTemplateArgs({
    required this.akriConnectorTemplateName,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'akriConnectorTemplateName': akriConnectorTemplateName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAkriConnectorTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetAkriConnectorTemplateArgs(
      akriConnectorTemplateName: (map['akriConnectorTemplateName'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

