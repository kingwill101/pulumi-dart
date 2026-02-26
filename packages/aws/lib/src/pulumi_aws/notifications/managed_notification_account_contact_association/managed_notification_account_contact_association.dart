import 'package:pulumi/pulumi.dart';
import 'managed_notification_account_contact_association_args.dart';

/// Resource for managing an AWS User Notifications Managed Notification Account Contact Association. This resource associates an account contact with a managed notification configuration.
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
/// const example = new aws.notifications.ManagedNotificationAccountContactAssociation("example", {
/// contactIdentifier: "ACCOUNT_PRIMARY",
/// managedNotificationConfigurationArn: "arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.ManagedNotificationAccountContactAssociation("example",
/// contact_identifier="ACCOUNT_PRIMARY",
/// managed_notification_configuration_arn="arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Notifications.ManagedNotificationAccountContactAssociation("example", new()
/// {
/// ContactIdentifier = "ACCOUNT_PRIMARY",
/// ManagedNotificationConfigurationArn = "arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security",
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
/// _, err := notifications.NewManagedNotificationAccountContactAssociation(ctx, "example", &notifications.ManagedNotificationAccountContactAssociationArgs{
/// ContactIdentifier:                   pulumi.String("ACCOUNT_PRIMARY"),
/// ManagedNotificationConfigurationArn: pulumi.String("arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ManagedNotificationAccountContactAssociation("example", ManagedNotificationAccountContactAssociationArgs.builder()
/// .contactIdentifier("ACCOUNT_PRIMARY")
/// .managedNotificationConfigurationArn("arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:notifications:ManagedNotificationAccountContactAssociation
/// properties:
/// contactIdentifier: ACCOUNT_PRIMARY
/// managedNotificationConfigurationArn: arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Managed Notification Account Contact Association using the `managed_notification_configuration_arn,contact_identifier` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/managedNotificationAccountContactAssociation:ManagedNotificationAccountContactAssociation example arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security,ACCOUNT_PRIMARY
/// ```
class ManagedNotificationAccountContactAssociation extends CustomResource {
  /// A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  late final Output<String> contactIdentifier;

  /// ARN of the managed notification configuration to associate the account contact with.
  late final Output<String> managedNotificationConfigurationArn;

  ManagedNotificationAccountContactAssociation(
    String name, {
    ManagedNotificationAccountContactAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/managedNotificationAccountContactAssociation:ManagedNotificationAccountContactAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactIdentifier = Output.createUnknown<String>();
    this.managedNotificationConfigurationArn = Output.createUnknown<String>();
  }
}
