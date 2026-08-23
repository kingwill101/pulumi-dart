import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Manages an AWS WorkMail User.
///
/// This resource registers the user with WorkMail on create so the mailbox is enabled and ready for use. This results in the accumulation of costs, for more details, see [pricing](https://aws.amazon.com/workmail/pricing/).
/// On destroy, it deregisters the user before deletion.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workmail.Organization("example", {
///     organizationAlias: "example-org",
///     deleteDirectory: true,
/// });
/// const exampleUser = new aws.workmail.User("example", {
///     organizationId: example.organizationId,
///     name: "example-user",
///     displayName: "Example User",
///     email: "example-user@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workmail.Organization("example",
///     organization_alias="example-org",
///     delete_directory=True)
/// example_user = aws.workmail.User("example",
///     organization_id=example.organization_id,
///     name="example-user",
///     display_name="Example User",
///     email="example-user@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WorkMail.Organization("example", new()
///     {
///         OrganizationAlias = "example-org",
///         DeleteDirectory = true,
///     });
///
///     var exampleUser = new Aws.WorkMail.User("example", new()
///     {
///         OrganizationId = example.OrganizationId,
///         Name = "example-user",
///         DisplayName = "Example User",
///         Email = "example-user@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := workmail.NewOrganization(ctx, "example", &workmail.OrganizationArgs{
/// 			OrganizationAlias: pulumi.String("example-org"),
/// 			DeleteDirectory:   pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workmail.NewUser(ctx, "example", &workmail.UserArgs{
/// 			OrganizationId: example.OrganizationId,
/// 			Name:           pulumi.String("example-user"),
/// 			DisplayName:    pulumi.String("Example User"),
/// 			Email:          pulumi.String("example-user@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_workmail_organization" "example" {
///   organization_alias = "example-org"
///   delete_directory   = true
/// }
/// resource "aws_workmail_user" "example" {
///   organization_id = aws_workmail_organization.example.organization_id
///   name            = "example-user"
///   display_name    = "Example User"
///   email           = "example-user@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workmail.Organization;
/// import com.pulumi.aws.workmail.OrganizationArgs;
/// import com.pulumi.aws.workmail.User;
/// import com.pulumi.aws.workmail.UserArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Organization("example", OrganizationArgs.builder()
///             .organizationAlias("example-org")
///             .deleteDirectory(true)
///             .build());
///
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .organizationId(example.organizationId())
///             .name("example-user")
///             .displayName("Example User")
///             .email("example-user@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workmail:Organization
///     properties:
///       organizationAlias: example-org
///       deleteDirectory: true
///   exampleUser:
///     type: aws:workmail:User
///     name: example
///     properties:
///       organizationId: ${example.organizationId}
///       name: example-user
///       displayName: Example User
///       email: example-user@example.com
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `organizationId` - Identifier of the WorkMail organization.
/// * `userId` - Identifier of the user.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import WorkMail User using `organization_id,user_id`. For example:
///
/// ```sh
/// $ pulumi import aws:workmail/user:User example m-1234567890abcdef1234567890abcdef,12345678-1234-1234-1234-123456789012
/// ```
class User extends pulumi.CustomResource {
  /// City where the user is located.
  late final pulumi.Output<String?> city;
  /// Company associated with the user.
  late final pulumi.Output<String?> company;
  /// Country where the user is located.
  late final pulumi.Output<String?> country;
  /// Department associated with the user.
  late final pulumi.Output<String?> department;
  /// Timestamp when the user was disabled from WorkMail use.
  late final pulumi.Output<String> disabledDate;
  /// Display name of the user.
  late final pulumi.Output<String> displayName;
  /// Primary email address used to register the user with WorkMail. Changing this value forces replacement.
  late final pulumi.Output<String> email;
  /// Timestamp when the user was enabled for WorkMail use.
  late final pulumi.Output<String> enabledDate;
  /// First name of the user.
  late final pulumi.Output<String?> firstName;
  /// Whether to hide the user from the global address list. Defaults to `false`.
  late final pulumi.Output<bool> hiddenFromGlobalAddressList;
  /// Identity store ID from IAM Identity Center associated with the user.
  late final pulumi.Output<String> identityProviderIdentityStoreId;
  /// User ID from IAM Identity Center associated with the user.
  late final pulumi.Output<String?> identityProviderUserId;
  /// Initials of the user.
  late final pulumi.Output<String?> initials;
  /// Job title of the user.
  late final pulumi.Output<String?> jobTitle;
  /// Last name of the user.
  late final pulumi.Output<String?> lastName;
  /// Timestamp when the mailbox was removed for the user.
  late final pulumi.Output<String> mailboxDeprovisionedDate;
  /// Timestamp when the mailbox was created for the user.
  late final pulumi.Output<String> mailboxProvisionedDate;
  /// Username of the user.
  late final pulumi.Output<String> name;
  /// Office where the user is located.
  late final pulumi.Output<String?> office;
  /// Identifier of the WorkMail organization where the user is managed.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> organizationId;
  /// Password to set for the user.
  late final pulumi.Output<String?> password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current WorkMail state of the user.
  late final pulumi.Output<String> state;
  /// Street address of the user.
  late final pulumi.Output<String?> street;
  /// Telephone number of the user.
  late final pulumi.Output<String?> telephone;
  /// Identifier of the user.
  late final pulumi.Output<String> userId;
  /// Role assigned to the user. Valid values are `USER`, `REMOTE_USER`, `RESOURCE`, and `SYSTEM_USER`.
  late final pulumi.Output<String> userRole;
  /// ZIP or postal code of the user.
  late final pulumi.Output<String?> zipCode;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_workmail_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    city = registerOutput<String?>('city');
    company = registerOutput<String?>('company');
    country = registerOutput<String?>('country');
    department = registerOutput<String?>('department');
    disabledDate = registerOutput<String>('disabledDate');
    displayName = registerOutput<String>('displayName');
    email = registerOutput<String>('email');
    enabledDate = registerOutput<String>('enabledDate');
    firstName = registerOutput<String?>('firstName');
    hiddenFromGlobalAddressList = registerOutput<bool>('hiddenFromGlobalAddressList');
    identityProviderIdentityStoreId = registerOutput<String>('identityProviderIdentityStoreId');
    identityProviderUserId = registerOutput<String?>('identityProviderUserId');
    initials = registerOutput<String?>('initials');
    jobTitle = registerOutput<String?>('jobTitle');
    lastName = registerOutput<String?>('lastName');
    mailboxDeprovisionedDate = registerOutput<String>('mailboxDeprovisionedDate');
    mailboxProvisionedDate = registerOutput<String>('mailboxProvisionedDate');
    this.name = registerOutput<String>('name');
    office = registerOutput<String?>('office');
    organizationId = registerOutput<String>('organizationId');
    password = registerOutput<String?>('password');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    street = registerOutput<String?>('street');
    telephone = registerOutput<String?>('telephone');
    userId = registerOutput<String>('userId');
    userRole = registerOutput<String>('userRole');
    zipCode = registerOutput<String?>('zipCode');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workmail/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    city = registerOutput<String?>('city');
    company = registerOutput<String?>('company');
    country = registerOutput<String?>('country');
    department = registerOutput<String?>('department');
    disabledDate = registerOutput<String>('disabledDate');
    displayName = registerOutput<String>('displayName');
    email = registerOutput<String>('email');
    enabledDate = registerOutput<String>('enabledDate');
    firstName = registerOutput<String?>('firstName');
    hiddenFromGlobalAddressList = registerOutput<bool>('hiddenFromGlobalAddressList');
    identityProviderIdentityStoreId = registerOutput<String>('identityProviderIdentityStoreId');
    identityProviderUserId = registerOutput<String?>('identityProviderUserId');
    initials = registerOutput<String?>('initials');
    jobTitle = registerOutput<String?>('jobTitle');
    lastName = registerOutput<String?>('lastName');
    mailboxDeprovisionedDate = registerOutput<String>('mailboxDeprovisionedDate');
    mailboxProvisionedDate = registerOutput<String>('mailboxProvisionedDate');
    this.name = registerOutput<String>('name');
    office = registerOutput<String?>('office');
    organizationId = registerOutput<String>('organizationId');
    password = registerOutput<String?>('password');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    street = registerOutput<String?>('street');
    telephone = registerOutput<String?>('telephone');
    userId = registerOutput<String>('userId');
    userRole = registerOutput<String>('userRole');
    zipCode = registerOutput<String?>('zipCode');
  }
}
