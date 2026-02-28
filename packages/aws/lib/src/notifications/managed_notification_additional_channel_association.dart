import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_notification_additional_channel_association_args.dart';

/// Resource for managing an AWS User Notifications Managed Notification Additional Channel Association. This resource associates a channel (such as an email contact, mobile device, or chat channel) with a managed notification.
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
/// });
/// const exampleManagedNotificationAdditionalChannelAssociation = new aws.notifications.ManagedNotificationAdditionalChannelAssociation("example", {
///     channelArn: example.arn,
///     managedNotificationArn: "arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.ContactsEmailContact("example",
///     name="example-contact",
///     email_address="example@example.com")
/// example_managed_notification_additional_channel_association = aws.notifications.ManagedNotificationAdditionalChannelAssociation("example",
///     channel_arn=example.arn,
///     managed_notification_arn="arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security")
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
///     });
///
///     var exampleManagedNotificationAdditionalChannelAssociation = new Aws.Notifications.ManagedNotificationAdditionalChannelAssociation("example", new()
///     {
///         ChannelArn = example.Arn,
///         ManagedNotificationArn = "arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security",
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
/// 		example, err := notifications.NewContactsEmailContact(ctx, "example", &notifications.ContactsEmailContactArgs{
/// 			Name:         pulumi.String("example-contact"),
/// 			EmailAddress: pulumi.String("example@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = notifications.NewManagedNotificationAdditionalChannelAssociation(ctx, "example", &notifications.ManagedNotificationAdditionalChannelAssociationArgs{
/// 			ChannelArn:             example.Arn,
/// 			ManagedNotificationArn: pulumi.String("arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security"),
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
/// import com.pulumi.aws.notifications.ContactsEmailContact;
/// import com.pulumi.aws.notifications.ContactsEmailContactArgs;
/// import com.pulumi.aws.notifications.ManagedNotificationAdditionalChannelAssociation;
/// import com.pulumi.aws.notifications.ManagedNotificationAdditionalChannelAssociationArgs;
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
///         var example = new ContactsEmailContact("example", ContactsEmailContactArgs.builder()
///             .name("example-contact")
///             .emailAddress("example@example.com")
///             .build());
///
///         var exampleManagedNotificationAdditionalChannelAssociation = new ManagedNotificationAdditionalChannelAssociation("exampleManagedNotificationAdditionalChannelAssociation", ManagedNotificationAdditionalChannelAssociationArgs.builder()
///             .channelArn(example.arn())
///             .managedNotificationArn("arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security")
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
///   exampleManagedNotificationAdditionalChannelAssociation:
///     type: aws:notifications:ManagedNotificationAdditionalChannelAssociation
///     name: example
///     properties:
///       channelArn: ${example.arn}
///       managedNotificationArn: arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Managed Notification Additional Channel Association using the `managed_notification_arn,channel_arn` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/managedNotificationAdditionalChannelAssociation:ManagedNotificationAdditionalChannelAssociation example arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security,arn:aws:notificationscontacts:us-west-2:123456789012:emailcontact:example-contact
/// ```
class ManagedNotificationAdditionalChannelAssociation
    extends pulumi.CustomResource {
  /// ARN of the channel to associate with the managed notification.
  late final pulumi.Output<String> channelArn;

  /// ARN of the managed notification to associate the channel with.
  late final pulumi.Output<String> managedNotificationArn;

  /// Creates a new [ManagedNotificationAdditionalChannelAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNotificationAdditionalChannelAssociation]. {@macro pulumi_notifications_managed_notification_additional_channel_association_managed_notification_additional_channel_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNotificationAdditionalChannelAssociation(
    String name, {
    ManagedNotificationAdditionalChannelAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/managedNotificationAdditionalChannelAssociation:ManagedNotificationAdditionalChannelAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.channelArn = registerOutput<String>('channelArn');
    this.managedNotificationArn =
        registerOutput<String>('managedNotificationArn');
  }
}
