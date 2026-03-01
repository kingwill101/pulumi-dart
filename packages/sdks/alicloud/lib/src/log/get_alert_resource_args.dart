// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_get_alert_resource_get_alert_resource_args_doc}
/// Arguments for getAlertResource.
/// {@endtemplate}
/// {@macro pulumi_log_get_alert_resource_get_alert_resource_args_doc}
class GetAlertResourceArgs {
  /// The lang of alert center resource when type is user.
  final pulumi.Input<String>? lang;
  /// The project of alert resource when type is project.
  final pulumi.Input<String>? project;
  /// The type of alert resources, must be user or project, 'user' for init aliyuncloud account's alert center resource, including project named sls-alert-{uid}-{region} and some dashboards; 'project' for init project's alert resource, including logstore named internal-alert-history and alert dashboard.
  final pulumi.Input<String> type;

  /// Creates a new [GetAlertResourceArgs].
  /// [lang] The lang of alert center resource when type is user.
  /// [project] The project of alert resource when type is project.
  /// [type] The type of alert resources, must be user or project, 'user' for init aliyuncloud account's alert center resource, including project named sls-alert-{uid}-{region} and some dashboards; 'project' for init project's alert resource, including logstore named internal-alert-history and alert dashboard.
  GetAlertResourceArgs({
    pulumi.Output<String>? lang,
    pulumi.Output<String>? project,
    required pulumi.Output<String> type,
  }) :
      lang = pulumi.Input.asOptionalInput<String>(lang),
      project = pulumi.Input.asOptionalInput<String>(project),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang': ?lang,
      'project': ?project,
      'type': type,
    };
  }

  factory GetAlertResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertResourceArgs(
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

