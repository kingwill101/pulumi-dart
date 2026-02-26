import 'package:pulumi/pulumi.dart';
import 'contacts_email_contact_args.dart';

/// Resource for managing AWS User Notifications Contacts Email Contact.
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
/// const example = new aws.notifications.ContactsEmailContact("example", {
/// name: "example-contact",
/// emailAddress: "example@example.com",
/// tags: {
/// Environment: "Production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.ContactsEmailContact("example",
/// name="example-contact",
/// email_address="example@example.com",
/// tags={
/// "Environment": "Production",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Notifications.ContactsEmailContact("example", new()
/// {
/// Name = "example-contact",
/// EmailAddress = "example@example.com",
/// Tags =
/// {
/// { "Environment", "Production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notifications.NewContactsEmailContact(ctx, "example", &notifications.ContactsEmailContactArgs{
/// Name:         pulumi.String("example-contact"),
/// EmailAddress: pulumi.String("example@example.com"),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("Production"),
/// },
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
/// import com.pulumi.aws.notifications.ContactsEmailContact;
/// import com.pulumi.aws.notifications.ContactsEmailContactArgs;
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
/// var example = new ContactsEmailContact("example", ContactsEmailContactArgs.builder()
/// .name("example-contact")
/// .emailAddress("example@example.com")
/// .tags(Map.of("Environment", "Production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:notifications:ContactsEmailContact
/// properties:
/// name: example-contact
/// emailAddress: example@example.com
/// tags:
/// Environment: Production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Contacts Email Contact using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/contactsEmailContact:ContactsEmailContact example arn:aws:notificationscontacts:us-west-2:123456789012:emailcontact:example-contact
/// ```
class ContactsEmailContact extends CustomResource {
  /// ARN of the Email Contact.
  late final Output<String> arn;

  /// Email address for the contact. Must be between 6 and 254 characters and match an email
  /// pattern.
  late final Output<String> emailAddress;

  /// Name of the email contact. Must be between 1 and 64 characters and can contain alphanumeric
  /// characters, underscores, tildes, periods, and hyphens.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Map of tags to assign to the resource. If configured with a provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ContactsEmailContact(
    String name, {
    ContactsEmailContactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/contactsEmailContact:ContactsEmailContact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.emailAddress = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
