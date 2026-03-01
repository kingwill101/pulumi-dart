// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_app_attach_package_args_doc}
/// Arguments for getAppAttachPackage.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_app_attach_package_args_doc}
class GetAppAttachPackageArgs {
  /// The name of the App Attach package
  final pulumi.Input<String> appAttachPackageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppAttachPackageArgs].
  /// [appAttachPackageName] The name of the App Attach package
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAppAttachPackageArgs({
    required pulumi.Output<String> appAttachPackageName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      appAttachPackageName = pulumi.Input.asInput<String>(appAttachPackageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appAttachPackageName': appAttachPackageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppAttachPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetAppAttachPackageArgs(
      appAttachPackageName: pulumi.Output.create<String>(map['appAttachPackageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

