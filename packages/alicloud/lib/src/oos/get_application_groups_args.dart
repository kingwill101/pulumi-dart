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
  GetApplicationGroupsArgs({
    required String applicationName,
    String? deployRegionId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      deployRegionId = pulumi.Input.asOptionalInput<String>(deployRegionId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      applicationName: map['applicationName'] as String,
      deployRegionId: map['deployRegionId'] == null ? null : map['deployRegionId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

