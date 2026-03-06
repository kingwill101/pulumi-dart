// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_get_application_groups_get_application_groups_args_doc}
/// Arguments for getApplicationGroups.
/// {@endtemplate}
/// {@macro pulumi_oos_get_application_groups_get_application_groups_args_doc}
class GetApplicationGroupsArgs {
  /// The name of the Application.
  final pulumi.Input<String> applicationName;
  /// The region ID of the deployment.
  final pulumi.Input<String>? deployRegionId;
  /// A list of Application Group IDs. Its element value is same as Application Group Name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Application Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetApplicationGroupsArgs].
  /// [applicationName] The name of the Application.
  /// [deployRegionId] The region ID of the deployment.
  /// [ids] A list of Application Group IDs. Its element value is same as Application Group Name.
  /// [nameRegex] A regex string to filter results by Application Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetApplicationGroupsArgs({
    required this.applicationName,
    this.deployRegionId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'deployRegionId': ?deployRegionId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetApplicationGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupsArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      deployRegionId: (() { final guardedValue = map['deployRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

