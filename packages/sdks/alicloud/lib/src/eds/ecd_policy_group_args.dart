// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecd_policy_group_authorize_access_policy_rule.dart';
import 'ecd_policy_group_authorize_security_policy_rule.dart';

/// {@template pulumi_eds_ecd_policy_group_ecd_policy_group_args_doc}
/// The set of arguments for EcdPolicyGroup.
/// {@endtemplate}
/// {@macro pulumi_eds_ecd_policy_group_ecd_policy_group_args_doc}
class EcdPolicyGroupArgs {
  /// The rule of authorize access rule. See `authorize_access_policy_rules` below.
  final pulumi.Input<List<EcdPolicyGroupAuthorizeAccessPolicyRule>>?
  authorizeAccessPolicyRules;

  /// The policy rule. See `authorize_security_policy_rules` below.
  final pulumi.Input<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>>?
  authorizeSecurityPolicyRules;

  /// Whether to enable local camera redirection. Valid values: `on`, `off`.
  final pulumi.Input<String>? cameraRedirect;

  /// The clipboard policy. Valid values: `off`, `read`, `readwrite`.
  final pulumi.Input<String>? clipboard;

  /// The list of domain.
  final pulumi.Input<String>? domainList;

  /// The access of html5. Valid values: `off`, `on`.
  final pulumi.Input<String>? htmlAccess;

  /// The html5 file transfer. Valid values: `all`, `download`, `off`, `upload`.
  final pulumi.Input<String>? htmlFileTransfer;

  /// Local drive redirect policy. Valid values: ` readwrite`, `off`, `read`.
  final pulumi.Input<String>? localDrive;

  /// The name of policy group.
  final pulumi.Input<String>? policyGroupName;

  /// Whether to enable screen recording. Valid values: `off`, `all-time`, `period`.
  final pulumi.Input<String>? recording;

  /// The end time of recording, value: `HH:MM:SS`. This return value is meaningful only when the value of `recording` is `period`.
  final pulumi.Input<String>? recordingEndTime;

  /// The screen recording video retention. Valid values between 30 and 180. This return value is meaningful only when the value of `recording` is `period` or `all-time`.
  final pulumi.Input<int>? recordingExpires;

  /// The fps of recording. Valid values: `2`, `5`, `10`, `15`.
  final pulumi.Input<int>? recordingFps;

  /// The start time of recording, value: `HH:MM:SS`. This return value is meaningful only when the value of `recording` is `period`.
  final pulumi.Input<String>? recordingStartTime;

  /// The usb redirect policy. Valid values: `off`, `on`.
  final pulumi.Input<String>? usbRedirect;

  /// The quality of visual. Valid values: `high`, `lossless`, `low`, `medium`.
  final pulumi.Input<String>? visualQuality;

  /// The watermark policy. Valid values: `off`, `on`.
  final pulumi.Input<String>? watermark;

  /// The watermark transparency. Valid values: `DARK`, `LIGHT`, `MIDDLE`.
  final pulumi.Input<String>? watermarkTransparency;

  /// The type of watemark. Valid values: `EndUserId`, `HostName`.
  final pulumi.Input<String>? watermarkType;

