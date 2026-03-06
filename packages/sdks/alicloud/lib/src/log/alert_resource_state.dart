// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlertResource resources.
class AlertResourceState {
  /// The lang of alert center resource when type is user.
  final pulumi.Input<String>? lang;
  /// The project of alert resource when type is project.
  final pulumi.Input<String>? project;
  /// The type of alert resources, must be user or project, 'user' for init aliyuncloud account's alert center resource, including project named sls-alert-{uid}-{region} and some dashboards; 'project' for init project's alert resource, including logstore named internal-alert-history and alert dashboard.
  final pulumi.Input<String>? type;

  /// Creates a new [AlertResourceState].
  /// [lang] The lang of alert center resource when type is user.
  /// [project] The project of alert resource when type is project.
  /// [type] The type of alert resources, must be user or project, 'user' for init aliyuncloud account's alert center resource, including project named sls-alert-{uid}-{region} and some dashboards; 'project' for init project's alert resource, including logstore named internal-alert-history and alert dashboard.
  const AlertResourceState({
    this.lang,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang': ?lang,
      'project': ?project,
      'type': ?type,
    };
  }

  factory AlertResourceState.fromMap(Map<String, dynamic> map) {
    return AlertResourceState(
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

