import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_association_args.dart';
import 'channel_association_state.dart';

/// Resource for managing an AWS User Notifications Channel Association. This resource associates a channel (such as an email contact) with a notification configuration.
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
/// const example = new aws.notifications.NotificationConfiguration("example", {
///     name: "example-notification-config",
///     description: "Example notification configuration",
/// });
/// const exampleContactsEmailContact = new aws.notifications.ContactsEmailContact("example", {
///     name: "example-contact",
///     emailAddress: "example@example.com",
/// });
/// const exampleChannelAssociation = new aws.notifications.ChannelAssociation("example", {
///     arn: exampleContactsEmailContact.arn,
///     notificationConfigurationArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.NotificationConfiguration("example",
///     name="example-notification-config",
///     description="Example notification configuration")
/// example_contacts_email_contact = aws.notifications.ContactsEmailContact("example",
///     name="example-contact",
///     email_address="example@example.com")
/// example_channel_association = aws.notifications.ChannelAssociation("example",
///     arn=example_contacts_email_contact.arn,
///     notification_configuration_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Notifications.NotificationConfiguration("example", new()
///     {
///         Name = "example-notification-config",
///         Description = "Example notification configuration",
///     });
///
///     var exampleContactsEmailContact = new Aws.Notifications.ContactsEmailContact("example", new()
///     {
///         Name = "example-contact",
///         EmailAddress = "example@example.com",
///     });
///
///     var exampleChannelAssociation = new Aws.Notifications.ChannelAssociation("example", new()
///     {
///         Arn = exampleContactsEmailContact.Arn,
///         NotificationConfigurationArn = example.Arn,
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
/// 		example, err := notifications.NewNotificationConfiguration(ctx, "example", &notifications.NotificationConfigurationArgs{
/// 			Name:        pulumi.String("example-notification-config"),
/// 			Description: pulumi.String("Example notification configuration"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContactsEmailContact, err := notifications.NewContactsEmailContact(ctx, "example", &notifications.ContactsEmailContactArgs{
/// 			Name:         pulumi.String("example-contact"),
/// 			EmailAddress: pulumi.String("example@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = notifications.NewChannelAssociation(ctx, "example", &notifications.ChannelAssociationArgs{
/// 			Arn:                          exampleContactsEmailContact.Arn,
/// 			NotificationConfigurationArn: example.Arn,
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
/// resource "aws_notifications_notificationconfiguration" "example" {
///   name        = "example-notification-config"
///   description = "Example notification configuration"
/// }
/// resource "aws_notifications_contactsemailcontact" "example" {
///   name          = "example-contact"
///   email_address = "example@example.com"
/// }
/// resource "aws_notifications_channelassociation" "example" {
///   arn                            = aws_notifications_contactsemailcontact.example.arn
///   notification_configuration_arn = aws_notifications_notificationconfiguration.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.notifications.NotificationConfiguration;
/// import com.pulumi.aws.notifications.NotificationConfigurationArgs;
/// import com.pulumi.aws.notifications.ContactsEmailContact;
/// import com.pulumi.aws.notifications.ContactsEmailContactArgs;
/// import com.pulumi.aws.notifications.ChannelAssociation;
/// import com.pulumi.aws.notifications.ChannelAssociationArgs;
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
///         var example = new NotificationConfiguration("example", NotificationConfigurationArgs.builder()
///             .name("example-notification-config")
///             .description("Example notification configuration")
///             .build());
///
///         var exampleContactsEmailContact = new ContactsEmailContact("exampleContactsEmailContact", ContactsEmailContactArgs.builder()
///             .name("example-contact")
///             .emailAddress("example@example.com")
///             .build());
///
///         var exampleChannelAssociation = new ChannelAssociation("exampleChannelAssociation", ChannelAssociationArgs.builder()
///             .arn(exampleContactsEmailContact.arn())
///             .notificationConfigurationArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:notifications:NotificationConfiguration
///     properties:
///       name: example-notification-config
///       description: Example notification configuration
///   exampleContactsEmailContact:
///     type: aws:notifications:ContactsEmailContact
///     name: example
///     properties:
///       name: example-contact
///       emailAddress: example@example.com
///   exampleChannelAssociation:
///     type: aws:notifications:ChannelAssociation
///     name: example
///     properties:
///       arn: ${exampleContactsEmailContact.arn}
///       notificationConfigurationArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Channel Association using the `notification_configuration_arn,channel_arn` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/channelAssociation:ChannelAssociation example arn:aws:notifications:us-west-2:123456789012:configuration:example-notification-config,arn:aws:notificationscontacts:us-west-2:123456789012:emailcontact:example-contact
/// ```
class ChannelAssociation extends pulumi.CustomResource {
  /// ARN of the channel to associate with the notification configuration. Must match pattern `^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$`.
  late final pulumi.Output<String> arn;
  /// ARN of the notification configuration to associate the channel with.
  late final pulumi.Output<String> notificationConfigurationArn;

  /// Creates a new [ChannelAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelAssociation]. {@macro pulumi_notifications_channel_association_channel_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelAssociation(
    String name, {
    ChannelAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/channelAssociation:ChannelAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    notificationConfigurationArn = registerOutput<String>('notificationConfigurationArn');
  }

  /// Gets an existing [ChannelAssociation] resource's state with the given [name] and [id].
  static ChannelAssociation get(
    String name,
    pulumi.Input<String> id, {
    ChannelAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ChannelAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ChannelAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/channelAssociation:ChannelAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    notificationConfigurationArn = registerOutput<String>('notificationConfigurationArn');
  }

  /// Creates a typed reference to an existing [ChannelAssociation] resource.
  ChannelAssociation.reference(String urn)
    : super(
        'aws:notifications/channelAssociation:ChannelAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    notificationConfigurationArn = registerOutput<String>('notificationConfigurationArn');
  }
}
