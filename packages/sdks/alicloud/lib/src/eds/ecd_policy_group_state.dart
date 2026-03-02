// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecd_policy_group_authorize_access_policy_rule.dart';
import 'ecd_policy_group_authorize_security_policy_rule.dart';

/// Input properties used for looking up and filtering EcdPolicyGroup resources.
class EcdPolicyGroupState {
  /// The rule of authorize access rule. See `authorize_access_policy_rules` below.
  final pulumi.Input<List<EcdPolicyGroupAuthorizeAccessPolicyRule>>? authorizeAccessPolicyRules;
  /// The policy rule. See `authorize_security_policy_rules` below.
  final pulumi.Input<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>>? authorizeSecurityPolicyRules;
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
  /// The status of policy.
  final pulumi.Input<String>? status;
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

  /// Creates a new [EcdPolicyGroupState].
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
  /// [status] The status of policy.
  /// [usbRedirect] The usb redirect policy. Valid values: `off`, `on`.
  /// [visualQuality] The quality of visual. Valid values: `high`, `lossless`, `low`, `medium`.
  /// [watermark] The watermark policy. Valid values: `off`, `on`.
  /// [watermarkTransparency] The watermark transparency. Valid values: `DARK`, `LIGHT`, `MIDDLE`.
  /// [watermarkType] The type of watemark. Valid values: `EndUserId`, `HostName`.
  EcdPolicyGroupState({
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
    this.status,
    this.usbRedirect,
    this.visualQuality,
    this.watermark,
    this.watermarkTransparency,
    this.watermarkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizeAccessPolicyRules': ?pulumi.Input.mapOptionalInputValue<List<EcdPolicyGroupAuthorizeAccessPolicyRule>, List<Map<String, dynamic>>>(authorizeAccessPolicyRules, (value) => pulumi.Input.encodeList<EcdPolicyGroupAuthorizeAccessPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizeSecurityPolicyRules': ?pulumi.Input.mapOptionalInputValue<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>, List<Map<String, dynamic>>>(authorizeSecurityPolicyRules, (value) => pulumi.Input.encodeList<EcdPolicyGroupAuthorizeSecurityPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'status': ?status,
      'usbRedirect': ?usbRedirect,
      'visualQuality': ?visualQuality,
      'watermark': ?watermark,
      'watermarkTransparency': ?watermarkTransparency,
      'watermarkType': ?watermarkType,
    };
  }

  factory EcdPolicyGroupState.fromMap(Map<String, dynamic> map) {
    return EcdPolicyGroupState(
      authorizeAccessPolicyRules: map['authorizeAccessPolicyRules'] == null ? null : (pulumi.Input.decodeList<EcdPolicyGroupAuthorizeAccessPolicyRule>(map['authorizeAccessPolicyRules']!, (value) => EcdPolicyGroupAuthorizeAccessPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authorizeSecurityPolicyRules: map['authorizeSecurityPolicyRules'] == null ? null : (pulumi.Input.decodeList<EcdPolicyGroupAuthorizeSecurityPolicyRule>(map['authorizeSecurityPolicyRules']!, (value) => EcdPolicyGroupAuthorizeSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cameraRedirect: map['cameraRedirect'] == null ? null : (map['cameraRedirect']! as String).input(),
      clipboard: map['clipboard'] == null ? null : (map['clipboard']! as String).input(),
      domainList: map['domainList'] == null ? null : (map['domainList']! as String).input(),
      htmlAccess: map['htmlAccess'] == null ? null : (map['htmlAccess']! as String).input(),
      htmlFileTransfer: map['htmlFileTransfer'] == null ? null : (map['htmlFileTransfer']! as String).input(),
      localDrive: map['localDrive'] == null ? null : (map['localDrive']! as String).input(),
      policyGroupName: map['policyGroupName'] == null ? null : (map['policyGroupName']! as String).input(),
      recording: map['recording'] == null ? null : (map['recording']! as String).input(),
      recordingEndTime: map['recordingEndTime'] == null ? null : (map['recordingEndTime']! as String).input(),
      recordingExpires: map['recordingExpires'] == null ? null : (map['recordingExpires']! as int).input(),
      recordingFps: map['recordingFps'] == null ? null : (map['recordingFps']! as int).input(),
      recordingStartTime: map['recordingStartTime'] == null ? null : (map['recordingStartTime']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      usbRedirect: map['usbRedirect'] == null ? null : (map['usbRedirect']! as String).input(),
      visualQuality: map['visualQuality'] == null ? null : (map['visualQuality']! as String).input(),
      watermark: map['watermark'] == null ? null : (map['watermark']! as String).input(),
      watermarkTransparency: map['watermarkTransparency'] == null ? null : (map['watermarkTransparency']! as String).input(),
      watermarkType: map['watermarkType'] == null ? null : (map['watermarkType']! as String).input(),
    );
  }
}

