import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// Manages a user in an AWS Directory Service directory.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// The following example assumes an existing Directory Service directory with Directory Service Data access enabled.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservicedata.User("example", {
///     directoryId: "d-1234567890",
///     samAccountName: "exampleuser",
///     emailAddress: "exampleuser@example.com",
///     givenName: "Example",
///     surname: "User",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservicedata.User("example",
///     directory_id="d-1234567890",
///     sam_account_name="exampleuser",
///     email_address="exampleuser@example.com",
///     given_name="Example",
///     surname="User")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryServiceData.User("example", new()
///     {
///         DirectoryId = "d-1234567890",
///         SamAccountName = "exampleuser",
///         EmailAddress = "exampleuser@example.com",
///         GivenName = "Example",
///         Surname = "User",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservicedata"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directoryservicedata.NewUser(ctx, "example", &directoryservicedata.UserArgs{
/// 			DirectoryId:    pulumi.String("d-1234567890"),
/// 			SamAccountName: pulumi.String("exampleuser"),
/// 			EmailAddress:   pulumi.String("exampleuser@example.com"),
/// 			GivenName:      pulumi.String("Example"),
/// 			Surname:        pulumi.String("User"),
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
/// resource "aws_directoryservicedata_user" "example" {
///   directory_id     = "d-1234567890"
///   sam_account_name = "exampleuser"
///   email_address    = "exampleuser@example.com"
///   given_name       = "Example"
///   surname          = "User"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservicedata.User;
/// import com.pulumi.aws.directoryservicedata.UserArgs;
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
///         var example = new User("example", UserArgs.builder()
///             .directoryId("d-1234567890")
///             .samAccountName("exampleuser")
///             .emailAddress("exampleuser@example.com")
///             .givenName("Example")
///             .surname("User")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directoryservicedata:User
///     properties:
///       directoryId: d-1234567890
///       samAccountName: exampleuser
///       emailAddress: exampleuser@example.com
///       givenName: Example
///       surname: User
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `directoryId` (String) ID of the Directory Service directory where the user is managed.
/// * `samAccountName` (String) SAM account name of the user.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Directory Service Data User using the directory ID and SAM account name separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservicedata/user:User example d-1234567890,exampleuser
/// ```
class User extends pulumi.CustomResource {
  /// ID of the Directory that's associated with the user.
  late final pulumi.Output<String> directoryId;
  /// Distinguished name of the user.
  late final pulumi.Output<String> distinguishedName;
  /// Email address of the user.
  late final pulumi.Output<String?> emailAddress;
  /// Whether the user is active.
  late final pulumi.Output<bool> enabled;
  /// First name of the user.
  late final pulumi.Output<String?> givenName;
  /// Realm of the user.
  late final pulumi.Output<String> realm;
  /// Region where the user is managed. Defaults to the provider region.
  late final pulumi.Output<String> region;
  /// SAM account name of the user. Must contain only word characters, hyphens, and periods.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> samAccountName;
  /// Unique Security identifier (SID) of the user.
  late final pulumi.Output<String> sid;
  /// Last name of the user.
  late final pulumi.Output<String?> surname;
  /// User principal name of the user.
  late final pulumi.Output<String> userPrincipalName;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_directoryservicedata_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservicedata/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    directoryId = registerOutput<String>('directoryId');
    distinguishedName = registerOutput<String>('distinguishedName');
    emailAddress = registerOutput<String?>('emailAddress');
    enabled = registerOutput<bool>('enabled');
    givenName = registerOutput<String?>('givenName');
    realm = registerOutput<String>('realm');
    region = registerOutput<String>('region');
    samAccountName = registerOutput<String>('samAccountName');
    sid = registerOutput<String>('sid');
    surname = registerOutput<String?>('surname');
    userPrincipalName = registerOutput<String>('userPrincipalName');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservicedata/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    directoryId = registerOutput<String>('directoryId');
    distinguishedName = registerOutput<String>('distinguishedName');
    emailAddress = registerOutput<String?>('emailAddress');
    enabled = registerOutput<bool>('enabled');
    givenName = registerOutput<String?>('givenName');
    realm = registerOutput<String>('realm');
    region = registerOutput<String>('region');
    samAccountName = registerOutput<String>('samAccountName');
    sid = registerOutput<String>('sid');
    surname = registerOutput<String?>('surname');
    userPrincipalName = registerOutput<String>('userPrincipalName');
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'aws:directoryservicedata/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    directoryId = registerOutput<String>('directoryId');
    distinguishedName = registerOutput<String>('distinguishedName');
    emailAddress = registerOutput<String?>('emailAddress');
    enabled = registerOutput<bool>('enabled');
    givenName = registerOutput<String?>('givenName');
    realm = registerOutput<String>('realm');
    region = registerOutput<String>('region');
    samAccountName = registerOutput<String>('samAccountName');
    sid = registerOutput<String>('sid');
    surname = registerOutput<String?>('surname');
    userPrincipalName = registerOutput<String>('userPrincipalName');
  }
}