  /// Creates a new [EcdPolicyGroupArgs].
  /// [authorizeAccessPolicyRules] The rule of authorize access rule. See `authorize_access_policy_rules` below.
  /// [authorizeSecurityPolicyRules] The policy rule. See `authorize_security_policy_rules` below.
  /// [cameraRedirect] Whether to enable local camera redirection. Valid values: `on`, `off`.
  /// [clipboard] The clipboard policy. Valid values: `off`, `read`, `readwrite`.
  /// [domainList] The list of domain.
  /// [htmlAccess] The access of html5. Valid values: `off`, `on`.
  /// [htmlFileTransfer] The html5 file transfer. Valid values: `all`, `download`, `off`, `upload`.
  /// [localDrive] Local drive redirect policy. Valid values: ` readwrite`, `off`, `read`.
  /// [policyGroupName] The name of policy group.
  /// [recording] Whether to enable screen recording. Valid values: `off`, `all-time`, `period`.
  /// [recordingEndTime] The end time of recording, value: `HH:MM:SS`. This return value is meaningful only when the value of `recording` is `period`.
  /// [recordingExpires] The screen recording video retention. Valid values between 30 and 180. This return value is meaningful only when the value of `recording` is `period` or `all-time`.
  /// [recordingFps] The fps of recording. Valid values: `2`, `5`, `10`, `15`.
  /// [recordingStartTime] The start time of recording, value: `HH:MM:SS`. This return value is meaningful only when the value of `recording` is `period`.
  /// [usbRedirect] The usb redirect policy. Valid values: `off`, `on`.
  /// [visualQuality] The quality of visual. Valid values: `high`, `lossless`, `low`, `medium`.
  /// [watermark] The watermark policy. Valid values: `off`, `on`.
  /// [watermarkTransparency] The watermark transparency. Valid values: `DARK`, `LIGHT`, `MIDDLE`.
  /// [watermarkType] The type of watemark. Valid values: `EndUserId`, `HostName`.
  EcdPolicyGroupArgs({
    this.authorizeAccessPolicyRules,
    this.authorizeSecurityPolicyRules,
    this.cameraRedirect,
    this.clipboard,
    this.domainList,
    this.htmlAccess,
    this.htmlFileTransfer,
    this.localDrive,
    this.policyGroupName,
    this.recording,
    this.recordingEndTime,
    this.recordingExpires,
    this.recordingFps,
    this.recordingStartTime,
    this.usbRedirect,
    this.visualQuality,
    this.watermark,
    this.watermarkTransparency,
    this.watermarkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizeAccessPolicyRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<EcdPolicyGroupAuthorizeAccessPolicyRule>,
            List<Map<String, dynamic>>
          >(
            authorizeAccessPolicyRules,
            (value) =>
                pulumi.Input.encodeList<
                  EcdPolicyGroupAuthorizeAccessPolicyRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'authorizeSecurityPolicyRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<EcdPolicyGroupAuthorizeSecurityPolicyRule>,
            List<Map<String, dynamic>>
          >(
            authorizeSecurityPolicyRules,
            (value) =>
                pulumi.Input.encodeList<
                  EcdPolicyGroupAuthorizeSecurityPolicyRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cameraRedirect': ?cameraRedirect,
      'clipboard': ?clipboard,
      'domainList': ?domainList,
      'htmlAccess': ?htmlAccess,
      'htmlFileTransfer': ?htmlFileTransfer,
      'localDrive': ?localDrive,
      'policyGroupName': ?policyGroupName,
      'recording': ?recording,
      'recordingEndTime': ?recordingEndTime,
      'recordingExpires': ?recordingExpires,
      'recordingFps': ?recordingFps,
      'recordingStartTime': ?recordingStartTime,
      'usbRedirect': ?usbRedirect,
      'visualQuality': ?visualQuality,
      'watermark': ?watermark,
      'watermarkTransparency': ?watermarkTransparency,
      'watermarkType': ?watermarkType,
    };
  }

  factory EcdPolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return EcdPolicyGroupArgs(
      authorizeAccessPolicyRules: (() {
        final guardedValue = map['authorizeAccessPolicyRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EcdPolicyGroupAuthorizeAccessPolicyRule>(
            guardedValue,
            (value) => EcdPolicyGroupAuthorizeAccessPolicyRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      authorizeSecurityPolicyRules: (() {
        final guardedValue = map['authorizeSecurityPolicyRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EcdPolicyGroupAuthorizeSecurityPolicyRule>(
            guardedValue,
            (value) => EcdPolicyGroupAuthorizeSecurityPolicyRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      cameraRedirect: (() {
        final guardedValue = map['cameraRedirect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clipboard: (() {
        final guardedValue = map['clipboard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainList: (() {
        final guardedValue = map['domainList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      htmlAccess: (() {
        final guardedValue = map['htmlAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      htmlFileTransfer: (() {
        final guardedValue = map['htmlFileTransfer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localDrive: (() {
        final guardedValue = map['localDrive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyGroupName: (() {
        final guardedValue = map['policyGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recording: (() {
        final guardedValue = map['recording'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordingEndTime: (() {
        final guardedValue = map['recordingEndTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recordingExpires: (() {
        final guardedValue = map['recordingExpires'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      recordingFps: (() {
        final guardedValue = map['recordingFps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      recordingStartTime: (() {
        final guardedValue = map['recordingStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      usbRedirect: (() {
        final guardedValue = map['usbRedirect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      visualQuality: (() {
        final guardedValue = map['visualQuality'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      watermark: (() {
        final guardedValue = map['watermark'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      watermarkTransparency: (() {
        final guardedValue = map['watermarkTransparency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      watermarkType: (() {
        final guardedValue = map['watermarkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
