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
  final pulumi.Input<String>? region;

  /// A specifier for the type of value specified in `single_sign_on_user_value`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final pulumi.Input<String>? singleSignOnUserIdentifier;

  /// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final pulumi.Input<String>? singleSignOnUserValue;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name for the User Profile.
  final pulumi.Input<String> userProfileName;

  /// The user settings. See User Settings below.
  final pulumi.Input<UserProfileUserSettings>? userSettings;

  /// Creates a new [UserProfileArgs].
  /// [domainId] The ID of the associated Domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [singleSignOnUserIdentifier] A specifier for the type of value specified in `single_sign_on_user_value`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  /// [singleSignOnUserValue] The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userProfileName] The name for the User Profile.
  /// [userSettings] The user settings. See User Settings below.
  UserProfileArgs({
    required String domainId,
    String? region,
    String? singleSignOnUserIdentifier,
    String? singleSignOnUserValue,
    Map<String, String>? tags,
    required String userProfileName,
    UserProfileUserSettings? userSettings,
  }) : domainId = pulumi.Input.asInput<String>(domainId),
       region = pulumi.Input.asOptionalInput<String>(region),
       singleSignOnUserIdentifier = pulumi.Input.asOptionalInput<String>(
         singleSignOnUserIdentifier,
       ),
       singleSignOnUserValue = pulumi.Input.asOptionalInput<String>(
         singleSignOnUserValue,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       userProfileName = pulumi.Input.asInput<String>(userProfileName),
       userSettings = pulumi.Input.asOptionalInput<UserProfileUserSettings>(
         userSettings,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'region': ?region,
      'singleSignOnUserIdentifier': ?singleSignOnUserIdentifier,
      'singleSignOnUserValue': ?singleSignOnUserValue,
      'tags': ?tags,
      'userProfileName': userProfileName,
      'userSettings':
          ?pulumi.Input.mapOptionalInputValue<
            UserProfileUserSettings,
            Map<String, dynamic>
          >(userSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileArgs.fromMap(Map<String, dynamic> map) {
    return UserProfileArgs(
      domainId: map['domainId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      singleSignOnUserIdentifier: map['singleSignOnUserIdentifier'] == null
          ? null
          : map['singleSignOnUserIdentifier'] as String,
      singleSignOnUserValue: map['singleSignOnUserValue'] == null
          ? null
          : map['singleSignOnUserValue'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      userProfileName: map['userProfileName'] as String,
      userSettings: map['userSettings'] == null
          ? null
          : UserProfileUserSettings.fromMap(
              (map['userSettings'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
