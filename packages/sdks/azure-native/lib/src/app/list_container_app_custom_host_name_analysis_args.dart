// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_list_container_app_custom_host_name_analysis_args_doc}
/// Arguments for listContainerAppCustomHostNameAnalysis.
/// {@endtemplate}
/// {@macro pulumi_app_list_container_app_custom_host_name_analysis_args_doc}
class ListContainerAppCustomHostNameAnalysisArgs {
  /// Name of the Container App.
  final pulumi.Input<String> containerAppName;
  /// Custom hostname.
  final pulumi.Input<String>? customHostname;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListContainerAppCustomHostNameAnalysisArgs].
  /// [containerAppName] Name of the Container App.
  /// [customHostname] Custom hostname.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListContainerAppCustomHostNameAnalysisArgs({
    required pulumi.Output<String> containerAppName,
    pulumi.Output<String>? customHostname,
    required pulumi.Output<String> resourceGroupName,
  }) :
      containerAppName = pulumi.Input.asInput<String>(containerAppName),
      customHostname = pulumi.Input.asOptionalInput<String>(customHostname),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'customHostname': ?customHostname,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListContainerAppCustomHostNameAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return ListContainerAppCustomHostNameAnalysisArgs(
      containerAppName: pulumi.Output.create<String>(map['containerAppName'] as String),
      customHostname: map['customHostname'] == null ? null : pulumi.Output.create<String>(map['customHostname'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

