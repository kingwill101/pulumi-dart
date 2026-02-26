import 'package:pulumi/pulumi.dart';
import 'user_args.dart';

/// Provides an AppStream user.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.User("example", {
/// authenticationType: "USERPOOL",
/// userName: "EMAIL",
/// firstName: "FIRST NAME",
/// lastName: "LAST NAME",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.User("example",
/// authentication_type="USERPOOL",
/// user_name="EMAIL",
/// first_name="FIRST NAME",
/// last_name="LAST NAME")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppStream.User("example", new()
/// {
/// AuthenticationType = "USERPOOL",
/// UserName = "EMAIL",
/// FirstName = "FIRST NAME",
/// LastName = "LAST NAME",
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
/// _, err := appstream.NewUser(ctx, "example", &appstream.UserArgs{
/// AuthenticationType: pulumi.String("USERPOOL"),
/// UserName:           pulumi.String("EMAIL"),
/// FirstName:          pulumi.String("FIRST NAME"),
/// LastName:           pulumi.String("LAST NAME"),
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
/// import com.pulumi.aws.appstream.User;
/// import com.pulumi.aws.appstream.UserArgs;
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
/// var example = new User("example", UserArgs.builder()
/// .authenticationType("USERPOOL")
/// .userName("EMAIL")
/// .firstName("FIRST NAME")
/// .lastName("LAST NAME")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appstream:User
/// properties:
/// authenticationType: USERPOOL
/// userName: EMAIL
/// firstName: FIRST NAME
/// lastName: LAST NAME
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appstream.User`" pulumi-lang-dotnet="`aws.appstream.User`" pulumi-lang-go="`appstream.User`" pulumi-lang-python="`appstream.User`" pulumi-lang-yaml="`aws.appstream.User`" pulumi-lang-java="`aws.appstream.User`">`aws.appstream.User`</span> using the <span pulumi-lang-nodejs="`userName`" pulumi-lang-dotnet="`UserName`" pulumi-lang-go="`userName`" pulumi-lang-python="`user_name`" pulumi-lang-yaml="`userName`" pulumi-lang-java="`userName`">`user_name`</span> and <span pulumi-lang-nodejs="`authenticationType`" pulumi-lang-dotnet="`AuthenticationType`" pulumi-lang-go="`authenticationType`" pulumi-lang-python="`authentication_type`" pulumi-lang-yaml="`authenticationType`" pulumi-lang-java="`authenticationType`">`authentication_type`</span> separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/user:User example UserName/AuthenticationType
/// ```
class User extends CustomResource {
  /// ARN of the appstream user.
  late final Output<String> arn;

  /// Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  late final Output<String> authenticationType;

  /// Date and time, in UTC and extended RFC 3339 format, when the user was created.
  late final Output<String> createdTime;

  /// Whether the user in the user pool is enabled.
  late final Output<bool?> enabled;

  /// First name, or given name, of the user.
  late final Output<String?> firstName;

  /// Last name, or surname, of the user.
  late final Output<String?> lastName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Send an email notification.
  late final Output<bool?> sendEmailNotification;

  /// Email address of the user.
  ///
  /// The following arguments are optional:
  late final Output<String> userName;

  User(
    String name, {
    UserArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.authenticationType = Output.createUnknown<String>();
    this.createdTime = Output.createUnknown<String>();
    this.enabled = Output.createUnknown<bool?>();
    this.firstName = Output.createUnknown<String?>();
    this.lastName = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.sendEmailNotification = Output.createUnknown<bool?>();
    this.userName = Output.createUnknown<String>();
  }
}
