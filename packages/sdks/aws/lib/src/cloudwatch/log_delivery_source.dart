import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_source_args.dart';
import 'log_delivery_source_state.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery Source.
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
/// const example = new aws.cloudwatch.LogDeliverySource("example", {
///     name: "example",
///     logType: "APPLICATION_LOGS",
///     resourceArn: exampleAwsBedrockagentKnowledgeBase.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogDeliverySource("example",
///     name="example",
///     log_type="APPLICATION_LOGS",
///     resource_arn=example_aws_bedrockagent_knowledge_base["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogDeliverySource("example", new()
///     {
///         Name = "example",
///         LogType = "APPLICATION_LOGS",
///         ResourceArn = exampleAwsBedrockagentKnowledgeBase.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogDeliverySource(ctx, "example", &cloudwatch.LogDeliverySourceArgs{
/// 			Name:        pulumi.String("example"),
/// 			LogType:     pulumi.String("APPLICATION_LOGS"),
/// 			ResourceArn: pulumi.Any(exampleAwsBedrockagentKnowledgeBase.Arn),
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
/// resource "aws_cloudwatch_logdeliverysource" "example" {
///   name         = "example"
///   log_type     = "APPLICATION_LOGS"
///   resource_arn = exampleAwsBedrockagentKnowledgeBase.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogDeliverySource;
/// import com.pulumi.aws.cloudwatch.LogDeliverySourceArgs;
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
///         var example = new LogDeliverySource("example", LogDeliverySourceArgs.builder()
///             .name("example")
///             .logType("APPLICATION_LOGS")
///             .resourceArn(exampleAwsBedrockagentKnowledgeBase.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogDeliverySource
///     properties:
///       name: example
///       logType: APPLICATION_LOGS
///       resourceArn: ${exampleAwsBedrockagentKnowledgeBase.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the delivery source.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Delivery Sources using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDeliverySource:LogDeliverySource example example
/// ```
class LogDeliverySource extends pulumi.CustomResource {
  /// ARN of the delivery source.
  late final pulumi.Output<String> arn;
  /// The type of log that the source is sending. For Amazon Bedrock, the valid value is `APPLICATION_LOGS`. For Amazon Bedrock AgentCore, the valid values are `APPLICATION_LOGS`, `TRACES`, and `USAGE_LOGS`. For Amazon CloudFront, the valid value is `ACCESS_LOGS`. For Amazon CodeWhisperer, the valid value is `EVENT_LOGS`. For IAM Identity Center, the valid value is `ERROR_LOGS`. For Amazon WorkMail, the valid values are `ACCESS_CONTROL_LOGS`, `AUTHENTICATION_LOGS`, `WORKMAIL_AVAILABILITY_PROVIDER_LOGS`, and `WORKMAIL_MAILBOX_ACCESS_LOGS`. See [Enable logging from AWS services](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html) for the log types supported by each service.
  late final pulumi.Output<String> logType;
  /// The name for this delivery source.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the AWS resource that is generating and sending logs.
  late final pulumi.Output<String> resourceArn;
  /// The AWS service that is sending logs.
  late final pulumi.Output<String> service;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LogDeliverySource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogDeliverySource]. {@macro pulumi_cloudwatch_log_delivery_source_log_delivery_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogDeliverySource(
    String name, {
    LogDeliverySourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliverySource:LogDeliverySource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    logType = registerOutput<String>('logType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    service = registerOutput<String>('service');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [LogDeliverySource] resource's state with the given [name] and [id].
  static LogDeliverySource get(
    String name,
    pulumi.Input<String> id, {
    LogDeliverySourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogDeliverySource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogDeliverySource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliverySource:LogDeliverySource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    logType = registerOutput<String>('logType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    service = registerOutput<String>('service');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [LogDeliverySource] resource.
  LogDeliverySource.reference(String urn)
    : super(
        'aws:cloudwatch/logDeliverySource:LogDeliverySource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    logType = registerOutput<String>('logType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    service = registerOutput<String>('service');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
