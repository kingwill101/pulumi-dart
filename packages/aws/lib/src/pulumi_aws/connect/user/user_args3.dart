// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_identity_info/user_identity_info.dart';
import '../user_phone_config/user_phone_config.dart';

/// The set of arguments for User.
class UserArgs3 {
  /// The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
  final Input<String>? directoryUserId;

  /// The identifier of the hierarchy group for the user.
  final Input<String>? hierarchyGroupId;

  /// A block that contains information about the identity of the user. Documented below.
  final Input<UserIdentityInfo>? identityInfo;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from `[a-zA-Z0-9_-.\@]+`.
  final Input<String>? name;

  /// The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
  final Input<String>? password;

  /// A block that contains information about the phone settings for the user. Documented below.
  final Input<UserPhoneConfig> phoneConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The identifier of the routing profile for the user.
  final Input<String> routingProfileId;

  /// A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  final Input<List<String>> securityProfileIds;

  /// Tags to apply to the user. If configured with a provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  UserArgs3({
    this.directoryUserId,
    this.hierarchyGroupId,
    this.identityInfo,
    required this.instanceId,
    this.name,
    this.password,
    required this.phoneConfig,
    this.region,
    required this.routingProfileId,
    required this.securityProfileIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final directoryUserIdValue = directoryUserId;
    if (directoryUserIdValue != null) {
      map['directoryUserId'] = directoryUserIdValue;
    }
    final hierarchyGroupIdValue = hierarchyGroupId;
    if (hierarchyGroupIdValue != null) {
      map['hierarchyGroupId'] = hierarchyGroupIdValue;
    }
    final identityInfoValue = identityInfo;
    if (identityInfoValue != null) {
      map['identityInfo'] =
          Input.mapOptionalInputValue<UserIdentityInfo, Map<String, dynamic>>(
              identityInfoValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    map['phoneConfig'] =
        Input.mapInputValue<UserPhoneConfig, Map<String, dynamic>>(
            phoneConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routingProfileId'] = routingProfileId;
    map['securityProfileIds'] = securityProfileIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory UserArgs3.fromMap(Map<String, dynamic> map) {
    return UserArgs3(
      directoryUserId: Input.asOptionalInput<String>(map['directoryUserId']),
      hierarchyGroupId: Input.asOptionalInput<String>(map['hierarchyGroupId']),
      identityInfo:
          Input.asOptionalInput<UserIdentityInfo>(map['identityInfo']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      password: Input.asOptionalInput<String>(map['password']),
      phoneConfig: Input.asInput<UserPhoneConfig>(map['phoneConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      routingProfileId: Input.asInput<String>(map['routingProfileId']),
      securityProfileIds:
          Input.asInput<List<String>>(map['securityProfileIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
