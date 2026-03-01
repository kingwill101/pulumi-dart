import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_profile_args.dart';
import 'user_profile_state.dart';
import 'user_profile_user_settings.dart';

/// Provides a SageMaker AI User Profile resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.UserProfile("example", {
///     domainId: test.id,
///     userProfileName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.UserProfile("example",
///     domain_id=test["id"],
///     user_profile_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.UserProfile("example", new()
///     {
///         DomainId = test.Id,
///         UserProfileName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewUserProfile(ctx, "example", &sagemaker.UserProfileArgs{
/// 			DomainId:        pulumi.Any(test.Id),
/// 			UserProfileName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.UserProfile;
/// import com.pulumi.aws.sagemaker.UserProfileArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new UserProfile("example", UserProfileArgs.builder()
///             .domainId(test.id())
///             .userProfileName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:UserProfile
///     properties:
///       domainId: ${test.id}
///       userProfileName: example
/// ```
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
class UserProfile extends pulumi.CustomResource {
  /// The user profile Amazon Resource Name (ARN).
  late final pulumi.Output<String> arn;
  /// The ID of the associated Domain.
  late final pulumi.Output<String> domainId;
  /// The ID of the user's profile in the Amazon Elastic File System (EFS) volume.
  late final pulumi.Output<String> homeEfsFileSystemUid;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A specifier for the type of value specified in `single_sign_on_user_value`. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  late final pulumi.Output<String?> singleSignOnUserIdentifier;
  /// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  late final pulumi.Output<String?> singleSignOnUserValue;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The name for the User Profile.
  late final pulumi.Output<String> userProfileName;
  /// The user settings. See User Settings below.
  late final pulumi.Output<UserProfileUserSettings?> userSettings;

  /// Creates a new [UserProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserProfile]. {@macro pulumi_sagemaker_user_profile_user_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserProfile(
    String name, {
    UserProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/userProfile:UserProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainId = registerOutput<String>('domainId');
    this.homeEfsFileSystemUid = registerOutput<String>('homeEfsFileSystemUid');
    this.region = registerOutput<String>('region');
    this.singleSignOnUserIdentifier = registerOutput<String?>('singleSignOnUserIdentifier');
    this.singleSignOnUserValue = registerOutput<String?>('singleSignOnUserValue');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userProfileName = registerOutput<String>('userProfileName');
    this.userSettings = registerOutput<UserProfileUserSettings?>('userSettings');
  }

  /// Gets an existing [UserProfile] resource's state with the given [name] and [id].
  static UserProfile get(
    String name,
    pulumi.Input<String> id, {
    UserProfileState? state,
  }) {
    return UserProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/userProfile:UserProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainId = registerOutput<String>('domainId');
    this.homeEfsFileSystemUid = registerOutput<String>('homeEfsFileSystemUid');
    this.region = registerOutput<String>('region');
    this.singleSignOnUserIdentifier = registerOutput<String?>('singleSignOnUserIdentifier');
    this.singleSignOnUserValue = registerOutput<String?>('singleSignOnUserValue');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userProfileName = registerOutput<String>('userProfileName');
    this.userSettings = registerOutput<UserProfileUserSettings?>('userSettings');
  }
}
