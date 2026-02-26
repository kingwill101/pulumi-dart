import 'package:pulumi/pulumi.dart';
import '../user_profile_user_settings/user_profile_user_settings.dart';
import 'user_profile_args2.dart';

/// Provides a SageMaker AI User Profile resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.UserProfile("example", {
/// domainId: test.id,
/// userProfileName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.UserProfile("example",
/// domain_id=test["id"],
/// user_profile_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.UserProfile("example", new()
/// {
/// DomainId = test.Id,
/// UserProfileName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewUserProfile(ctx, "example", &sagemaker.UserProfileArgs{
/// DomainId:        pulumi.Any(test.Id),
/// UserProfileName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new UserProfile("example", UserProfileArgs.builder()
/// .domainId(test.id())
/// .userProfileName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:UserProfile
/// properties:
/// domainId: ${test.id}
/// userProfileName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`domainId`" pulumi-lang-dotnet="`DomainId`" pulumi-lang-go="`domainId`" pulumi-lang-python="`domain_id`" pulumi-lang-yaml="`domainId`" pulumi-lang-java="`domainId`">`domain_id`</span> (String) SageMaker domain ID.
/// * <span pulumi-lang-nodejs="`userProfileName`" pulumi-lang-dotnet="`UserProfileName`" pulumi-lang-go="`userProfileName`" pulumi-lang-python="`user_profile_name`" pulumi-lang-yaml="`userProfileName`" pulumi-lang-java="`userProfileName`">`user_profile_name`</span> (String) Name of the user profile.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SageMaker AI User Profiles using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
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

  /// A specifier for the type of value specified in <span pulumi-lang-nodejs="`singleSignOnUserValue`" pulumi-lang-dotnet="`SingleSignOnUserValue`" pulumi-lang-go="`singleSignOnUserValue`" pulumi-lang-python="`single_sign_on_user_value`" pulumi-lang-yaml="`singleSignOnUserValue`" pulumi-lang-java="`singleSignOnUserValue`">`single_sign_on_user_value`</span>. Currently, the only supported value is `UserName`. If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
  late final Output<String?> singleSignOnUserIdentifier;

  /// The username of the associated AWS Single Sign-On User for this User Profile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
  late final Output<String?> singleSignOnUserValue;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
