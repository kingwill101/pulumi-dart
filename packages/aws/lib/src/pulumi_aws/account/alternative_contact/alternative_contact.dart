import 'package:pulumi/pulumi.dart';
import 'alternative_contact_args.dart';

/// Manages the specified alternate contact attached to an AWS Account.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const operations = new aws.account.AlternativeContact("operations", {
/// alternateContactType: "OPERATIONS",
/// name: "Example",
/// title: "Example",
/// emailAddress: "test@example.com",
/// phoneNumber: "+1234567890",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// operations = aws.account.AlternativeContact("operations",
/// alternate_contact_type="OPERATIONS",
/// name="Example",
/// title="Example",
/// email_address="test@example.com",
/// phone_number="+1234567890")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var operations = new Aws.Account.AlternativeContact("operations", new()
/// {
/// AlternateContactType = "OPERATIONS",
/// Name = "Example",
/// Title = "Example",
/// EmailAddress = "test@example.com",
/// PhoneNumber = "+1234567890",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/account"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := account.NewAlternativeContact(ctx, "operations", &account.AlternativeContactArgs{
/// AlternateContactType: pulumi.String("OPERATIONS"),
/// Name:                 pulumi.String("Example"),
/// Title:                pulumi.String("Example"),
/// EmailAddress:         pulumi.String("test@example.com"),
/// PhoneNumber:          pulumi.String("+1234567890"),
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
/// import com.pulumi.aws.account.AlternativeContact;
/// import com.pulumi.aws.account.AlternativeContactArgs;
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
/// var operations = new AlternativeContact("operations", AlternativeContactArgs.builder()
/// .alternateContactType("OPERATIONS")
/// .name("Example")
/// .title("Example")
/// .emailAddress("test@example.com")
/// .phoneNumber("+1234567890")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// operations:
/// type: aws:account:AlternativeContact
/// properties:
/// alternateContactType: OPERATIONS
/// name: Example
/// title: Example
/// emailAddress: test@example.com
/// phoneNumber: '+1234567890'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Import the Alternate Contact for another account using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> and <span pulumi-lang-nodejs="`alternateContactType`" pulumi-lang-dotnet="`AlternateContactType`" pulumi-lang-go="`alternateContactType`" pulumi-lang-python="`alternate_contact_type`" pulumi-lang-yaml="`alternateContactType`" pulumi-lang-java="`alternateContactType`">`alternate_contact_type`</span> separated by a forward slash (`/`):
///
///
/// **Using `pulumi import` to import** the Alternate Contact for the current or another account using the <span pulumi-lang-nodejs="`alternateContactType`" pulumi-lang-dotnet="`AlternateContactType`" pulumi-lang-go="`alternateContactType`" pulumi-lang-python="`alternate_contact_type`" pulumi-lang-yaml="`alternateContactType`" pulumi-lang-java="`alternateContactType`">`alternate_contact_type`</span>. For example:
///
/// Import the Alternate Contact for the current account:
///
/// ```sh
/// $ pulumi import aws:account/alternativeContact:AlternativeContact operations OPERATIONS
/// ```
///
/// Import the Alternate Contact for another account using the <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> and <span pulumi-lang-nodejs="`alternateContactType`" pulumi-lang-dotnet="`AlternateContactType`" pulumi-lang-go="`alternateContactType`" pulumi-lang-python="`alternate_contact_type`" pulumi-lang-yaml="`alternateContactType`" pulumi-lang-java="`alternateContactType`">`alternate_contact_type`</span> separated by a forward slash (`/`):
///
/// ```sh
/// $ pulumi import aws:account/alternativeContact:AlternativeContact operations 1234567890/OPERATIONS
/// ```
class AlternativeContact extends CustomResource {
  /// ID of the target account when managing member accounts. Will manage current user's account by default if omitted.
  late final Output<String?> accountId;

  /// Type of the alternate contact. Allowed values are: `BILLING`, `OPERATIONS`, `SECURITY`.
  late final Output<String> alternateContactType;

  /// An email address for the alternate contact.
  late final Output<String> emailAddress;

  /// Name of the alternate contact.
  late final Output<String> name;

  /// Phone number for the alternate contact.
  late final Output<String> phoneNumber;

  /// Title for the alternate contact.
  late final Output<String> title;

  AlternativeContact(
    String name, {
    AlternativeContactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:account/alternativeContact:AlternativeContact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String?>();
    this.alternateContactType = Output.createUnknown<String>();
    this.emailAddress = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.phoneNumber = Output.createUnknown<String>();
    this.title = Output.createUnknown<String>();
  }
}
