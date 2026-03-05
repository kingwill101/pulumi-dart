// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_groups_group_authorize_access_policy_rule.dart';
import 'get_policy_groups_group_authorize_security_policy_rule.dart';

class GetPolicyGroupsGroup {
  /// The rule of authorize access rule.
  final pulumi.Input<List<GetPolicyGroupsGroupAuthorizeAccessPolicyRule>> authorizeAccessPolicyRules;
  /// The policy rule.
  final pulumi.Input<List<GetPolicyGroupsGroupAuthorizeSecurityPolicyRule>> authorizeSecurityPolicyRules;
  /// Whether to enable local camera redirection. Valid values: `on`, `off`.
  final pulumi.Input<String> cameraRedirect;
  /// The clipboard policy.
  final pulumi.Input<String> clipboard;
  /// The list of domain.
  final pulumi.Input<String> domainList;
  /// The count of eds.
  final pulumi.Input<int> edsCount;
  /// The access of html5.
  final pulumi.Input<String> htmlAccess;
  /// The html5 file transfer.
  final pulumi.Input<String> htmlFileTransfer;
  /// The ID of the Policy Group.
  final pulumi.Input<String> id;
  /// Local drive redirect policy.
  final pulumi.Input<String> localDrive;
  /// The policy group id.
  final pulumi.Input<String> policyGroupId;
  /// The name of policy group.
  final pulumi.Input<String> policyGroupName;
  /// The type of policy group.
  final pulumi.Input<String> policyGroupType;
  /// Whether to enable screen recording. Valid values: `off`, `alltime`, `period`.
  final pulumi.Input<String> recording;
  /// The end time of recording.
  final pulumi.Input<String> recordingEndTime;
  /// The fps of recording. Valid values: `2`, `5`, `10`, `15`.
  final pulumi.Input<int> recordingFps;
  /// The start time of recording.
  final pulumi.Input<String> recordingStartTime;
  /// The status of policy.
  final pulumi.Input<String> status;
  /// The usb redirect policy.
  final pulumi.Input<String> usbRedirect;
  /// The quality of visual.sae_ecdsae_nameecd_po
  final pulumi.Input<String> visualQuality;
  /// The watermark policy.
  final pulumi.Input<String> watermark;
  /// The watermark transparency.
  final pulumi.Input<String> watermarkTransparency;
  /// The type of watemark.
  final pulumi.Input<String> watermarkType;

