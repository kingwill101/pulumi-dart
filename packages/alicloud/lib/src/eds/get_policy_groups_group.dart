// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_groups_group_authorize_access_policy_rule.dart';
import 'get_policy_groups_group_authorize_security_policy_rule.dart';

class GetPolicyGroupsGroup {
  /// The rule of authorize access rule.
  final List<GetPolicyGroupsGroupAuthorizeAccessPolicyRule> authorizeAccessPolicyRules;
  /// The policy rule.
  final List<GetPolicyGroupsGroupAuthorizeSecurityPolicyRule> authorizeSecurityPolicyRules;
  /// Whether to enable local camera redirection. Valid values: `on`, `off`.
  final String cameraRedirect;
  /// The clipboard policy.
  final String clipboard;
  /// The list of domain.
  final String domainList;
  /// The count of eds.
  final int edsCount;
  /// The access of html5.
  final String htmlAccess;
  /// The html5 file transfer.
  final String htmlFileTransfer;
  /// The ID of the Policy Group.
  final String id;
  /// Local drive redirect policy.
  final String localDrive;
  /// The policy group id.
  final String policyGroupId;
  /// The name of policy group.
  final String policyGroupName;
  /// The type of policy group.
  final String policyGroupType;
  /// Whether to enable screen recording. Valid values: `off`, `alltime`, `period`.
  final String recording;
  /// The end time of recording.
  final String recordingEndTime;
  /// The fps of recording. Valid values: `2`, `5`, `10`, `15`.
  final int recordingFps;
  /// The start time of recording.
  final String recordingStartTime;
  /// The status of policy.
  final String status;
  /// The usb redirect policy.
  final String usbRedirect;
  /// The quality of visual.sae_ecdsae_nameecd_po
  final String visualQuality;
  /// The watermark policy.
  final String watermark;
  /// The watermark transparency.
  final String watermarkTransparency;
  /// The type of watemark.
  final String watermarkType;

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
      'authorizeAccessPolicyRules': pulumi.Input.encodeList<GetPolicyGroupsGroupAuthorizeAccessPolicyRule, Map<String, dynamic>>(authorizeAccessPolicyRules, (value) => value.toMap()),
      'authorizeSecurityPolicyRules': pulumi.Input.encodeList<GetPolicyGroupsGroupAuthorizeSecurityPolicyRule, Map<String, dynamic>>(authorizeSecurityPolicyRules, (value) => value.toMap()),
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
      authorizeAccessPolicyRules: pulumi.Input.decodeList<GetPolicyGroupsGroupAuthorizeAccessPolicyRule>(map['authorizeAccessPolicyRules'], (value) => GetPolicyGroupsGroupAuthorizeAccessPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      authorizeSecurityPolicyRules: pulumi.Input.decodeList<GetPolicyGroupsGroupAuthorizeSecurityPolicyRule>(map['authorizeSecurityPolicyRules'], (value) => GetPolicyGroupsGroupAuthorizeSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      cameraRedirect: map['cameraRedirect'] as String,
      clipboard: map['clipboard'] as String,
      domainList: map['domainList'] as String,
      edsCount: map['edsCount'] as int,
      htmlAccess: map['htmlAccess'] as String,
      htmlFileTransfer: map['htmlFileTransfer'] as String,
      id: map['id'] as String,
      localDrive: map['localDrive'] as String,
      policyGroupId: map['policyGroupId'] as String,
      policyGroupName: map['policyGroupName'] as String,
      policyGroupType: map['policyGroupType'] as String,
      recording: map['recording'] as String,
      recordingEndTime: map['recordingEndTime'] as String,
      recordingFps: map['recordingFps'] as int,
      recordingStartTime: map['recordingStartTime'] as String,
      status: map['status'] as String,
      usbRedirect: map['usbRedirect'] as String,
      visualQuality: map['visualQuality'] as String,
      watermark: map['watermark'] as String,
      watermarkTransparency: map['watermarkTransparency'] as String,
      watermarkType: map['watermarkType'] as String,
    );
  }
}

