// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_alert_resource_alert_resource_args_doc}
/// The set of arguments for AlertResource.
/// {@endtemplate}
/// {@macro pulumi_log_alert_resource_alert_resource_args_doc}
class AlertResourceArgs {
  /// The lang of alert center resource when type is user.
  final pulumi.Input<String>? lang;

  /// The project of alert resource when type is project.
  final pulumi.Input<String>? project;

  /// The type of alert resources, must be user or project, 'user' for init aliyuncloud account's alert center resource, including project named sls-alert-{uid}-{region} and some dashboards; 'project' for init project's alert resource, including logstore named internal-alert-history and alert dashboard.
  final pulumi.Input<String> type;

  /// Creates a new [AlertResourceArgs].
  /// [lang] The lang of alert center resource when type is user.
  /// [project] The project of alert resource when type is project.
  /// [type] The type of alert resources, must be user or project, 'user' for init aliyuncloud account's alert center resource, including project named sls-alert-{uid}-{region} and some dashboards; 'project' for init project's alert resource, including logstore named internal-alert-history and alert dashboard.
  AlertResourceArgs({this.lang, this.project, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'lang': ?lang, 'project': ?project, 'type': type};
  }

  factory AlertResourceArgs.fromMap(Map<String, dynamic> map) {
    return AlertResourceArgs(
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
