// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessRule resources.
class AccessRuleState {
  /// AccessGroupName.
  final pulumi.Input<String>? accessGroupName;
  /// The first ID of the resource.
  final pulumi.Input<String>? accessRuleId;
  /// filesystem type. include standard, extreme.
  final pulumi.Input<String>? fileSystemType;
  /// Ipv6SourceCidrIp.
  final pulumi.Input<String>? ipv6SourceCidrIp;
  /// Priority.
  final pulumi.Input<int>? priority;
  /// (Available since v1.256.0) The region ID.
  final pulumi.Input<String>? regionId;
  /// RWAccess.
  final pulumi.Input<String>? rwAccessType;
  /// SourceCidrIp.
  final pulumi.Input<String>? sourceCidrIp;
  /// UserAccess.
  final pulumi.Input<String>? userAccessType;

  /// Creates a new [AccessRuleState].
  /// [accessGroupName] AccessGroupName.
  /// [accessRuleId] The first ID of the resource.
  /// [fileSystemType] filesystem type. include standard, extreme.
  /// [ipv6SourceCidrIp] Ipv6SourceCidrIp.
  /// [priority] Priority.
  /// [regionId] (Available since v1.256.0) The region ID.
  /// [rwAccessType] RWAccess.
  /// [sourceCidrIp] SourceCidrIp.
  /// [userAccessType] UserAccess.
  AccessRuleState({
    this.accessGroupName,
    this.accessRuleId,
    this.fileSystemType,
    this.ipv6SourceCidrIp,
    this.priority,
    this.regionId,
    this.rwAccessType,
    this.sourceCidrIp,
    this.userAccessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': ?accessGroupName,
      'accessRuleId': ?accessRuleId,
      'fileSystemType': ?fileSystemType,
      'ipv6SourceCidrIp': ?ipv6SourceCidrIp,
      'priority': ?priority,
      'regionId': ?regionId,
      'rwAccessType': ?rwAccessType,
      'sourceCidrIp': ?sourceCidrIp,
      'userAccessType': ?userAccessType,
    };
  }

  factory AccessRuleState.fromMap(Map<String, dynamic> map) {
    return AccessRuleState(
      accessGroupName: map['accessGroupName'] == null ? null : (map['accessGroupName'] as String).input(),
      accessRuleId: map['accessRuleId'] == null ? null : (map['accessRuleId'] as String).input(),
      fileSystemType: map['fileSystemType'] == null ? null : (map['fileSystemType'] as String).input(),
      ipv6SourceCidrIp: map['ipv6SourceCidrIp'] == null ? null : (map['ipv6SourceCidrIp'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      rwAccessType: map['rwAccessType'] == null ? null : (map['rwAccessType'] as String).input(),
      sourceCidrIp: map['sourceCidrIp'] == null ? null : (map['sourceCidrIp'] as String).input(),
      userAccessType: map['userAccessType'] == null ? null : (map['userAccessType'] as String).input(),
    );
  }
}

