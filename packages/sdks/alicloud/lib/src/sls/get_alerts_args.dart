// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_alerts_get_alerts_args_doc}
/// Arguments for getAlerts.
/// {@endtemplate}
/// {@macro pulumi_sls_get_alerts_get_alerts_args_doc}
class GetAlertsArgs {
  /// A list of Alert IDs. The value is formulated as `<project_name>:<alert_name>`.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Project Name
  final pulumi.Input<String> projectName;

  /// Creates a new [GetAlertsArgs].
  /// [ids] A list of Alert IDs. The value is formulated as `<project_name>:<alert_name>`.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [projectName] Project Name
  GetAlertsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'projectName': projectName,
    };
  }

  factory GetAlertsArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      projectName: (map['projectName'] as String).input(),
    );
  }
}

