// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_user_settings.dart';

/// Input properties used for looking up and filtering UserProfile resources.
class UserProfileState {
  /// The user profile Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// The ID of the associated Domain.
  final pulumi.Input<String>? domainId;
  /// The ID of the user's profile in the Amazon Elastic File System (EFS) volume.
  final pulumi.Input<String>? homeEfsFileSystemUid;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A specifier for the type of value specified in `single_sign_on_user_value`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final pulumi.Input<String>? singleSignOnUserIdentifier;
  /// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  final pulumi.Input<String>? singleSignOnUserValue;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The name for the User Profile.
  final pulumi.Input<String>? userProfileName;
  /// The user settings. See User Settings below.
  final pulumi.Input<UserProfileUserSettings>? userSettings;

  /// Creates a new [UserProfileState].
  /// [arn] The user profile Amazon Resource Name (ARN).
  /// [domainId] The ID of the associated Domain.
  /// [homeEfsFileSystemUid] The ID of the user's profile in the Amazon Elastic File System (EFS) volume.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [singleSignOnUserIdentifier] A specifier for the type of value specified in `single_sign_on_user_value`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  /// [singleSignOnUserValue] The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userProfileName] The name for the User Profile.
  /// [userSettings] The user settings. See User Settings below.
  UserProfileState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? homeEfsFileSystemUid,
    pulumi.Output<String>? region,
    pulumi.Output<String>? singleSignOnUserIdentifier,
    pulumi.Output<String>? singleSignOnUserValue,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userProfileName,
    pulumi.Output<UserProfileUserSettings>? userSettings,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      homeEfsFileSystemUid = pulumi.Input.asOptionalInput<String>(homeEfsFileSystemUid),
      region = pulumi.Input.asOptionalInput<String>(region),
      singleSignOnUserIdentifier = pulumi.Input.asOptionalInput<String>(singleSignOnUserIdentifier),
      singleSignOnUserValue = pulumi.Input.asOptionalInput<String>(singleSignOnUserValue),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userProfileName = pulumi.Input.asOptionalInput<String>(userProfileName),
      userSettings = pulumi.Input.asOptionalInput<UserProfileUserSettings>(userSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domainId': ?domainId,
      'homeEfsFileSystemUid': ?homeEfsFileSystemUid,
      'region': ?region,
      'singleSignOnUserIdentifier': ?singleSignOnUserIdentifier,
      'singleSignOnUserValue': ?singleSignOnUserValue,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userProfileName': ?userProfileName,
      'userSettings': ?pulumi.Input.mapOptionalInputValue<UserProfileUserSettings, Map<String, dynamic>>(userSettings, (value) => value.toMap()),
    };
  }

  factory UserProfileState.fromMap(Map<String, dynamic> map) {
    return UserProfileState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      homeEfsFileSystemUid: map['homeEfsFileSystemUid'] == null ? null : pulumi.Output.create<String>(map['homeEfsFileSystemUid'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      singleSignOnUserIdentifier: map['singleSignOnUserIdentifier'] == null ? null : pulumi.Output.create<String>(map['singleSignOnUserIdentifier'] as String),
      singleSignOnUserValue: map['singleSignOnUserValue'] == null ? null : pulumi.Output.create<String>(map['singleSignOnUserValue'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userProfileName: map['userProfileName'] == null ? null : pulumi.Output.create<String>(map['userProfileName'] as String),
      userSettings: map['userSettings'] == null ? null : pulumi.Output.create<UserProfileUserSettings>(UserProfileUserSettings.fromMap((map['userSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

