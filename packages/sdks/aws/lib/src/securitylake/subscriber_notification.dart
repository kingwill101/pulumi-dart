import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_notification_args.dart';
import 'subscriber_notification_configuration.dart';
import 'subscriber_notification_state.dart';

/// Resource for managing an AWS Security Lake Subscriber Notification.
///
/// ## Example Usage
///
/// ### SQS Notification
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.SubscriberNotification("example", {
///     configuration: {
///         sqsNotificationConfiguration: {},
///     },
///     subscriberId: exampleAwsSecuritylakeSubscriber.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.SubscriberNotification("example",
///     configuration={
///         "sqs_notification_configuration": {},
///     },
///     subscriber_id=example_aws_securitylake_subscriber["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityLake.SubscriberNotification("example", new()
///     {
///         Configuration = new Aws.SecurityLake.Inputs.SubscriberNotificationConfigurationArgs
///         {
///             SqsNotificationConfiguration = null,
///         },
///         SubscriberId = exampleAwsSecuritylakeSubscriber.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitylake.NewSubscriberNotification(ctx, "example", &securitylake.SubscriberNotificationArgs{
/// 			Configuration: &securitylake.SubscriberNotificationConfigurationArgs{
/// 				SqsNotificationConfiguration: &securitylake.SubscriberNotificationConfigurationSqsNotificationConfigurationArgs{},
/// 			},
/// 			SubscriberId: pulumi.Any(exampleAwsSecuritylakeSubscriber.Id),
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
/// resource "aws_securitylake_subscribernotification" "example" {
///   configuration = {
///     sqs_notification_configuration = {}
///   }
///   subscriber_id = exampleAwsSecuritylakeSubscriber.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securitylake.SubscriberNotification;
/// import com.pulumi.aws.securitylake.SubscriberNotificationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationSqsNotificationConfigurationArgs;
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
///         var example = new SubscriberNotification("example", SubscriberNotificationArgs.builder()
///             .configuration(SubscriberNotificationConfigurationArgs.builder()
///                 .sqsNotificationConfiguration(SubscriberNotificationConfigurationSqsNotificationConfigurationArgs.builder()
///                     .build())
///                 .build())
///             .subscriberId(exampleAwsSecuritylakeSubscriber.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securitylake:SubscriberNotification
///     properties:
///       configuration:
///         sqsNotificationConfiguration: {}
///       subscriberId: ${exampleAwsSecuritylakeSubscriber.id}
/// ```
///
///
/// ### HTTPS Notification
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.SubscriberNotification("example", {
///     configuration: {
///         httpsNotificationConfiguration: {
///             endpoint: test.apiEndpoint,
///             targetRoleArn: eventBridge.arn,
///         },
///     },
///     subscriberId: exampleAwsSecuritylakeSubscriber.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.SubscriberNotification("example",
///     configuration={
///         "https_notification_configuration": {
///             "endpoint": test["apiEndpoint"],
///             "target_role_arn": event_bridge["arn"],
///         },
///     },
///     subscriber_id=example_aws_securitylake_subscriber["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityLake.SubscriberNotification("example", new()
///     {
///         Configuration = new Aws.SecurityLake.Inputs.SubscriberNotificationConfigurationArgs
///         {
///             HttpsNotificationConfiguration = new Aws.SecurityLake.Inputs.SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs
///             {
///                 Endpoint = test.ApiEndpoint,
///                 TargetRoleArn = eventBridge.Arn,
///             },
///         },
///         SubscriberId = exampleAwsSecuritylakeSubscriber.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securitylake.NewSubscriberNotification(ctx, "example", &securitylake.SubscriberNotificationArgs{
/// 			Configuration: &securitylake.SubscriberNotificationConfigurationArgs{
/// 				HttpsNotificationConfiguration: &securitylake.SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs{
/// 					Endpoint:      pulumi.Any(test.ApiEndpoint),
/// 					TargetRoleArn: pulumi.Any(eventBridge.Arn),
/// 				},
/// 			},
/// 			SubscriberId: pulumi.Any(exampleAwsSecuritylakeSubscriber.Id),
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
/// resource "aws_securitylake_subscribernotification" "example" {
///   configuration = {
///     https_notification_configuration = {
///       endpoint        = test.apiEndpoint
///       target_role_arn = eventBridge.arn
///     }
///   }
///   subscriber_id = exampleAwsSecuritylakeSubscriber.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securitylake.SubscriberNotification;
/// import com.pulumi.aws.securitylake.SubscriberNotificationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs;
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
///         var example = new SubscriberNotification("example", SubscriberNotificationArgs.builder()
///             .configuration(SubscriberNotificationConfigurationArgs.builder()
///                 .httpsNotificationConfiguration(SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs.builder()
///                     .endpoint(test.apiEndpoint())
///                     .targetRoleArn(eventBridge.arn())
///                     .build())
///                 .build())
///             .subscriberId(exampleAwsSecuritylakeSubscriber.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securitylake:SubscriberNotification
///     properties:
///       configuration:
///         httpsNotificationConfiguration:
///           endpoint: ${test.apiEndpoint}
///           targetRoleArn: ${eventBridge.arn}
///       subscriberId: ${exampleAwsSecuritylakeSubscriber.id}
/// ```
class SubscriberNotification extends pulumi.CustomResource {
  /// Specify the configuration using which you want to create the subscriber notification..
  late final pulumi.Output<SubscriberNotificationConfiguration> configuration;
  /// (**Deprecated**) The subscriber endpoint to which exception messages are posted.
  late final pulumi.Output<String> endpointId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The subscriber endpoint to which exception messages are posted.
  late final pulumi.Output<String> subscriberEndpoint;
  /// The subscriber ID for the notification subscription.
  late final pulumi.Output<String> subscriberId;

  /// Creates a new [SubscriberNotification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubscriberNotification]. {@macro pulumi_securitylake_subscriber_notification_subscriber_notification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubscriberNotification(
    String name, {
    SubscriberNotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/subscriberNotification:SubscriberNotification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    configuration = registerOutput<SubscriberNotificationConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriberNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointId = registerOutput<String>('endpointId');
    region = registerOutput<String>('region');
    subscriberEndpoint = registerOutput<String>('subscriberEndpoint');
    subscriberId = registerOutput<String>('subscriberId');
  }

  /// Gets an existing [SubscriberNotification] resource's state with the given [name] and [id].
  static SubscriberNotification get(
    String name,
    pulumi.Input<String> id, {
    SubscriberNotificationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SubscriberNotification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SubscriberNotification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/subscriberNotification:SubscriberNotification',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configuration = registerOutput<SubscriberNotificationConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriberNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointId = registerOutput<String>('endpointId');
    region = registerOutput<String>('region');
    subscriberEndpoint = registerOutput<String>('subscriberEndpoint');
    subscriberId = registerOutput<String>('subscriberId');
  }

  /// Creates a typed reference to an existing [SubscriberNotification] resource.
  SubscriberNotification.reference(String urn)
    : super(
        'aws:securitylake/subscriberNotification:SubscriberNotification',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configuration = registerOutput<SubscriberNotificationConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriberNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointId = registerOutput<String>('endpointId');
    region = registerOutput<String>('region');
    subscriberEndpoint = registerOutput<String>('subscriberEndpoint');
    subscriberId = registerOutput<String>('subscriberId');
  }
}
