// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_security_setting_dialogflow_v3beta1_args_doc}
/// Arguments for getSecuritySetting.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_security_setting_dialogflow_v3beta1_args_doc}
class GetSecuritySettingDialogflowV3beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> securitySettingId;

  /// Creates a new [GetSecuritySettingDialogflowV3beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [securitySettingId] Required.
  GetSecuritySettingDialogflowV3beta1Args({
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

  factory GetSecuritySettingDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingDialogflowV3beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      securitySettingId: map['securitySettingId'] as String,
    );
  }
}

