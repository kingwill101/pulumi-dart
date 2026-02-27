import 'package:pulumi/pulumi.dart';
import '../user_profile_user_settings/user_profile_user_settings.dart';
import 'user_profile_args2.dart';

/// Provides a SageMaker AI User Profile resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `domain_id` (String) SageMaker domain ID.
/// * `user_profile_name` (String) Name of the user profile.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SageMaker AI User Profiles using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/userProfile:UserProfile example arn:aws:sagemaker:us-west-2:123456789012:user-profile/domain-id/profile-name
/// ```
class UserProfile2 extends CustomResource {
  /// The user profile Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// The ID of the associated Domain.
  late final Output<String> domainId;

  /// The ID of the user's profile in the Amazon Elastic File System (EFS) volume.
  late final Output<String> homeEfsFileSystemUid;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A specifier for the type of value specified in `single_sign_on_user_value`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  late final Output<String?> singleSignOnUserIdentifier;

  /// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  late final Output<String?> singleSignOnUserValue;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The name for the User Profile.
  late final Output<String> userProfileName;

  /// The user settings. See User Settings below.
  late final Output<UserProfileUserSettings?> userSettings;

  UserProfile2(
    String name, {
    UserProfileArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/userProfile:UserProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainId = registerOutput<String>('domainId');
    this.homeEfsFileSystemUid = registerOutput<String>('homeEfsFileSystemUid');
    this.region = registerOutput<String>('region');
    this.singleSignOnUserIdentifier =
        registerOutput<String?>('singleSignOnUserIdentifier');
    this.singleSignOnUserValue =
        registerOutput<String?>('singleSignOnUserValue');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userProfileName = registerOutput<String>('userProfileName');
    this.userSettings =
        registerOutput<UserProfileUserSettings?>('userSettings');
  }
}
