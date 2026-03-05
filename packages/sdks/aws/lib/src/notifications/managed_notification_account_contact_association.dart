import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_notification_account_contact_association_args.dart';
import 'managed_notification_account_contact_association_state.dart';

/// Resource for managing an AWS User Notifications Managed Notification Account Contact Association. This resource associates an account contact with a managed notification configuration.
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
/// const example = new aws.notifications.ManagedNotificationAccountContactAssociation("example", {
///     contactIdentifier: "ACCOUNT_PRIMARY",
///     managedNotificationConfigurationArn: "arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.ManagedNotificationAccountContactAssociation("example",
///     contact_identifier="ACCOUNT_PRIMARY",
///     managed_notification_configuration_arn="arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Notifications.ManagedNotificationAccountContactAssociation("example", new()
///     {
///         ContactIdentifier = "ACCOUNT_PRIMARY",
///         ManagedNotificationConfigurationArn = "arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security",
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
/// 		_, err := notifications.NewManagedNotificationAccountContactAssociation(ctx, "example", &notifications.ManagedNotificationAccountContactAssociationArgs{
/// 			ContactIdentifier:                   pulumi.String("ACCOUNT_PRIMARY"),
/// 			ManagedNotificationConfigurationArn: pulumi.String("arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security"),
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
/// import com.pulumi.aws.notifications.ManagedNotificationAccountContactAssociation;
/// import com.pulumi.aws.notifications.ManagedNotificationAccountContactAssociationArgs;
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
///         var example = new ManagedNotificationAccountContactAssociation("example", ManagedNotificationAccountContactAssociationArgs.builder()
///             .contactIdentifier("ACCOUNT_PRIMARY")
///             .managedNotificationConfigurationArn("arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:notifications:ManagedNotificationAccountContactAssociation
///     properties:
///       contactIdentifier: ACCOUNT_PRIMARY
///       managedNotificationConfigurationArn: arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Managed Notification Account Contact Association using the `managed_notification_configuration_arn,contact_identifier` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/managedNotificationAccountContactAssociation:ManagedNotificationAccountContactAssociation example arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security,ACCOUNT_PRIMARY
/// ```
class ManagedNotificationAccountContactAssociation extends pulumi.CustomResource {
  /// A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  late final pulumi.Output<String> contactIdentifier;
  /// ARN of the managed notification configuration to associate the account contact with.
  late final pulumi.Output<String> managedNotificationConfigurationArn;

  /// Creates a new [ManagedNotificationAccountContactAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedNotificationAccountContactAssociation]. {@macro pulumi_notifications_managed_notification_account_contact_association_managed_notification_account_contact_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedNotificationAccountContactAssociation(
    String name, {
    ManagedNotificationAccountContactAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/managedNotificationAccountContactAssociation:ManagedNotificationAccountContactAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contactIdentifier = registerOutput<String>('contactIdentifier');
    managedNotificationConfigurationArn = registerOutput<String>('managedNotificationConfigurationArn');
  }

  /// Gets an existing [ManagedNotificationAccountContactAssociation] resource's state with the given [name] and [id].
  static ManagedNotificationAccountContactAssociation get(
    String name,
    pulumi.Input<String> id, {
    ManagedNotificationAccountContactAssociationState? state,
  }) {
    return ManagedNotificationAccountContactAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedNotificationAccountContactAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/managedNotificationAccountContactAssociation:ManagedNotificationAccountContactAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contactIdentifier = registerOutput<String>('contactIdentifier');
    managedNotificationConfigurationArn = registerOutput<String>('managedNotificationConfigurationArn');
  }
}