  /// Creates a new [GetPolicyGroupsGroup].
  /// [authorizeAccessPolicyRules] The rule of authorize access rule.
  /// [authorizeSecurityPolicyRules] The policy rule.
  /// [cameraRedirect] Whether to enable local camera redirection. Valid values: `on`, `off`.
  /// [clipboard] The clipboard policy.
  /// [domainList] The list of domain.
  /// [edsCount] The count of eds.
  /// [htmlAccess] The access of html5.
  /// [htmlFileTransfer] The html5 file transfer.
  /// [id] The ID of the Policy Group.
  /// [localDrive] Local drive redirect policy.
  /// [policyGroupId] The policy group id.
  /// [policyGroupName] The name of policy group.
  /// [policyGroupType] The type of policy group.
  /// [recording] Whether to enable screen recording. Valid values: `off`, `alltime`, `period`.
  /// [recordingEndTime] The end time of recording.
  /// [recordingFps] The fps of recording. Valid values: `2`, `5`, `10`, `15`.
  /// [recordingStartTime] The start time of recording.
  /// [status] The status of policy.
  /// [usbRedirect] The usb redirect policy.
  /// [visualQuality] The quality of visual.sae_ecdsae_nameecd_po
  /// [watermark] The watermark policy.
  /// [watermarkTransparency] The watermark transparency.
  /// [watermarkType] The type of watemark.
  GetPolicyGroupsGroup({
    required this.authorizeAccessPolicyRules,
    required this.authorizeSecurityPolicyRules,
    required this.cameraRedirect,
    required this.clipboard,
    required this.domainList,
    required this.edsCount,
    required this.htmlAccess,
    required this.htmlFileTransfer,
    required this.id,
    required this.localDrive,
    required this.policyGroupId,
    required this.policyGroupName,
    required this.policyGroupType,
    required this.recording,
    required this.recordingEndTime,
    required this.recordingFps,
    required this.recordingStartTime,
    required this.status,
    required this.usbRedirect,
    required this.visualQuality,
    required this.watermark,
    required this.watermarkTransparency,
    required this.watermarkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizeAccessPolicyRules': pulumi.Input.mapInputValue<List<GetPolicyGroupsGroupAuthorizeAccessPolicyRule>, List<Map<String, dynamic>>>(authorizeAccessPolicyRules, (value) => pulumi.Input.encodeList<GetPolicyGroupsGroupAuthorizeAccessPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizeSecurityPolicyRules': pulumi.Input.mapInputValue<List<GetPolicyGroupsGroupAuthorizeSecurityPolicyRule>, List<Map<String, dynamic>>>(authorizeSecurityPolicyRules, (value) => pulumi.Input.encodeList<GetPolicyGroupsGroupAuthorizeSecurityPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cameraRedirect': cameraRedirect,
      'clipboard': clipboard,
      'domainList': domainList,
      'edsCount': edsCount,
      'htmlAccess': htmlAccess,
      'htmlFileTransfer': htmlFileTransfer,
      'id': id,
      'localDrive': localDrive,
      'policyGroupId': policyGroupId,
      'policyGroupName': policyGroupName,
      'policyGroupType': policyGroupType,
      'recording': recording,
      'recordingEndTime': recordingEndTime,
      'recordingFps': recordingFps,
      'recordingStartTime': recordingStartTime,
      'status': status,
      'usbRedirect': usbRedirect,
      'visualQuality': visualQuality,
      'watermark': watermark,
      'watermarkTransparency': watermarkTransparency,
      'watermarkType': watermarkType,
    };
  }

  factory GetPolicyGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetPolicyGroupsGroup(
      authorizeAccessPolicyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyGroupsGroupAuthorizeAccessPolicyRule>(map['authorizeAccessPolicyRules']!, (value) => GetPolicyGroupsGroupAuthorizeAccessPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      authorizeSecurityPolicyRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyGroupsGroupAuthorizeSecurityPolicyRule>(map['authorizeSecurityPolicyRules']!, (value) => GetPolicyGroupsGroupAuthorizeSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      cameraRedirect: pulumi.Input.fromValue(map['cameraRedirect'] as String),
      clipboard: pulumi.Input.fromValue(map['clipboard'] as String),
      domainList: pulumi.Input.fromValue(map['domainList'] as String),
      edsCount: pulumi.Input.fromValue(map['edsCount'] as int),
      htmlAccess: pulumi.Input.fromValue(map['htmlAccess'] as String),
      htmlFileTransfer: pulumi.Input.fromValue(map['htmlFileTransfer'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      localDrive: pulumi.Input.fromValue(map['localDrive'] as String),
      policyGroupId: pulumi.Input.fromValue(map['policyGroupId'] as String),
      policyGroupName: pulumi.Input.fromValue(map['policyGroupName'] as String),
      policyGroupType: pulumi.Input.fromValue(map['policyGroupType'] as String),
      recording: pulumi.Input.fromValue(map['recording'] as String),
      recordingEndTime: pulumi.Input.fromValue(map['recordingEndTime'] as String),
      recordingFps: pulumi.Input.fromValue(map['recordingFps'] as int),
      recordingStartTime: pulumi.Input.fromValue(map['recordingStartTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      usbRedirect: pulumi.Input.fromValue(map['usbRedirect'] as String),
      visualQuality: pulumi.Input.fromValue(map['visualQuality'] as String),
      watermark: pulumi.Input.fromValue(map['watermark'] as String),
      watermarkTransparency: pulumi.Input.fromValue(map['watermarkTransparency'] as String),
      watermarkType: pulumi.Input.fromValue(map['watermarkType'] as String),
    );
  }
}

