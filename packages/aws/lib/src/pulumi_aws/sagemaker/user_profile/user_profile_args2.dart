// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_profile_user_settings/user_profile_user_settings.dart';

/// The set of arguments for UserProfile.
class UserProfileArgs2 {
  /// The ID of the associated Domain.
  final Input<String> domainId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A specifier for the type of value specified in `single_sign_on_user_value`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final Input<String>? singleSignOnUserIdentifier;

  /// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final Input<String>? singleSignOnUserValue;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The name for the User Profile.
  final Input<String> userProfileName;

  /// The user settings. See User Settings below.
  final Input<UserProfileUserSettings>? userSettings;

  UserProfileArgs2({
    required this.domainId,
    this.region,
    this.singleSignOnUserIdentifier,
    this.singleSignOnUserValue,
    this.tags,
    required this.userProfileName,
    this.userSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainId'] = domainId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final singleSignOnUserIdentifierValue = singleSignOnUserIdentifier;
    if (singleSignOnUserIdentifierValue != null) {
      map['singleSignOnUserIdentifier'] = singleSignOnUserIdentifierValue;
    }
    final singleSignOnUserValueValue = singleSignOnUserValue;
    if (singleSignOnUserValueValue != null) {
      map['singleSignOnUserValue'] = singleSignOnUserValueValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userProfileName'] = userProfileName;
    final userSettingsValue = userSettings;
    if (userSettingsValue != null) {
      map['userSettings'] = Input.mapOptionalInputValue<UserProfileUserSettings,
          Map<String, dynamic>>(userSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory UserProfileArgs2.fromMap(Map<String, dynamic> map) {
    return UserProfileArgs2(
      domainId: Input.asInput<String>(map['domainId']),
      region: Input.asOptionalInput<String>(map['region']),
      singleSignOnUserIdentifier:
          Input.asOptionalInput<String>(map['singleSignOnUserIdentifier']),
      singleSignOnUserValue:
          Input.asOptionalInput<String>(map['singleSignOnUserValue']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userProfileName: Input.asInput<String>(map['userProfileName']),
      userSettings:
          Input.asOptionalInput<UserProfileUserSettings>(map['userSettings']),
    );
  }
}
