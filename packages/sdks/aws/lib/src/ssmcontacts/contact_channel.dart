import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_channel_args.dart';
import 'contact_channel_delivery_address.dart';
import 'contact_channel_state.dart';

/// Resource for managing an AWS SSM Contacts Contact Channel.
///
/// &gt; **NOTE:** The contact channel needs to be activated in the AWS Systems Manager console, otherwise it can't be used to engage the contact. See the [Contacts section of the Incident Manager User Guide](https://docs.aws.amazon.com/incident-manager/latest/userguide/contacts.html) for more information.
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
/// const example = new aws.ssmcontacts.ContactChannel("example", {
///     contactId: "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
///     deliveryAddress: {
///         simpleAddress: "email@example.com",
///     },
///     name: "Example contact channel",
///     type: "EMAIL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssmcontacts.ContactChannel("example",
///     contact_id="arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
///     delivery_address={
///         "simple_address": "email@example.com",
///     },
///     name="Example contact channel",
///     type="EMAIL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsmContacts.ContactChannel("example", new()
///     {
///         ContactId = "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias",
///         DeliveryAddress = new Aws.SsmContacts.Inputs.ContactChannelDeliveryAddressArgs
///         {
///             SimpleAddress = "email@example.com",
///         },
///         Name = "Example contact channel",
///         Type = "EMAIL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssmcontacts.NewContactChannel(ctx, "example", &ssmcontacts.ContactChannelArgs{
/// 			ContactId: pulumi.String("arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias"),
/// 			DeliveryAddress: &ssmcontacts.ContactChannelDeliveryAddressArgs{
/// 				SimpleAddress: pulumi.String("email@example.com"),
/// 			},
/// 			Name: pulumi.String("Example contact channel"),
/// 			Type: pulumi.String("EMAIL"),
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
/// resource "aws_ssmcontacts_contactchannel" "example" {
///   contact_id = "arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias"
///   delivery_address = {
///     simple_address = "email@example.com"
///   }
///   name = "Example contact channel"
///   type = "EMAIL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.ContactChannel;
/// import com.pulumi.aws.ssmcontacts.ContactChannelArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.ContactChannelDeliveryAddressArgs;
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
///         var example = new ContactChannel("example", ContactChannelArgs.builder()
///             .contactId("arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias")
///             .deliveryAddress(ContactChannelDeliveryAddressArgs.builder()
///                 .simpleAddress("email@example.com")
///                 .build())
///             .name("Example contact channel")
///             .type("EMAIL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssmcontacts:ContactChannel
///     properties:
///       contactId: arn:aws:ssm-contacts:us-west-2:123456789012:contact/contactalias
///       deliveryAddress:
///         simpleAddress: email@example.com
///       name: Example contact channel
///       type: EMAIL
/// ```
///
///
/// ### Usage with SSM Contact
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleContact = new aws.ssmcontacts.Contact("example_contact", {
///     alias: "example_contact",
///     type: "PERSONAL",
/// });
/// const example = new aws.ssmcontacts.ContactChannel("example", {
///     contactId: exampleContact.arn,
///     deliveryAddress: {
///         simpleAddress: "email@example.com",
///     },
///     name: "Example contact channel",
///     type: "EMAIL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_contact = aws.ssmcontacts.Contact("example_contact",
///     alias="example_contact",
///     type="PERSONAL")
/// example = aws.ssmcontacts.ContactChannel("example",
///     contact_id=example_contact.arn,
///     delivery_address={
///         "simple_address": "email@example.com",
///     },
///     name="Example contact channel",
///     type="EMAIL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleContact = new Aws.SsmContacts.Contact("example_contact", new()
///     {
///         Alias = "example_contact",
///         Type = "PERSONAL",
///     });
///
///     var example = new Aws.SsmContacts.ContactChannel("example", new()
///     {
///         ContactId = exampleContact.Arn,
///         DeliveryAddress = new Aws.SsmContacts.Inputs.ContactChannelDeliveryAddressArgs
///         {
///             SimpleAddress = "email@example.com",
///         },
///         Name = "Example contact channel",
///         Type = "EMAIL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmcontacts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleContact, err := ssmcontacts.NewContact(ctx, "example_contact", &ssmcontacts.ContactArgs{
/// 			Alias: pulumi.String("example_contact"),
/// 			Type:  pulumi.String("PERSONAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssmcontacts.NewContactChannel(ctx, "example", &ssmcontacts.ContactChannelArgs{
/// 			ContactId: exampleContact.Arn,
/// 			DeliveryAddress: &ssmcontacts.ContactChannelDeliveryAddressArgs{
/// 				SimpleAddress: pulumi.String("email@example.com"),
/// 			},
/// 			Name: pulumi.String("Example contact channel"),
/// 			Type: pulumi.String("EMAIL"),
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
/// resource "aws_ssmcontacts_contact" "example_contact" {
///   alias = "example_contact"
///   type  = "PERSONAL"
/// }
/// resource "aws_ssmcontacts_contactchannel" "example" {
///   contact_id = aws_ssmcontacts_contact.example_contact.arn
///   delivery_address = {
///     simple_address = "email@example.com"
///   }
///   name = "Example contact channel"
///   type = "EMAIL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssmcontacts.Contact;
/// import com.pulumi.aws.ssmcontacts.ContactArgs;
/// import com.pulumi.aws.ssmcontacts.ContactChannel;
/// import com.pulumi.aws.ssmcontacts.ContactChannelArgs;
/// import com.pulumi.aws.ssmcontacts.inputs.ContactChannelDeliveryAddressArgs;
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
///         var exampleContact = new Contact("exampleContact", ContactArgs.builder()
///             .alias("example_contact")
///             .type("PERSONAL")
///             .build());
///
///         var example = new ContactChannel("example", ContactChannelArgs.builder()
///             .contactId(exampleContact.arn())
///             .deliveryAddress(ContactChannelDeliveryAddressArgs.builder()
///                 .simpleAddress("email@example.com")
///                 .build())
///             .name("Example contact channel")
///             .type("EMAIL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleContact:
///     type: aws:ssmcontacts:Contact
///     name: example_contact
///     properties:
///       alias: example_contact
///       type: PERSONAL
///   example:
///     type: aws:ssmcontacts:ContactChannel
///     properties:
///       contactId: ${exampleContact.arn}
///       deliveryAddress:
///         simpleAddress: email@example.com
///       name: Example contact channel
///       type: EMAIL
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the contact channel.
///
///
/// Using `pulumi import`, import SSM Contact Channel using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssmcontacts/contactChannel:ContactChannel example arn:aws:ssm-contacts:us-west-2:123456789012:contact-channel/example
/// ```
class ContactChannel extends pulumi.CustomResource {
  /// Whether the contact channel is activated. The contact channel must be activated to use it to engage the contact. One of `ACTIVATED` or `NOT_ACTIVATED`.
  late final pulumi.Output<String> activationStatus;
  /// Amazon Resource Name (ARN) of the contact channel.
  late final pulumi.Output<String> arn;
  /// Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  late final pulumi.Output<String> contactId;
  /// Block that contains contact engagement details. See details below.
  late final pulumi.Output<ContactChannelDeliveryAddress> deliveryAddress;
  /// Name of the contact channel. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Type of the contact channel. One of `SMS`, `VOICE` or `EMAIL`.
  late final pulumi.Output<String> type;

  /// Creates a new [ContactChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContactChannel]. {@macro pulumi_ssmcontacts_contact_channel_contact_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContactChannel(
    String name, {
    ContactChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/contactChannel:ContactChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationStatus = registerOutput<String>('activationStatus');
    arn = registerOutput<String>('arn');
    contactId = registerOutput<String>('contactId');
    deliveryAddress = registerOutput<ContactChannelDeliveryAddress>('deliveryAddress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactChannelDeliveryAddress.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ContactChannel] resource's state with the given [name] and [id].
  static ContactChannel get(
    String name,
    pulumi.Input<String> id, {
    ContactChannelState? state,
  }) {
    return ContactChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContactChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/contactChannel:ContactChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activationStatus = registerOutput<String>('activationStatus');
    arn = registerOutput<String>('arn');
    contactId = registerOutput<String>('contactId');
    deliveryAddress = registerOutput<ContactChannelDeliveryAddress>('deliveryAddress', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContactChannelDeliveryAddress.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    type = registerOutput<String>('type');
  }
}
