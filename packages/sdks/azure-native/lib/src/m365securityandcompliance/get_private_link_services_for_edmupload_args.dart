// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_m365securityandcompliance_get_private_link_services_for_edmupload_args_doc}
/// Arguments for getPrivateLinkServicesForEDMUpload.
/// {@endtemplate}
/// {@macro pulumi_m365securityandcompliance_get_private_link_services_for_edmupload_args_doc}
class GetPrivateLinkServicesForEDMUploadArgs {
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service instance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateLinkServicesForEDMUploadArgs].
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  GetPrivateLinkServicesForEDMUploadArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateLinkServicesForEDMUploadArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicesForEDMUploadArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

