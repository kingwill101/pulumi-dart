// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sls_get_alerts_get_alerts_args_doc}
/// Arguments for getAlerts.
/// {@endtemplate}
/// {@macro pulumi_sls_get_alerts_get_alerts_args_doc}
class GetAlertsArgs {
  /// A list of Alert IDs. The value is formulated as `&lt;project_name&gt;:&lt;alert_name&gt;`.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Project Name
  final pulumi.Input<String> projectName;

  /// Creates a new [GetAlertsArgs].
  /// [ids] A list of Alert IDs. The value is formulated as `&lt;project_name&gt;:&lt;alert_name&gt;`.
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
    );
  }
}

