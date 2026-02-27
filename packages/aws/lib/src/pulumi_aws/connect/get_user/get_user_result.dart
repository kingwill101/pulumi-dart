// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_user_identity_info/get_user_identity_info.dart';
import '../get_user_phone_config/get_user_phone_config.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The Amazon Resource Name (ARN) of the User.
  final String arn;

  /// The identifier of the user account in the directory used for identity management.
  final String directoryUserId;

  /// The identifier of the hierarchy group for the user.
  final String hierarchyGroupId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A block that contains information about the identity of the user. Documented below.
  final List<GetUserIdentityInfo> identityInfos;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final String instanceId;
  final String name;

  /// A block that contains information about the phone settings for the user. Documented below.
  final List<GetUserPhoneConfig> phoneConfigs;
  final String region;

  /// The identifier of the routing profile for the user.
  final String routingProfileId;

  /// A list of identifiers for the security profiles for the user.
  final List<String> securityProfileIds;

  /// A map of tags to assign to the User.
  final Map<String, String> tags;
  final String userId;

  GetUserResult({
    required this.arn,
    required this.directoryUserId,
    required this.hierarchyGroupId,
    required this.id,
    required this.identityInfos,
    required this.instanceId,
    required this.name,
    required this.phoneConfigs,
    required this.region,
    required this.routingProfileId,
    required this.securityProfileIds,
    required this.tags,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['directoryUserId'] = directoryUserId;
    map['hierarchyGroupId'] = hierarchyGroupId;
    map['id'] = id;
    map['identityInfos'] =
        pulumi.Input.encodeList<GetUserIdentityInfo, Map<String, dynamic>>(
            identityInfos, (value) => value.toMap());
    map['instanceId'] = instanceId;
    map['name'] = name;
    map['phoneConfigs'] =
        pulumi.Input.encodeList<GetUserPhoneConfig, Map<String, dynamic>>(
            phoneConfigs, (value) => value.toMap());
    map['region'] = region;
    map['routingProfileId'] = routingProfileId;
    map['securityProfileIds'] = securityProfileIds;
    map['tags'] = tags;
    map['userId'] = userId;
    return map;
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      arn: map['arn'] as String,
      directoryUserId: map['directoryUserId'] as String,
      hierarchyGroupId: map['hierarchyGroupId'] as String,
      id: map['id'] as String,
      identityInfos: pulumi.Input.decodeList<GetUserIdentityInfo>(
          map['identityInfos'],
          (value) => GetUserIdentityInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      phoneConfigs: pulumi.Input.decodeList<GetUserPhoneConfig>(
          map['phoneConfigs'],
          (value) => GetUserPhoneConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      routingProfileId: map['routingProfileId'] as String,
      securityProfileIds: (map['securityProfileIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      userId: map['userId'] as String,
    );
  }
}
