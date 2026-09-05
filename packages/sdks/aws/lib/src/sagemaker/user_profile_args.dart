// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings.dart';

/// {@template pulumi_sagemaker_user_profile_user_profile_args_doc}
/// The set of arguments for UserProfile.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_user_profile_user_profile_args_doc}
class UserProfileArgs {
  /// The ID of the associated Domain.
  final pulumi.Input<String> domainId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A specifier for the type of value specified in `singleSignOnUserValue`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final pulumi.Input<String?>? singleSignOnUserIdentifier;
  /// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final pulumi.Input<String?>? singleSignOnUserValue;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name for the User Profile.
  final pulumi.Input<String> userProfileName;
  /// The user settings. See User Settings below.
  final pulumi.Input<UserProfileUserSettings?>? userSettings;

  /// Creates a new [UserProfileArgs].
  /// [domainId] The ID of the associated Domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [singleSignOnUserIdentifier] A specifier for the type of value specified in `singleSignOnUserValue`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  /// [singleSignOnUserValue] The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userProfileName] The name for the User Profile.
  /// [userSettings] The user settings. See User Settings below.
  const UserProfileArgs({
    required this.domainId,
    this.region,
    this.singleSignOnUserIdentifier,
    this.singleSignOnUserValue,
    this.tags,
    required this.userProfileName,
    this.userSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'region': ?region,
      'singleSignOnUserIdentifier': ?singleSignOnUserIdentifier,
      'singleSignOnUserValue': ?singleSignOnUserValue,
      'tags': ?tags,
      'userProfileName': userProfileName,
      'userSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettings, Map<String, dynamic>>(userSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileArgs.fromMap(Map<String, dynamic> map) {
    return UserProfileArgs(
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSignOnUserIdentifier: (() { final guardedValue = map['singleSignOnUserIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singleSignOnUserValue: (() { final guardedValue = map['singleSignOnUserValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userProfileName: pulumi.Input.fromValue(map['userProfileName'] as String),
      userSettings: (() { final guardedValue = map['userSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserProfileUserSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
