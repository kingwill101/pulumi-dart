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
    pulumi.Output<String>? accessGroupName,
    pulumi.Output<String>? accessRuleId,
    pulumi.Output<String>? fileSystemType,
    pulumi.Output<String>? ipv6SourceCidrIp,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? rwAccessType,
    pulumi.Output<String>? sourceCidrIp,
    pulumi.Output<String>? userAccessType,
  }) :
      accessGroupName = pulumi.Input.asOptionalInput<String>(accessGroupName),
      accessRuleId = pulumi.Input.asOptionalInput<String>(accessRuleId),
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      ipv6SourceCidrIp = pulumi.Input.asOptionalInput<String>(ipv6SourceCidrIp),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      rwAccessType = pulumi.Input.asOptionalInput<String>(rwAccessType),
      sourceCidrIp = pulumi.Input.asOptionalInput<String>(sourceCidrIp),
      userAccessType = pulumi.Input.asOptionalInput<String>(userAccessType);

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
      accessGroupName: map['accessGroupName'] == null ? null : pulumi.Output.create<String>(map['accessGroupName'] as String),
      accessRuleId: map['accessRuleId'] == null ? null : pulumi.Output.create<String>(map['accessRuleId'] as String),
      fileSystemType: map['fileSystemType'] == null ? null : pulumi.Output.create<String>(map['fileSystemType'] as String),
      ipv6SourceCidrIp: map['ipv6SourceCidrIp'] == null ? null : pulumi.Output.create<String>(map['ipv6SourceCidrIp'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      rwAccessType: map['rwAccessType'] == null ? null : pulumi.Output.create<String>(map['rwAccessType'] as String),
      sourceCidrIp: map['sourceCidrIp'] == null ? null : pulumi.Output.create<String>(map['sourceCidrIp'] as String),
      userAccessType: map['userAccessType'] == null ? null : pulumi.Output.create<String>(map['userAccessType'] as String),
    );
  }
}

