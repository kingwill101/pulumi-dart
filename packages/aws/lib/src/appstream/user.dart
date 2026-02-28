import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';

/// Provides an AppStream user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appstream.User("example", {
///     authenticationType: "USERPOOL",
///     userName: "EMAIL",
///     firstName: "FIRST NAME",
///     lastName: "LAST NAME",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appstream.User("example",
///     authentication_type="USERPOOL",
///     user_name="EMAIL",
///     first_name="FIRST NAME",
///     last_name="LAST NAME")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppStream.User("example", new()
///     {
///         AuthenticationType = "USERPOOL",
///         UserName = "EMAIL",
///         FirstName = "FIRST NAME",
///         LastName = "LAST NAME",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appstream.NewUser(ctx, "example", &appstream.UserArgs{
/// 			AuthenticationType: pulumi.String("USERPOOL"),
/// 			UserName:           pulumi.String("EMAIL"),
/// 			FirstName:          pulumi.String("FIRST NAME"),
/// 			LastName:           pulumi.String("LAST NAME"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new User("example", UserArgs.builder()
///             .authenticationType("USERPOOL")
///             .userName("EMAIL")
///             .firstName("FIRST NAME")
///             .lastName("LAST NAME")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appstream:User
///     properties:
///       authenticationType: USERPOOL
///       userName: EMAIL
///       firstName: FIRST NAME
///       lastName: LAST NAME
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.User` using the `user_name` and `authentication_type` separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/user:User example UserName/AuthenticationType
/// ```
class User extends pulumi.CustomResource {
  /// ARN of the appstream user.
  late final pulumi.Output<String> arn;

  /// Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  late final pulumi.Output<String> authenticationType;

  /// Date and time, in UTC and extended RFC 3339 format, when the user was created.
  late final pulumi.Output<String> createdTime;

  /// Whether the user in the user pool is enabled.
  late final pulumi.Output<bool?> enabled;

  /// First name, or given name, of the user.
  late final pulumi.Output<String?> firstName;

  /// Last name, or surname, of the user.
  late final pulumi.Output<String?> lastName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Send an email notification.
  late final pulumi.Output<bool?> sendEmailNotification;

  /// Email address of the user.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_appstream_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.createdTime = registerOutput<String>('createdTime');
    this.enabled = registerOutput<bool?>('enabled');
    this.firstName = registerOutput<String?>('firstName');
    this.lastName = registerOutput<String?>('lastName');
    this.region = registerOutput<String>('region');
    this.sendEmailNotification = registerOutput<bool?>('sendEmailNotification');
    this.userName = registerOutput<String>('userName');
  }
}
