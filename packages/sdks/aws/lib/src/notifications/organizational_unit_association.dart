import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizational_unit_association_args.dart';
import 'organizational_unit_association_state.dart';

/// Resource for managing an AWS User Notifications Organizational Unit Association. This resource associates an organizational unit with a notification configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as time from "@pulumi/time";
///
/// const example = aws.organizations.getOrganization({});
/// const exampleNotificationConfiguration = new aws.notifications.NotificationConfiguration("example", {
///     name: "example-notification-config",
///     description: "Example notification configuration",
/// });
/// const exampleOrganizationalUnit = new aws.organizations.OrganizationalUnit("example", {
///     name: "example-ou",
///     parentId: example.then(example => example.roots?.[0]?.id),
/// });
/// // Allow time for organizational unit creation to propagate
/// const wait = new time.index.Sleep("wait", {createDuration: "5s"}, {
///     dependsOn: [
///         exampleOrganizationalUnit,
///         exampleNotificationConfiguration,
///     ],
/// });
/// const exampleOrganizationalUnitAssociation = new aws.notifications.OrganizationalUnitAssociation("example", {
///     organizationalUnitId: exampleOrganizationalUnit.id,
///     notificationConfigurationArn: exampleNotificationConfiguration.arn,
/// }, {
///     dependsOn: [wait],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_time as time
///
/// example = aws.organizations.get_organization()
/// example_notification_configuration = aws.notifications.NotificationConfiguration("example",
///     name="example-notification-config",
///     description="Example notification configuration")
/// example_organizational_unit = aws.organizations.OrganizationalUnit("example",
///     name="example-ou",
///     parent_id=example.roots[0].id)
/// # Allow time for organizational unit creation to propagate
/// wait = time.Sleep("wait", create_duration=5s,
/// opts = pulumi.ResourceOptions(depends_on=[
///         example_organizational_unit,
///         example_notification_configuration,
///     ]))
/// example_organizational_unit_association = aws.notifications.OrganizationalUnitAssociation("example",
///     organizational_unit_id=example_organizational_unit.id,
///     notification_configuration_arn=example_notification_configuration.arn,
///     opts = pulumi.ResourceOptions(depends_on=[wait]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Time = Pulumi.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetOrganization.Invoke();
///
///     var exampleNotificationConfiguration = new Aws.Notifications.NotificationConfiguration("example", new()
///     {
///         Name = "example-notification-config",
///         Description = "Example notification configuration",
///     });
///
///     var exampleOrganizationalUnit = new Aws.Organizations.OrganizationalUnit("example", new()
///     {
///         Name = "example-ou",
///         ParentId = example.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///     });
///
///     // Allow time for organizational unit creation to propagate
///     var wait = new Time.Sleep("wait", new()
///     {
///         CreateDuration = "5s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleOrganizationalUnit,
///             exampleNotificationConfiguration,
///         },
///     });
///
///     var exampleOrganizationalUnitAssociation = new Aws.Notifications.OrganizationalUnitAssociation("example", new()
///     {
///         OrganizationalUnitId = exampleOrganizationalUnit.Id,
///         NotificationConfigurationArn = exampleNotificationConfiguration.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi-time/sdk/go/time"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNotificationConfiguration, err := notifications.NewNotificationConfiguration(ctx, "example", &notifications.NotificationConfigurationArgs{
/// 			Name:        pulumi.String("example-notification-config"),
/// 			Description: pulumi.String("Example notification configuration"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleOrganizationalUnit, err := organizations.NewOrganizationalUnit(ctx, "example", &organizations.OrganizationalUnitArgs{
/// 			Name:     pulumi.String("example-ou"),
/// 			ParentId: pulumi.String(example.Roots[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Allow time for organizational unit creation to propagate
/// 		wait, err := time.NewSleep(ctx, "wait", &time.SleepArgs{
/// 			CreateDuration: "5s",
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleOrganizationalUnit,
/// 			exampleNotificationConfiguration,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = notifications.NewOrganizationalUnitAssociation(ctx, "example", &notifications.OrganizationalUnitAssociationArgs{
/// 			OrganizationalUnitId:         exampleOrganizationalUnit.ID().ToIDOutput().ToStringOutput(),
/// 			NotificationConfigurationArn: exampleNotificationConfiguration.Arn,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait,
/// 		}))
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
/// data "aws_organizations_getorganization" "example" {
/// }
///
/// resource "aws_notifications_notificationconfiguration" "example" {
///   name        = "example-notification-config"
///   description = "Example notification configuration"
/// }
/// resource "aws_organizations_organizationalunit" "example" {
///   name      = "example-ou"
///   parent_id = data.aws_organizations_getorganization.example.roots[0].id
/// }
/// # Allow time for organizational unit creation to propagate
/// resource "time_sleep" "wait" {
///   depends_on      = [aws_organizations_organizationalunit.example, aws_notifications_notificationconfiguration.example]
///   create_duration = "5s"
/// }
/// resource "aws_notifications_organizationalunitassociation" "example" {
///   depends_on                     = [time_sleep.wait]
///   organizational_unit_id         = aws_organizations_organizationalunit.example.id
///   notification_configuration_arn = aws_notifications_notificationconfiguration.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.notifications.NotificationConfiguration;
/// import com.pulumi.aws.notifications.NotificationConfigurationArgs;
/// import com.pulumi.aws.organizations.OrganizationalUnit;
/// import com.pulumi.aws.organizations.OrganizationalUnitArgs;
/// import com.pulumi.time.Sleep;
/// import com.pulumi.time.SleepArgs;
/// import com.pulumi.aws.notifications.OrganizationalUnitAssociation;
/// import com.pulumi.aws.notifications.OrganizationalUnitAssociationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var example = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         var exampleNotificationConfiguration = new NotificationConfiguration("exampleNotificationConfiguration", NotificationConfigurationArgs.builder()
///             .name("example-notification-config")
///             .description("Example notification configuration")
///             .build());
///
///         var exampleOrganizationalUnit = new OrganizationalUnit("exampleOrganizationalUnit", OrganizationalUnitArgs.builder()
///             .name("example-ou")
///             .parentId(example.roots()[0].id())
///             .build());
///
///         // Allow time for organizational unit creation to propagate
///         var wait = new Sleep("wait", SleepArgs.builder()
///             .createDuration("5s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(Arrays.asList(
///                     exampleOrganizationalUnit,
///                     exampleNotificationConfiguration))
///                 .build());
///
///         var exampleOrganizationalUnitAssociation = new OrganizationalUnitAssociation("exampleOrganizationalUnitAssociation", OrganizationalUnitAssociationArgs.builder()
///             .organizationalUnitId(exampleOrganizationalUnit.id())
///             .notificationConfigurationArn(exampleNotificationConfiguration.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNotificationConfiguration:
///     type: aws:notifications:NotificationConfiguration
///     name: example
///     properties:
///       name: example-notification-config
///       description: Example notification configuration
///   exampleOrganizationalUnit:
///     type: aws:organizations:OrganizationalUnit
///     name: example
///     properties:
///       name: example-ou
///       parentId: ${example.roots[0].id}
///   # Allow time for organizational unit creation to propagate
///   wait:
///     type: time:Sleep
///     properties:
///       createDuration: 5s
///     options:
///       dependsOn:
///         - ${exampleOrganizationalUnit}
///         - ${exampleNotificationConfiguration}
///   exampleOrganizationalUnitAssociation:
///     type: aws:notifications:OrganizationalUnitAssociation
///     name: example
///     properties:
///       organizationalUnitId: ${exampleOrganizationalUnit.id}
///       notificationConfigurationArn: ${exampleNotificationConfiguration.arn}
///     options:
///       dependsOn:
///         - ${wait}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
/// ```
///
///
/// ### Associate with Organization Root
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.organizations.getOrganization({});
/// const exampleNotificationConfiguration = new aws.notifications.NotificationConfiguration("example", {
///     name: "example-notification-config",
///     description: "Example notification configuration",
/// });
/// const exampleOrganizationalUnitAssociation = new aws.notifications.OrganizationalUnitAssociation("example", {
///     organizationalUnitId: example.then(example => example.roots?.[0]?.id),
///     notificationConfigurationArn: exampleNotificationConfiguration.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.get_organization()
/// example_notification_configuration = aws.notifications.NotificationConfiguration("example",
///     name="example-notification-config",
///     description="Example notification configuration")
/// example_organizational_unit_association = aws.notifications.OrganizationalUnitAssociation("example",
///     organizational_unit_id=example.roots[0].id,
///     notification_configuration_arn=example_notification_configuration.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Organizations.GetOrganization.Invoke();
///
///     var exampleNotificationConfiguration = new Aws.Notifications.NotificationConfiguration("example", new()
///     {
///         Name = "example-notification-config",
///         Description = "Example notification configuration",
///     });
///
///     var exampleOrganizationalUnitAssociation = new Aws.Notifications.OrganizationalUnitAssociation("example", new()
///     {
///         OrganizationalUnitId = example.Apply(getOrganizationResult => getOrganizationResult.Roots[0]?.Id),
///         NotificationConfigurationArn = exampleNotificationConfiguration.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := organizations.LookupOrganization(ctx, &organizations.LookupOrganizationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNotificationConfiguration, err := notifications.NewNotificationConfiguration(ctx, "example", &notifications.NotificationConfigurationArgs{
/// 			Name:        pulumi.String("example-notification-config"),
/// 			Description: pulumi.String("Example notification configuration"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = notifications.NewOrganizationalUnitAssociation(ctx, "example", &notifications.OrganizationalUnitAssociationArgs{
/// 			OrganizationalUnitId:         pulumi.String(example.Roots[0].Id),
/// 			NotificationConfigurationArn: exampleNotificationConfiguration.Arn,
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
/// data "aws_organizations_getorganization" "example" {
/// }
///
/// resource "aws_notifications_notificationconfiguration" "example" {
///   name        = "example-notification-config"
///   description = "Example notification configuration"
/// }
/// resource "aws_notifications_organizationalunitassociation" "example" {
///   organizational_unit_id         = data.aws_organizations_getorganization.example.roots[0].id
///   notification_configuration_arn = aws_notifications_notificationconfiguration.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.organizations.OrganizationsFunctions;
/// import com.pulumi.aws.organizations.inputs.GetOrganizationArgs;
/// import com.pulumi.aws.notifications.NotificationConfiguration;
/// import com.pulumi.aws.notifications.NotificationConfigurationArgs;
/// import com.pulumi.aws.notifications.OrganizationalUnitAssociation;
/// import com.pulumi.aws.notifications.OrganizationalUnitAssociationArgs;
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
///         final var example = OrganizationsFunctions.getOrganization(GetOrganizationArgs.builder()
///             .build());
///
///         var exampleNotificationConfiguration = new NotificationConfiguration("exampleNotificationConfiguration", NotificationConfigurationArgs.builder()
///             .name("example-notification-config")
///             .description("Example notification configuration")
///             .build());
///
///         var exampleOrganizationalUnitAssociation = new OrganizationalUnitAssociation("exampleOrganizationalUnitAssociation", OrganizationalUnitAssociationArgs.builder()
///             .organizationalUnitId(example.roots()[0].id())
///             .notificationConfigurationArn(exampleNotificationConfiguration.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNotificationConfiguration:
///     type: aws:notifications:NotificationConfiguration
///     name: example
///     properties:
///       name: example-notification-config
///       description: Example notification configuration
///   exampleOrganizationalUnitAssociation:
///     type: aws:notifications:OrganizationalUnitAssociation
///     name: example
///     properties:
///       organizationalUnitId: ${example.roots[0].id}
///       notificationConfigurationArn: ${exampleNotificationConfiguration.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:organizations:getOrganization
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Organizational Unit Association using the `notification_configuration_arn,organizational_unit_id` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/organizationalUnitAssociation:OrganizationalUnitAssociation example arn:aws:notifications:us-west-2:123456789012:configuration:example-notification-config,ou-1234-12345678
/// ```
class OrganizationalUnitAssociation extends pulumi.CustomResource {
  /// ARN of the notification configuration to associate the organizational unit with.
  late final pulumi.Output<String> notificationConfigurationArn;
  /// ID of the organizational unit or ID of the root to associate with the notification configuration. Can be a root ID (e.g., `r-1234`), or an organization ID (e.g., `o-1234567890`).
  late final pulumi.Output<String> organizationalUnitId;

  /// Creates a new [OrganizationalUnitAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationalUnitAssociation]. {@macro pulumi_notifications_organizational_unit_association_organizational_unit_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationalUnitAssociation(
    String name, {
    OrganizationalUnitAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/organizationalUnitAssociation:OrganizationalUnitAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    notificationConfigurationArn = registerOutput<String>('notificationConfigurationArn');
    organizationalUnitId = registerOutput<String>('organizationalUnitId');
  }

  /// Gets an existing [OrganizationalUnitAssociation] resource's state with the given [name] and [id].
  static OrganizationalUnitAssociation get(
    String name,
    pulumi.Input<String> id, {
    OrganizationalUnitAssociationState? state,
  }) {
    return OrganizationalUnitAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationalUnitAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/organizationalUnitAssociation:OrganizationalUnitAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    notificationConfigurationArn = registerOutput<String>('notificationConfigurationArn');
    organizationalUnitId = registerOutput<String>('organizationalUnitId');
  }
}
