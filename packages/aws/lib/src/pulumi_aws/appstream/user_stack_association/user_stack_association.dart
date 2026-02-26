import 'package:pulumi/pulumi.dart';
import 'user_stack_association_args.dart';

/// Manages an AppStream User Stack association.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.appstream.Stack("test", {name: "STACK NAME"});
/// const testUser = new aws.appstream.User("test", {
/// authenticationType: "USERPOOL",
/// userName: "EMAIL",
/// });
/// const testUserStackAssociation = new aws.appstream.UserStackAssociation("test", {
/// authenticationType: testUser.authenticationType,
/// stackName: test.name,
/// userName: testUser.userName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appstream.Stack("test", name="STACK NAME")
/// test_user = aws.appstream.User("test",
/// authentication_type="USERPOOL",
/// user_name="EMAIL")
/// test_user_stack_association = aws.appstream.UserStackAssociation("test",
/// authentication_type=test_user.authentication_type,
/// stack_name=test.name,
/// user_name=test_user.user_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.AppStream.Stack("test", new()
/// {
/// Name = "STACK NAME",
/// });
///
/// var testUser = new Aws.AppStream.User("test", new()
/// {
/// AuthenticationType = "USERPOOL",
/// UserName = "EMAIL",
/// });
///
/// var testUserStackAssociation = new Aws.AppStream.UserStackAssociation("test", new()
/// {
/// AuthenticationType = testUser.AuthenticationType,
/// StackName = test.Name,
/// UserName = testUser.UserName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := appstream.NewStack(ctx, "test", &appstream.StackArgs{
/// Name: pulumi.String("STACK NAME"),
/// })
/// if err != nil {
/// return err
/// }
/// testUser, err := appstream.NewUser(ctx, "test", &appstream.UserArgs{
/// AuthenticationType: pulumi.String("USERPOOL"),
/// UserName:           pulumi.String("EMAIL"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appstream.NewUserStackAssociation(ctx, "test", &appstream.UserStackAssociationArgs{
/// AuthenticationType: testUser.AuthenticationType,
/// StackName:          test.Name,
/// UserName:           testUser.UserName,
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
/// import com.pulumi.aws.appstream.Stack;
/// import com.pulumi.aws.appstream.StackArgs;
/// import com.pulumi.aws.appstream.User;
/// import com.pulumi.aws.appstream.UserArgs;
/// import com.pulumi.aws.appstream.UserStackAssociation;
/// import com.pulumi.aws.appstream.UserStackAssociationArgs;
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
/// var test = new Stack("test", StackArgs.builder()
/// .name("STACK NAME")
/// .build());
///
/// var testUser = new User("testUser", UserArgs.builder()
/// .authenticationType("USERPOOL")
/// .userName("EMAIL")
/// .build());
///
/// var testUserStackAssociation = new UserStackAssociation("testUserStackAssociation", UserStackAssociationArgs.builder()
/// .authenticationType(testUser.authenticationType())
/// .stackName(test.name())
/// .userName(testUser.userName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:appstream:Stack
/// properties:
/// name: STACK NAME
/// testUser:
/// type: aws:appstream:User
/// name: test
/// properties:
/// authenticationType: USERPOOL
/// userName: EMAIL
/// testUserStackAssociation:
/// type: aws:appstream:UserStackAssociation
/// name: test
/// properties:
/// authenticationType: ${testUser.authenticationType}
/// stackName: ${test.name}
/// userName: ${testUser.userName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AppStream User Stack Association using the <span pulumi-lang-nodejs="`userName`" pulumi-lang-dotnet="`UserName`" pulumi-lang-go="`userName`" pulumi-lang-python="`user_name`" pulumi-lang-yaml="`userName`" pulumi-lang-java="`userName`">`user_name`</span>, <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span>, and <span pulumi-lang-nodejs="`stackName`" pulumi-lang-dotnet="`StackName`" pulumi-lang-go="`stackName`" pulumi-lang-python="`stack_name`" pulumi-lang-yaml="`stackName`" pulumi-lang-java="`stackName`">`stack_name`</span>, separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/userStackAssociation:UserStackAssociation example userName/auhtenticationType/stackName
/// ```
class UserStackAssociation extends CustomResource {
  /// Authentication type for the user.
  late final Output<String> authenticationType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether a welcome email is sent to a user after the user is created in the user pool.
  late final Output<bool?> sendEmailNotification;

  /// Name of the stack that is associated with the user.
  late final Output<String> stackName;

  /// Email address of the user who is associated with the stack.
  ///
  /// The following arguments are optional:
  late final Output<String> userName;

  UserStackAssociation(
    String name, {
    UserStackAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/userStackAssociation:UserStackAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authenticationType = registerOutput<String>('authenticationType');
    this.region = registerOutput<String>('region');
    this.sendEmailNotification = registerOutput<bool?>('sendEmailNotification');
    this.stackName = registerOutput<String>('stackName');
    this.userName = registerOutput<String>('userName');
  }
}
