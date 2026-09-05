import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_email_contact_args.dart';
import 'contacts_email_contact_state.dart';

/// Resource for managing AWS User Notifications Contacts Email Contact.
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
/// const example = new aws.notifications.ContactsEmailContact("example", {
///     name: "example-contact",
///     emailAddress: "example@example.com",
///     tags: {
///         Environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.ContactsEmailContact("example",
///     name="example-contact",
///     email_address="example@example.com",
///     tags={
///         "Environment": "Production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Notifications.ContactsEmailContact("example", new()
///     {
///         Name = "example-contact",
///         EmailAddress = "example@example.com",
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notifications.NewContactsEmailContact(ctx, "example", &notifications.ContactsEmailContactArgs{
/// 			Name:         pulumi.String("example-contact"),
/// 			EmailAddress: pulumi.String("example@example.com"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
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
/// resource "aws_notifications_contactsemailcontact" "example" {
///   name          = "example-contact"
///   email_address = "example@example.com"
///   tags = {
///     "Environment" = "Production"
///   }
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
///         var example = new ContactsEmailContact("example", ContactsEmailContactArgs.builder()
///             .name("example-contact")
///             .emailAddress("example@example.com")
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:notifications:ContactsEmailContact
///     properties:
///       name: example-contact
///       emailAddress: example@example.com
///       tags:
///         Environment: Production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Contacts Email Contact using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/contactsEmailContact:ContactsEmailContact example arn:aws:notificationscontacts:us-west-2:123456789012:emailcontact:example-contact
/// ```
class ContactsEmailContact extends pulumi.CustomResource {
  /// ARN of the Email Contact.
  late final pulumi.Output<String> arn;
  /// Email address for the contact. Must be between 6 and 254 characters and match an email
  /// pattern.
  late final pulumi.Output<String> emailAddress;
  /// Name of the email contact. Must be between 1 and 64 characters and can contain alphanumeric
  /// characters, underscores, tildes, periods, and hyphens.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Map of tags to assign to the resource. If configured with a provider
  /// `defaultTags` configuration block
  /// present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider
  /// `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ContactsEmailContact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactsEmailContact]. {@macro pulumi_notifications_contacts_email_contact_contacts_email_contact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactsEmailContact(
    String name, {
    ContactsEmailContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/contactsEmailContact:ContactsEmailContact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    emailAddress = registerOutput<String>('emailAddress');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ContactsEmailContact] resource's state with the given [name] and [id].
  static ContactsEmailContact get(
    String name,
    pulumi.Input<String> id, {
    ContactsEmailContactState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContactsEmailContact._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContactsEmailContact._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/contactsEmailContact:ContactsEmailContact',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    emailAddress = registerOutput<String>('emailAddress');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ContactsEmailContact] resource.
  ContactsEmailContact.reference(String urn)
    : super(
        'aws:notifications/contactsEmailContact:ContactsEmailContact',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    emailAddress = registerOutput<String>('emailAddress');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
