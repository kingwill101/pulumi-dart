import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_management_args.dart';
import 'auto_management_state.dart';

/// Manages AWS Service Quotas Automatic Management.
///
/// &gt; **Note:** Due to AWS API limitations, the `notificationArn` attribute cannot be removed once set without recreating the resource. Removing this value from your configuration will trigger resource replacement.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleNotificationConfiguration = new aws.notifications.NotificationConfiguration("example", {
///     name: "example",
///     description: "example configuration",
/// });
/// const example = new aws.servicequotas.AutoManagement("example", {
///     optInLevel: "ACCOUNT",
///     optInType: "NotifyOnly",
///     exclusionList: {
///         dynamodb: ["L-F98FE922"],
///     },
///     notificationArn: exampleNotificationConfiguration.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_notification_configuration = aws.notifications.NotificationConfiguration("example",
///     name="example",
///     description="example configuration")
/// example = aws.servicequotas.AutoManagement("example",
///     opt_in_level="ACCOUNT",
///     opt_in_type="NotifyOnly",
///     exclusion_list={
///         "dynamodb": ["L-F98FE922"],
///     },
///     notification_arn=example_notification_configuration.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleNotificationConfiguration = new Aws.Notifications.NotificationConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "example configuration",
///     });
///
///     var example = new Aws.ServiceQuotas.AutoManagement("example", new()
///     {
///         OptInLevel = "ACCOUNT",
///         OptInType = "NotifyOnly",
///         ExclusionList =
///         {
///             { "dynamodb", new[]
///             {
///                 "L-F98FE922",
///             } },
///         },
///         NotificationArn = exampleNotificationConfiguration.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicequotas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleNotificationConfiguration, err := notifications.NewNotificationConfiguration(ctx, "example", &notifications.NotificationConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example configuration"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicequotas.NewAutoManagement(ctx, "example", &servicequotas.AutoManagementArgs{
/// 			OptInLevel: pulumi.String("ACCOUNT"),
/// 			OptInType:  pulumi.String("NotifyOnly"),
/// 			ExclusionList: pulumi.StringArrayMap{
/// 				"dynamodb": pulumi.StringArray{
/// 					pulumi.String("L-F98FE922"),
/// 				},
/// 			},
/// 			NotificationArn: exampleNotificationConfiguration.Arn,
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
/// resource "aws_servicequotas_automanagement" "example" {
///   opt_in_level = "ACCOUNT"
///   opt_in_type  = "NotifyOnly"
///   exclusion_list = {
///     "dynamodb" = ["L-F98FE922"]
///   }
///   notification_arn = aws_notifications_notificationconfiguration.example.arn
/// }
/// resource "aws_notifications_notificationconfiguration" "example" {
///   name        = "example"
///   description = "example configuration"
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
/// import com.pulumi.aws.servicequotas.AutoManagement;
/// import com.pulumi.aws.servicequotas.AutoManagementArgs;
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
///         var exampleNotificationConfiguration = new NotificationConfiguration("exampleNotificationConfiguration", NotificationConfigurationArgs.builder()
///             .name("example")
///             .description("example configuration")
///             .build());
///
///         var example = new AutoManagement("example", AutoManagementArgs.builder()
///             .optInLevel("ACCOUNT")
///             .optInType("NotifyOnly")
///             .exclusionList(Map.of("dynamodb", Arrays.asList("L-F98FE922")))
///             .notificationArn(exampleNotificationConfiguration.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicequotas:AutoManagement
///     properties:
///       optInLevel: ACCOUNT
///       optInType: NotifyOnly
///       exclusionList:
///         dynamodb:
///           - L-F98FE922
///       notificationArn: ${exampleNotificationConfiguration.arn}
///   exampleNotificationConfiguration:
///     type: aws:notifications:NotificationConfiguration
///     name: example
///     properties:
///       name: example
///       description: example configuration
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Service Quotas Auto Management using the region name. For example:
///
/// ```sh
/// $ pulumi import aws:servicequotas/autoManagement:AutoManagement example us-west-2
/// ```
class AutoManagement extends pulumi.CustomResource {
  /// Map of AWS services excluded from Automatic Management. You will need to include the AWS service code and one or more Service Quotas codes.
  late final pulumi.Output<Map<String, List<String>>?> exclusionList;
  /// The AWS User Notifications ARN for Automatic Management notifications.
  late final pulumi.Output<String?> notificationArn;
  /// The opt-in level for Automatic Management. Valid values: `ACCOUNT`.
  late final pulumi.Output<String> optInLevel;
  /// The opt-in type for Automatic Management. Valid values: `NotifyOnly`, `NotifyAndAdjust`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> optInType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AutoManagement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoManagement]. {@macro pulumi_servicequotas_auto_management_auto_management_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoManagement(
    String name, {
    AutoManagementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicequotas/autoManagement:AutoManagement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    exclusionList = registerOutput<Map<String, List<String>>?>('exclusionList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    notificationArn = registerOutput<String?>('notificationArn');
    optInLevel = registerOutput<String>('optInLevel');
    optInType = registerOutput<String>('optInType');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AutoManagement] resource's state with the given [name] and [id].
  static AutoManagement get(
    String name,
    pulumi.Input<String> id, {
    AutoManagementState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AutoManagement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AutoManagement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicequotas/autoManagement:AutoManagement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    exclusionList = registerOutput<Map<String, List<String>>?>('exclusionList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    notificationArn = registerOutput<String?>('notificationArn');
    optInLevel = registerOutput<String>('optInLevel');
    optInType = registerOutput<String>('optInType');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [AutoManagement] resource.
  AutoManagement.reference(String urn)
    : super(
        'aws:servicequotas/autoManagement:AutoManagement',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    exclusionList = registerOutput<Map<String, List<String>>?>('exclusionList', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); });
    notificationArn = registerOutput<String?>('notificationArn');
    optInLevel = registerOutput<String>('optInLevel');
    optInType = registerOutput<String>('optInType');
    region = registerOutput<String>('region');
  }
}
