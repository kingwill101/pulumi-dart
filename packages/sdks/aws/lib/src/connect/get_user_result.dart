// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_identity_info.dart';
import 'get_user_phone_config.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// ARN of the User.
  final String? arn;
  /// The identifier of the user account in the directory used for identity management.
  final String? directoryUserId;
  /// The identifier of the hierarchy group for the user.
  final String? hierarchyGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A block that contains information about the identity of the user. Documented below.
  final List<GetUserIdentityInfo>? identityInfos;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final String? instanceId;
  final String? name;
  /// A block that contains information about the phone settings for the user. Documented below.
  final List<GetUserPhoneConfig>? phoneConfigs;
  final String? region;
  /// The identifier of the routing profile for the user.
  final String? routingProfileId;
  /// A list of identifiers for the security profiles for the user.
  final List<String>? securityProfileIds;
  /// A map of tags to assign to the User.
  final Map<String, String>? tags;
  final String? userId;

  /// Creates a new [GetUserResult].
  /// [arn] ARN of the User.
  /// [directoryUserId] The identifier of the user account in the directory used for identity management.
  /// [hierarchyGroupId] The identifier of the hierarchy group for the user.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityInfos] A block that contains information about the identity of the user. Documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Optional.
  /// [phoneConfigs] A block that contains information about the phone settings for the user. Documented below.
  /// [region] Optional.
  /// [routingProfileId] The identifier of the routing profile for the user.
  /// [securityProfileIds] A list of identifiers for the security profiles for the user.
  /// [tags] A map of tags to assign to the User.
  /// [userId] Optional.
  const GetUserResult({
    this.arn,
    this.directoryUserId,
    this.hierarchyGroupId,
    this.id,
    this.identityInfos,
    this.instanceId,
    this.name,
    this.phoneConfigs,
    this.region,
    this.routingProfileId,
    this.securityProfileIds,
    this.tags,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'directoryUserId': ?directoryUserId,
      'hierarchyGroupId': ?hierarchyGroupId,
      'id': ?id,
      'identityInfos': ?(() { final guardedValue = identityInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserIdentityInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'instanceId': ?instanceId,
      'name': ?name,
      'phoneConfigs': ?(() { final guardedValue = phoneConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPhoneConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'routingProfileId': ?routingProfileId,
      'securityProfileIds': ?securityProfileIds,
      'tags': ?tags,
      'userId': ?userId,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      directoryUserId: (() { final guardedValue = map['directoryUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hierarchyGroupId: (() { final guardedValue = map['hierarchyGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityInfos: (() { final guardedValue = map['identityInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserIdentityInfo>(guardedValue, (value) => GetUserIdentityInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      phoneConfigs: (() { final guardedValue = map['phoneConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPhoneConfig>(guardedValue, (value) => GetUserPhoneConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingProfileId: (() { final guardedValue = map['routingProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityProfileIds: (() { final guardedValue = map['securityProfileIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
