import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';

/// Resource for managing QuickSight User
///
/// ## Example Usage
///
/// ### Create User With IAM Identity Type Using an IAM Role
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.User("example", {
///     email: "author1@example.com",
///     identityType: "IAM",
///     userRole: "AUTHOR",
///     iamArn: "arn:aws:iam::123456789012:role/AuthorRole",
///     sessionName: "author1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.User("example",
///     email="author1@example.com",
///     identity_type="IAM",
///     user_role="AUTHOR",
///     iam_arn="arn:aws:iam::123456789012:role/AuthorRole",
///     session_name="author1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.User("example", new()
///     {
///         Email = "author1@example.com",
///         IdentityType = "IAM",
///         UserRole = "AUTHOR",
///         IamArn = "arn:aws:iam::123456789012:role/AuthorRole",
///         SessionName = "author1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewUser(ctx, "example", &quicksight.UserArgs{
/// 			Email:        pulumi.String("author1@example.com"),
/// 			IdentityType: pulumi.String("IAM"),
/// 			UserRole:     pulumi.String("AUTHOR"),
/// 			IamArn:       pulumi.String("arn:aws:iam::123456789012:role/AuthorRole"),
/// 			SessionName:  pulumi.String("author1"),
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
/// import com.pulumi.aws.quicksight.User;
/// import com.pulumi.aws.quicksight.UserArgs;
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
///             .email("author1@example.com")
///             .identityType("IAM")
///             .userRole("AUTHOR")
///             .iamArn("arn:aws:iam::123456789012:role/AuthorRole")
///             .sessionName("author1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:User
///     properties:
///       email: author1@example.com
///       identityType: IAM
///       userRole: AUTHOR
///       iamArn: arn:aws:iam::123456789012:role/AuthorRole
///       sessionName: author1
/// ```
///
///
/// ### Create User With IAM Identity Type Using an IAM User
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.User("example", {
///     email: "authorpro1@example.com",
///     identityType: "IAM",
///     userRole: "AUTHOR_PRO",
///     iamArn: "arn:aws:iam::123456789012:user/authorpro1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.User("example",
///     email="authorpro1@example.com",
///     identity_type="IAM",
///     user_role="AUTHOR_PRO",
///     iam_arn="arn:aws:iam::123456789012:user/authorpro1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.User("example", new()
///     {
///         Email = "authorpro1@example.com",
///         IdentityType = "IAM",
///         UserRole = "AUTHOR_PRO",
///         IamArn = "arn:aws:iam::123456789012:user/authorpro1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewUser(ctx, "example", &quicksight.UserArgs{
/// 			Email:        pulumi.String("authorpro1@example.com"),
/// 			IdentityType: pulumi.String("IAM"),
/// 			UserRole:     pulumi.String("AUTHOR_PRO"),
/// 			IamArn:       pulumi.String("arn:aws:iam::123456789012:user/authorpro1"),
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
/// import com.pulumi.aws.quicksight.User;
/// import com.pulumi.aws.quicksight.UserArgs;
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
///             .email("authorpro1@example.com")
///             .identityType("IAM")
///             .userRole("AUTHOR_PRO")
///             .iamArn("arn:aws:iam::123456789012:user/authorpro1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:User
///     properties:
///       email: authorpro1@example.com
///       identityType: IAM
///       userRole: AUTHOR_PRO
///       iamArn: arn:aws:iam::123456789012:user/authorpro1
/// ```
///
///
/// ### Create User With QuickSight Identity Type in Non-Default Namespace
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.quicksight.User("example", {
///     email: "reader1@example.com",
///     identityType: "QUICKSIGHT",
///     userRole: "READER",
///     namespace: "example",
///     userName: "reader1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.quicksight.User("example",
///     email="reader1@example.com",
///     identity_type="QUICKSIGHT",
///     user_role="READER",
///     namespace="example",
///     user_name="reader1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Quicksight.User("example", new()
///     {
///         Email = "reader1@example.com",
///         IdentityType = "QUICKSIGHT",
///         UserRole = "READER",
///         Namespace = "example",
///         UserName = "reader1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := quicksight.NewUser(ctx, "example", &quicksight.UserArgs{
/// 			Email:        pulumi.String("reader1@example.com"),
/// 			IdentityType: pulumi.String("QUICKSIGHT"),
/// 			UserRole:     pulumi.String("READER"),
/// 			Namespace:    pulumi.String("example"),
/// 			UserName:     pulumi.String("reader1"),
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
/// import com.pulumi.aws.quicksight.User;
/// import com.pulumi.aws.quicksight.UserArgs;
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
///             .email("reader1@example.com")
///             .identityType("QUICKSIGHT")
///             .userRole("READER")
///             .namespace("example")
///             .userName("reader1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:quicksight:User
///     properties:
///       email: reader1@example.com
///       identityType: QUICKSIGHT
///       userRole: READER
///       namespace: example
///       userName: reader1
/// ```
///
///
/// ## Import
///
/// You cannot import this resource.
class User extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) for the user.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Email address of the user that you want to register.
  late final pulumi.Output<String> email;

  /// ARN of the IAM user or role that you are registering with Amazon QuickSight. Required only for users with an identity type of `IAM`.
  late final pulumi.Output<String?> iamArn;

  /// Identity type that your Amazon QuickSight account uses to manage the identity of users. Valid values: `IAM`, `QUICKSIGHT`, `IAM_IDENTITY_CENTER`.
  late final pulumi.Output<String> identityType;

  /// The Amazon Quicksight namespace to create the user in. Defaults to `default`.
  late final pulumi.Output<String?> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the IAM session to use when assuming roles that can embed QuickSight dashboards. Only valid for registering users using an assumed IAM role. Additionally, if registering multiple users using the same IAM role, each user needs to have a unique session name.
  late final pulumi.Output<String?> sessionName;

  /// URL the user visits to complete registration and provide a password. Returned only for users with an identity type of `QUICKSIGHT`.
  late final pulumi.Output<String> userInvitationUrl;

  /// Amazon QuickSight user name that you want to create for the user you are registering. Required only for users with an identity type of `QUICKSIGHT`.
  late final pulumi.Output<String> userName;

  /// Amazon QuickSight role for the user. Valid values: `READER`, `AUTHOR`, `ADMIN`, `READER_PRO`, `AUTHOR_PRO`, `ADMIN_PRO`, `RESTRICTED_AUTHOR`, `RESTRICTED_READER`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userRole;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_quicksight_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.email = registerOutput<String>('email');
    this.iamArn = registerOutput<String?>('iamArn');
    this.identityType = registerOutput<String>('identityType');
    this.namespace = registerOutput<String?>('namespace');
    this.region = registerOutput<String>('region');
    this.sessionName = registerOutput<String?>('sessionName');
    this.userInvitationUrl = registerOutput<String>('userInvitationUrl');
    this.userName = registerOutput<String>('userName');
    this.userRole = registerOutput<String>('userRole');
  }
}
