// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_offazure_get_vcenter_controller_args_doc}
/// Arguments for getVcenterController.
/// {@endtemplate}
/// {@macro pulumi_offazure_get_vcenter_controller_args_doc}
class GetVcenterControllerArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Site name
  final pulumi.Input<String> siteName;
  /// VCenters name
  final pulumi.Input<String> vcenterName;

  /// Creates a new [GetVcenterControllerArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [siteName] Site name
  /// [vcenterName] VCenters name
  GetVcenterControllerArgs({
    required String resourceGroupName,
    required String siteName,
    required String vcenterName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asInput<String>(siteName),
      vcenterName = pulumi.Input.asInput<String>(vcenterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'siteName': siteName,
      'vcenterName': vcenterName,
    };
  }

  factory GetVcenterControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetVcenterControllerArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] as String,
      vcenterName: map['vcenterName'] as String,
    );
  }
}

