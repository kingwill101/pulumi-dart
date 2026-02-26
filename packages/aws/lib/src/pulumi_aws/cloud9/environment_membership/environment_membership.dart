import 'package:pulumi/pulumi.dart';
import 'environment_membership_args.dart';

/// Provides an environment member to an AWS Cloud9 development environment.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.cloud9.EnvironmentEC2("test", {
/// instanceType: "t2.micro",
/// name: "some-env",
/// });
/// const testUser = new aws.iam.User("test", {name: "some-user"});
/// const testEnvironmentMembership = new aws.cloud9.EnvironmentMembership("test", {
/// environmentId: test.id,
/// permissions: "read-only",
/// userArn: testUser.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.cloud9.EnvironmentEC2("test",
/// instance_type="t2.micro",
/// name="some-env")
/// test_user = aws.iam.User("test", name="some-user")
/// test_environment_membership = aws.cloud9.EnvironmentMembership("test",
/// environment_id=test.id,
/// permissions="read-only",
/// user_arn=test_user.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Cloud9.EnvironmentEC2("test", new()
/// {
/// InstanceType = "t2.micro",
/// Name = "some-env",
/// });
///
/// var testUser = new Aws.Iam.User("test", new()
/// {
/// Name = "some-user",
/// });
///
/// var testEnvironmentMembership = new Aws.Cloud9.EnvironmentMembership("test", new()
/// {
/// EnvironmentId = test.Id,
/// Permissions = "read-only",
/// UserArn = testUser.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloud9"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := cloud9.NewEnvironmentEC2(ctx, "test", &cloud9.EnvironmentEC2Args{
/// InstanceType: pulumi.String("t2.micro"),
/// Name:         pulumi.String("some-env"),
/// })
/// if err != nil {
/// return err
/// }
/// testUser, err := iam.NewUser(ctx, "test", &iam.UserArgs{
/// Name: pulumi.String("some-user"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloud9.NewEnvironmentMembership(ctx, "test", &cloud9.EnvironmentMembershipArgs{
/// EnvironmentId: test.ID(),
/// Permissions:   pulumi.String("read-only"),
/// UserArn:       testUser.Arn,
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
/// import com.pulumi.aws.cloud9.EnvironmentEC2;
/// import com.pulumi.aws.cloud9.EnvironmentEC2Args;
/// import com.pulumi.aws.iam.User;
/// import com.pulumi.aws.iam.UserArgs;
/// import com.pulumi.aws.cloud9.EnvironmentMembership;
/// import com.pulumi.aws.cloud9.EnvironmentMembershipArgs;
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
/// var test = new EnvironmentEC2("test", EnvironmentEC2Args.builder()
/// .instanceType("t2.micro")
/// .name("some-env")
/// .build());
///
/// var testUser = new User("testUser", UserArgs.builder()
/// .name("some-user")
/// .build());
///
/// var testEnvironmentMembership = new EnvironmentMembership("testEnvironmentMembership", EnvironmentMembershipArgs.builder()
/// .environmentId(test.id())
/// .permissions("read-only")
/// .userArn(testUser.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:cloud9:EnvironmentEC2
/// properties:
/// instanceType: t2.micro
/// name: some-env
/// testUser:
/// type: aws:iam:User
/// name: test
/// properties:
/// name: some-user
/// testEnvironmentMembership:
/// type: aws:cloud9:EnvironmentMembership
/// name: test
/// properties:
/// environmentId: ${test.id}
/// permissions: read-only
/// userArn: ${testUser.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cloud9 environment membership using the `environment-id#user-arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloud9/environmentMembership:EnvironmentMembership test environment-id#user-arn
/// ```
class EnvironmentMembership extends CustomResource {
  /// The ID of the environment that contains the environment member you want to add.
  late final Output<String> environmentId;

  /// The type of environment member permissions you want to associate with this environment member. Allowed values are `read-only` and `read-write` .
  late final Output<String> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the environment member you want to add.
  late final Output<String> userArn;

  /// The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.
  late final Output<String> userId;

  EnvironmentMembership(
    String name, {
    EnvironmentMembershipArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloud9/environmentMembership:EnvironmentMembership',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.environmentId = registerOutput<String>('environmentId');
    this.permissions = registerOutput<String>('permissions');
    this.region = registerOutput<String>('region');
    this.userArn = registerOutput<String>('userArn');
    this.userId = registerOutput<String>('userId');
  }
}
