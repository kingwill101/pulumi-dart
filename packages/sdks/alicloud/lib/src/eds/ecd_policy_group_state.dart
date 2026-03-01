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
    pulumi.Output<List<EcdPolicyGroupAuthorizeAccessPolicyRule>>? authorizeAccessPolicyRules,
    pulumi.Output<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>>? authorizeSecurityPolicyRules,
    pulumi.Output<String>? cameraRedirect,
    pulumi.Output<String>? clipboard,
    pulumi.Output<String>? domainList,
    pulumi.Output<String>? htmlAccess,
    pulumi.Output<String>? htmlFileTransfer,
    pulumi.Output<String>? localDrive,
    pulumi.Output<String>? policyGroupName,
    pulumi.Output<String>? recording,
    pulumi.Output<String>? recordingEndTime,
    pulumi.Output<int>? recordingExpires,
    pulumi.Output<int>? recordingFps,
    pulumi.Output<String>? recordingStartTime,
    pulumi.Output<String>? status,
    pulumi.Output<String>? usbRedirect,
    pulumi.Output<String>? visualQuality,
    pulumi.Output<String>? watermark,
    pulumi.Output<String>? watermarkTransparency,
    pulumi.Output<String>? watermarkType,
  }) :
      authorizeAccessPolicyRules = pulumi.Input.asOptionalInput<List<EcdPolicyGroupAuthorizeAccessPolicyRule>>(authorizeAccessPolicyRules),
      authorizeSecurityPolicyRules = pulumi.Input.asOptionalInput<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>>(authorizeSecurityPolicyRules),
      cameraRedirect = pulumi.Input.asOptionalInput<String>(cameraRedirect),
      clipboard = pulumi.Input.asOptionalInput<String>(clipboard),
      domainList = pulumi.Input.asOptionalInput<String>(domainList),
      htmlAccess = pulumi.Input.asOptionalInput<String>(htmlAccess),
      htmlFileTransfer = pulumi.Input.asOptionalInput<String>(htmlFileTransfer),
      localDrive = pulumi.Input.asOptionalInput<String>(localDrive),
      policyGroupName = pulumi.Input.asOptionalInput<String>(policyGroupName),
      recording = pulumi.Input.asOptionalInput<String>(recording),
      recordingEndTime = pulumi.Input.asOptionalInput<String>(recordingEndTime),
      recordingExpires = pulumi.Input.asOptionalInput<int>(recordingExpires),
      recordingFps = pulumi.Input.asOptionalInput<int>(recordingFps),
      recordingStartTime = pulumi.Input.asOptionalInput<String>(recordingStartTime),
      status = pulumi.Input.asOptionalInput<String>(status),
      usbRedirect = pulumi.Input.asOptionalInput<String>(usbRedirect),
      visualQuality = pulumi.Input.asOptionalInput<String>(visualQuality),
      watermark = pulumi.Input.asOptionalInput<String>(watermark),
      watermarkTransparency = pulumi.Input.asOptionalInput<String>(watermarkTransparency),
      watermarkType = pulumi.Input.asOptionalInput<String>(watermarkType);

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
      authorizeAccessPolicyRules: map['authorizeAccessPolicyRules'] == null ? null : pulumi.Output.create<List<EcdPolicyGroupAuthorizeAccessPolicyRule>>(pulumi.Input.decodeList<EcdPolicyGroupAuthorizeAccessPolicyRule>(map['authorizeAccessPolicyRules'], (value) => EcdPolicyGroupAuthorizeAccessPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      authorizeSecurityPolicyRules: map['authorizeSecurityPolicyRules'] == null ? null : pulumi.Output.create<List<EcdPolicyGroupAuthorizeSecurityPolicyRule>>(pulumi.Input.decodeList<EcdPolicyGroupAuthorizeSecurityPolicyRule>(map['authorizeSecurityPolicyRules'], (value) => EcdPolicyGroupAuthorizeSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      cameraRedirect: map['cameraRedirect'] == null ? null : pulumi.Output.create<String>(map['cameraRedirect'] as String),
      clipboard: map['clipboard'] == null ? null : pulumi.Output.create<String>(map['clipboard'] as String),
      domainList: map['domainList'] == null ? null : pulumi.Output.create<String>(map['domainList'] as String),
      htmlAccess: map['htmlAccess'] == null ? null : pulumi.Output.create<String>(map['htmlAccess'] as String),
      htmlFileTransfer: map['htmlFileTransfer'] == null ? null : pulumi.Output.create<String>(map['htmlFileTransfer'] as String),
      localDrive: map['localDrive'] == null ? null : pulumi.Output.create<String>(map['localDrive'] as String),
      policyGroupName: map['policyGroupName'] == null ? null : pulumi.Output.create<String>(map['policyGroupName'] as String),
      recording: map['recording'] == null ? null : pulumi.Output.create<String>(map['recording'] as String),
      recordingEndTime: map['recordingEndTime'] == null ? null : pulumi.Output.create<String>(map['recordingEndTime'] as String),
      recordingExpires: map['recordingExpires'] == null ? null : pulumi.Output.create<int>(map['recordingExpires'] as int),
      recordingFps: map['recordingFps'] == null ? null : pulumi.Output.create<int>(map['recordingFps'] as int),
      recordingStartTime: map['recordingStartTime'] == null ? null : pulumi.Output.create<String>(map['recordingStartTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      usbRedirect: map['usbRedirect'] == null ? null : pulumi.Output.create<String>(map['usbRedirect'] as String),
      visualQuality: map['visualQuality'] == null ? null : pulumi.Output.create<String>(map['visualQuality'] as String),
      watermark: map['watermark'] == null ? null : pulumi.Output.create<String>(map['watermark'] as String),
      watermarkTransparency: map['watermarkTransparency'] == null ? null : pulumi.Output.create<String>(map['watermarkTransparency'] as String),
      watermarkType: map['watermarkType'] == null ? null : pulumi.Output.create<String>(map['watermarkType'] as String),
    );
  }
}

