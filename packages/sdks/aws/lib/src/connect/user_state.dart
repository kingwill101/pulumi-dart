// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_info.dart';
import 'user_phone_config.dart';

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The Amazon Resource Name (ARN) of the user.
  final pulumi.Input<String>? arn;
  /// The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
  final pulumi.Input<String>? directoryUserId;
  /// The identifier of the hierarchy group for the user.
  final pulumi.Input<String>? hierarchyGroupId;
  /// A block that contains information about the identity of the user. Documented below.
  final pulumi.Input<UserIdentityInfo>? identityInfo;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from `[a-zA-Z0-9_-.\@]+`.
  final pulumi.Input<String>? name;
  /// The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
  final pulumi.Input<String>? password;
  /// A block that contains information about the phone settings for the user. Documented below.
  final pulumi.Input<UserPhoneConfig>? phoneConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identifier of the routing profile for the user.
  final pulumi.Input<String>? routingProfileId;
  /// A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  final pulumi.Input<List<String>>? securityProfileIds;
  /// Tags to apply to the user. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The identifier for the user.
  final pulumi.Input<String>? userId;

  /// Creates a new [UserState].
  /// [arn] The Amazon Resource Name (ARN) of the user.
  /// [directoryUserId] The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
  /// [hierarchyGroupId] The identifier of the hierarchy group for the user.
  /// [identityInfo] A block that contains information about the identity of the user. Documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from `[a-zA-Z0-9_-.\@]+`.
  /// [password] The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
  /// [phoneConfig] A block that contains information about the phone settings for the user. Documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routingProfileId] The identifier of the routing profile for the user.
  /// [securityProfileIds] A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  /// [tags] Tags to apply to the user. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userId] The identifier for the user.
  UserState({
    this.arn,
    this.directoryUserId,
    this.hierarchyGroupId,
    this.identityInfo,
    this.instanceId,
    this.name,
    this.password,
    this.phoneConfig,
    this.region,
    this.routingProfileId,
    this.securityProfileIds,
    this.tags,
    this.tagsAll,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'directoryUserId': ?directoryUserId,
      'hierarchyGroupId': ?hierarchyGroupId,
      'identityInfo': ?pulumi.Input.mapOptionalInputValue<UserIdentityInfo, Map<String, dynamic>>(identityInfo, (value) => value.toMap()),
      'instanceId': ?instanceId,
      'name': ?name,
      'password': ?password,
      'phoneConfig': ?pulumi.Input.mapOptionalInputValue<UserPhoneConfig, Map<String, dynamic>>(phoneConfig, (value) => value.toMap()),
      'region': ?region,
      'routingProfileId': ?routingProfileId,
      'securityProfileIds': ?securityProfileIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userId': ?userId,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      directoryUserId: map['directoryUserId'] == null ? null : ((map['directoryUserId'] as String).input()).input(),
      hierarchyGroupId: map['hierarchyGroupId'] == null ? null : ((map['hierarchyGroupId'] as String).input()).input(),
      identityInfo: map['identityInfo'] == null ? null : ((UserIdentityInfo.fromMap((map['identityInfo']! as Map).cast<String, dynamic>())).input()).input(),
      instanceId: map['instanceId'] == null ? null : ((map['instanceId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      password: map['password'] == null ? null : ((map['password'] as String).input()).input(),
      phoneConfig: map['phoneConfig'] == null ? null : ((UserPhoneConfig.fromMap((map['phoneConfig']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      routingProfileId: map['routingProfileId'] == null ? null : ((map['routingProfileId'] as String).input()).input(),
      securityProfileIds: map['securityProfileIds'] == null ? null : (((map['securityProfileIds'] as List).cast<String>()).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      userId: map['userId'] == null ? null : ((map['userId'] as String).input()).input(),
    );
  }
}

