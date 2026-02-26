import 'package:pulumi/pulumi.dart';
import '../subscriber_notification_configuration/subscriber_notification_configuration.dart';
import 'subscriber_notification_args.dart';

/// Resource for managing an AWS Security Lake Subscriber Notification.
///
/// ## Example Usage
///
/// ### SQS Notification
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.SubscriberNotification("example", {
/// subscriberId: exampleAwsSecuritylakeSubscriber.id,
/// configuration: {
/// sqsNotificationConfiguration: {},
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.SubscriberNotification("example",
/// subscriber_id=example_aws_securitylake_subscriber["id"],
/// configuration={
/// "sqs_notification_configuration": {},
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
/// var example = new Aws.SecurityLake.SubscriberNotification("example", new()
/// {
/// SubscriberId = exampleAwsSecuritylakeSubscriber.Id,
/// Configuration = new Aws.SecurityLake.Inputs.SubscriberNotificationConfigurationArgs
/// {
/// SqsNotificationConfiguration = null,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitylake.NewSubscriberNotification(ctx, "example", &securitylake.SubscriberNotificationArgs{
/// SubscriberId: pulumi.Any(exampleAwsSecuritylakeSubscriber.Id),
/// Configuration: &securitylake.SubscriberNotificationConfigurationArgs{
/// SqsNotificationConfiguration: &securitylake.SubscriberNotificationConfigurationSqsNotificationConfigurationArgs{},
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
/// import com.pulumi.aws.securitylake.SubscriberNotification;
/// import com.pulumi.aws.securitylake.SubscriberNotificationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationSqsNotificationConfigurationArgs;
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
/// var example = new SubscriberNotification("example", SubscriberNotificationArgs.builder()
/// .subscriberId(exampleAwsSecuritylakeSubscriber.id())
/// .configuration(SubscriberNotificationConfigurationArgs.builder()
/// .sqsNotificationConfiguration(SubscriberNotificationConfigurationSqsNotificationConfigurationArgs.builder()
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securitylake:SubscriberNotification
/// properties:
/// subscriberId: ${exampleAwsSecuritylakeSubscriber.id}
/// configuration:
/// sqsNotificationConfiguration: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### HTTPS Notification
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securitylake.SubscriberNotification("example", {
/// subscriberId: exampleAwsSecuritylakeSubscriber.id,
/// configuration: {
/// httpsNotificationConfiguration: {
/// endpoint: test.apiEndpoint,
/// targetRoleArn: eventBridge.arn,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securitylake.SubscriberNotification("example",
/// subscriber_id=example_aws_securitylake_subscriber["id"],
/// configuration={
/// "https_notification_configuration": {
/// "endpoint": test["apiEndpoint"],
/// "target_role_arn": event_bridge["arn"],
/// },
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
/// var example = new Aws.SecurityLake.SubscriberNotification("example", new()
/// {
/// SubscriberId = exampleAwsSecuritylakeSubscriber.Id,
/// Configuration = new Aws.SecurityLake.Inputs.SubscriberNotificationConfigurationArgs
/// {
/// HttpsNotificationConfiguration = new Aws.SecurityLake.Inputs.SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs
/// {
/// Endpoint = test.ApiEndpoint,
/// TargetRoleArn = eventBridge.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securitylake"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := securitylake.NewSubscriberNotification(ctx, "example", &securitylake.SubscriberNotificationArgs{
/// SubscriberId: pulumi.Any(exampleAwsSecuritylakeSubscriber.Id),
/// Configuration: &securitylake.SubscriberNotificationConfigurationArgs{
/// HttpsNotificationConfiguration: &securitylake.SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs{
/// Endpoint:      pulumi.Any(test.ApiEndpoint),
/// TargetRoleArn: pulumi.Any(eventBridge.Arn),
/// },
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
/// import com.pulumi.aws.securitylake.SubscriberNotification;
/// import com.pulumi.aws.securitylake.SubscriberNotificationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationArgs;
/// import com.pulumi.aws.securitylake.inputs.SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs;
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
/// var example = new SubscriberNotification("example", SubscriberNotificationArgs.builder()
/// .subscriberId(exampleAwsSecuritylakeSubscriber.id())
/// .configuration(SubscriberNotificationConfigurationArgs.builder()
/// .httpsNotificationConfiguration(SubscriberNotificationConfigurationHttpsNotificationConfigurationArgs.builder()
/// .endpoint(test.apiEndpoint())
/// .targetRoleArn(eventBridge.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:securitylake:SubscriberNotification
/// properties:
/// subscriberId: ${exampleAwsSecuritylakeSubscriber.id}
/// configuration:
/// httpsNotificationConfiguration:
/// endpoint: ${test.apiEndpoint}
/// targetRoleArn: ${eventBridge.arn}
/// ```
/// <!--End PulumiCodeChooser -->
class SubscriberNotification extends CustomResource {
  /// Specify the configuration using which you want to create the subscriber notification..
  late final Output<SubscriberNotificationConfiguration> configuration;

  /// (**Deprecated**) The subscriber endpoint to which exception messages are posted.
  late final Output<String> endpointId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The subscriber endpoint to which exception messages are posted.
  late final Output<String> subscriberEndpoint;

  /// The subscriber ID for the notification subscription.
  late final Output<String> subscriberId;

  SubscriberNotification(
    String name, {
    SubscriberNotificationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securitylake/subscriberNotification:SubscriberNotification',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configuration =
        Output.createUnknown<SubscriberNotificationConfiguration>();
    this.endpointId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subscriberEndpoint = Output.createUnknown<String>();
    this.subscriberId = Output.createUnknown<String>();
  }
}
