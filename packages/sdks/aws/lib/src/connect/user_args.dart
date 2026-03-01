// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_identity_info.dart';
import 'user_phone_config.dart';

/// {@template pulumi_connect_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_connect_user_user_args_doc}
class UserArgs {
  /// The identifier of the user account in the directory used for identity management. If Amazon Connect cannot access the directory, you can specify this identifier to authenticate users. If you include the identifier, we assume that Amazon Connect cannot access the directory. Otherwise, the identity information is used to authenticate users from your directory. This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an error is returned.
  final pulumi.Input<String>? directoryUserId;
  /// The identifier of the hierarchy group for the user.
  final pulumi.Input<String>? hierarchyGroupId;
  /// A block that contains information about the identity of the user. Documented below.
  final pulumi.Input<UserIdentityInfo>? identityInfo;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;
  /// The user name for the account. For instances not using SAML for identity management, the user name can include up to 20 characters. If you are using SAML for identity management, the user name can include up to 64 characters from `[a-zA-Z0-9_-.\@]+`.
  final pulumi.Input<String>? name;
  /// The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
  final pulumi.Input<String>? password;
  /// A block that contains information about the phone settings for the user. Documented below.
  final pulumi.Input<UserPhoneConfig> phoneConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identifier of the routing profile for the user.
  final pulumi.Input<String> routingProfileId;
  /// A list of identifiers for the security profiles for the user. Specify a minimum of 1 and maximum of 10 security profile ids. For more information, see [Best Practices for Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html) in the Amazon Connect Administrator Guide.
  final pulumi.Input<List<String>> securityProfileIds;
  /// Tags to apply to the user. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserArgs].
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
  UserArgs({
    pulumi.Output<String>? directoryUserId,
    pulumi.Output<String>? hierarchyGroupId,
    pulumi.Output<UserIdentityInfo>? identityInfo,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    required pulumi.Output<UserPhoneConfig> phoneConfig,
    pulumi.Output<String>? region,
    required pulumi.Output<String> routingProfileId,
    required pulumi.Output<List<String>> securityProfileIds,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      directoryUserId = pulumi.Input.asOptionalInput<String>(directoryUserId),
      hierarchyGroupId = pulumi.Input.asOptionalInput<String>(hierarchyGroupId),
      identityInfo = pulumi.Input.asOptionalInput<UserIdentityInfo>(identityInfo),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      phoneConfig = pulumi.Input.asInput<UserPhoneConfig>(phoneConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      routingProfileId = pulumi.Input.asInput<String>(routingProfileId),
      securityProfileIds = pulumi.Input.asInput<List<String>>(securityProfileIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryUserId': ?directoryUserId,
      'hierarchyGroupId': ?hierarchyGroupId,
      'identityInfo': ?pulumi.Input.mapOptionalInputValue<UserIdentityInfo, Map<String, dynamic>>(identityInfo, (value) => value.toMap()),
      'instanceId': instanceId,
      'name': ?name,
      'password': ?password,
      'phoneConfig': pulumi.Input.mapInputValue<UserPhoneConfig, Map<String, dynamic>>(phoneConfig, (value) => value.toMap()),
      'region': ?region,
      'routingProfileId': routingProfileId,
      'securityProfileIds': securityProfileIds,
      'tags': ?tags,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      directoryUserId: map['directoryUserId'] == null ? null : pulumi.Output.create<String>(map['directoryUserId'] as String),
      hierarchyGroupId: map['hierarchyGroupId'] == null ? null : pulumi.Output.create<String>(map['hierarchyGroupId'] as String),
      identityInfo: map['identityInfo'] == null ? null : pulumi.Output.create<UserIdentityInfo>(UserIdentityInfo.fromMap((map['identityInfo'] as Map).cast<String, dynamic>())),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      phoneConfig: pulumi.Output.create<UserPhoneConfig>(UserPhoneConfig.fromMap((map['phoneConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routingProfileId: pulumi.Output.create<String>(map['routingProfileId'] as String),
      securityProfileIds: pulumi.Output.create<List<String>>((map['securityProfileIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

