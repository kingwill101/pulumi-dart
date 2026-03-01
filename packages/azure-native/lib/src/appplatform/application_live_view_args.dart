// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_application_live_view_args_doc}
/// The set of arguments for ApplicationLiveView.
/// {@endtemplate}
/// {@macro pulumi_appplatform_application_live_view_args_doc}
class ApplicationLiveViewArgs {
  /// The name of Application Live View.
  final pulumi.Input<String>? applicationLiveViewName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Service resource.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ApplicationLiveViewArgs].
  /// [applicationLiveViewName] The name of Application Live View.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serviceName] The name of the Service resource.
  ApplicationLiveViewArgs({
    String? applicationLiveViewName,
    required String resourceGroupName,
    required String serviceName,
  }) :
      applicationLiveViewName = pulumi.Input.asOptionalInput<String>(applicationLiveViewName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLiveViewName': ?applicationLiveViewName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ApplicationLiveViewArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationLiveViewArgs(
      applicationLiveViewName: map['applicationLiveViewName'] == null ? null : map['applicationLiveViewName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

