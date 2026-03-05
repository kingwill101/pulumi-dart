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
    required this.containerAppName,
    this.customHostname,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppName': containerAppName,
      'customHostname': ?customHostname,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListContainerAppCustomHostNameAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return ListContainerAppCustomHostNameAnalysisArgs(
      containerAppName: pulumi.Input.fromValue(map['containerAppName'] as String),
      customHostname: (() { final guardedValue = map['customHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

