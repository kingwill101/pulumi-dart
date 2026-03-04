// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_get_deploy_groups_get_deploy_groups_args_doc}
/// Arguments for getDeployGroups.
/// {@endtemplate}
/// {@macro pulumi_edas_get_deploy_groups_get_deploy_groups_args_doc}
class GetDeployGroupsArgs {
  /// ID of the EDAS application.
  final pulumi.Input<String> appId;

  /// A regex string to filter results by the deploy group name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDeployGroupsArgs].
  /// [appId] ID of the EDAS application.
  /// [nameRegex] A regex string to filter results by the deploy group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDeployGroupsArgs({required this.appId, this.nameRegex, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetDeployGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDeployGroupsArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
