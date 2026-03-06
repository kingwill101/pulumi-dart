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
  const AccessRuleState({
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
      accessGroupName: (() { final guardedValue = map['accessGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessRuleId: (() { final guardedValue = map['accessRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemType: (() { final guardedValue = map['fileSystemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6SourceCidrIp: (() { final guardedValue = map['ipv6SourceCidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rwAccessType: (() { final guardedValue = map['rwAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceCidrIp: (() { final guardedValue = map['sourceCidrIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAccessType: (() { final guardedValue = map['userAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

