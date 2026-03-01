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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> projectName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      projectName = pulumi.Input.asInput<String>(projectName);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
    );
  }
}

