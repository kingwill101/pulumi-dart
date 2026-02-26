import 'package:pulumi/pulumi.dart';
import '../user_profile_detail/user_profile_detail.dart';
import '../user_profile_timeouts/user_profile_timeouts.dart';
import 'user_profile_args.dart';

/// Resource for managing an AWS DataZone User Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datazone.UserProfile("example", {
/// userIdentifier: exampleAwsIamUser.arn,
/// domainIdentifier: exampleAwsDatazoneDomain.id,
/// userType: "IAM_USER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datazone.UserProfile("example",
/// user_identifier=example_aws_iam_user["arn"],
/// domain_identifier=example_aws_datazone_domain["id"],
/// user_type="IAM_USER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataZone.UserProfile("example", new()
/// {
/// UserIdentifier = exampleAwsIamUser.Arn,
/// DomainIdentifier = exampleAwsDatazoneDomain.Id,
/// UserType = "IAM_USER",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datazone.NewUserProfile(ctx, "example", &datazone.UserProfileArgs{
/// UserIdentifier:   pulumi.Any(exampleAwsIamUser.Arn),
/// DomainIdentifier: pulumi.Any(exampleAwsDatazoneDomain.Id),
/// UserType:         pulumi.String("IAM_USER"),
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
/// import com.pulumi.aws.datazone.UserProfile;
/// import com.pulumi.aws.datazone.UserProfileArgs;
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
/// .userIdentifier(exampleAwsIamUser.arn())
/// .domainIdentifier(exampleAwsDatazoneDomain.id())
/// .userType("IAM_USER")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datazone:UserProfile
/// properties:
/// userIdentifier: ${exampleAwsIamUser.arn}
/// domainIdentifier: ${exampleAwsDatazoneDomain.id}
/// userType: IAM_USER
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DataZone User Profile using the `user_identifier,domain_identifier,type`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/userProfile:UserProfile example arn:aws:iam::123456789012:user/example,dzd_54nakfrg9k6suo,IAM
/// ```
class UserProfile extends CustomResource {
  /// Details about the user profile.
  late final Output<List<UserProfileDetail>> details;

  /// The domain identifier.
  late final Output<String> domainIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The user profile status.
  late final Output<String> status;
  late final Output<UserProfileTimeouts?> timeouts;

  /// The user profile type.
  late final Output<String> type;

  /// The user identifier.
  ///
  /// The following arguments are optional:
  late final Output<String> userIdentifier;

  /// The user type.
  late final Output<String> userType;

  UserProfile(
    String name, {
    UserProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/userProfile:UserProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.details = Output.createUnknown<List<UserProfileDetail>>();
    this.domainIdentifier = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<UserProfileTimeouts?>();
    this.type = Output.createUnknown<String>();
    this.userIdentifier = Output.createUnknown<String>();
    this.userType = Output.createUnknown<String>();
  }
}
