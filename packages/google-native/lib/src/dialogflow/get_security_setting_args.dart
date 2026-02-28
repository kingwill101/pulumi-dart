// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3_get_security_setting_args_doc}
/// Arguments for getSecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_get_security_setting_args_doc}
class GetSecuritySettingArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securitySettingId;

  /// Creates a new [GetSecuritySettingArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [securitySettingId] Required.
  GetSecuritySettingArgs({
    required String location,
    String? project,
    required String securitySettingId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      securitySettingId = pulumi.Input.asInput<String>(securitySettingId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'securitySettingId': securitySettingId,
    };
  }

  factory GetSecuritySettingArgs.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      securitySettingId: map['securitySettingId'] as String,
    );
  }
}

