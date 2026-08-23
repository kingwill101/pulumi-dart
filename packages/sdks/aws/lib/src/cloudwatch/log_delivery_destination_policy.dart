import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_destination_policy_args.dart';
import 'log_delivery_destination_policy_state.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery Destination Policy.
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
/// const example = new aws.cloudwatch.LogDeliveryDestinationPolicy("example", {
///     deliveryDestinationName: exampleAwsCloudwatchLogDeliveryDestination.name,
///     deliveryDestinationPolicy: exampleAwsIamPolicyDocument.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogDeliveryDestinationPolicy("example",
///     delivery_destination_name=example_aws_cloudwatch_log_delivery_destination["name"],
///     delivery_destination_policy=example_aws_iam_policy_document["json"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogDeliveryDestinationPolicy("example", new()
///     {
///         DeliveryDestinationName = exampleAwsCloudwatchLogDeliveryDestination.Name,
///         DeliveryDestinationPolicy = exampleAwsIamPolicyDocument.Json,
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
/// 		_, err := cloudwatch.NewLogDeliveryDestinationPolicy(ctx, "example", &cloudwatch.LogDeliveryDestinationPolicyArgs{
/// 			DeliveryDestinationName:   pulumi.Any(exampleAwsCloudwatchLogDeliveryDestination.Name),
/// 			DeliveryDestinationPolicy: pulumi.Any(exampleAwsIamPolicyDocument.Json),
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
/// resource "aws_cloudwatch_logdeliverydestinationpolicy" "example" {
///   delivery_destination_name   = exampleAwsCloudwatchLogDeliveryDestination.name
///   delivery_destination_policy = exampleAwsIamPolicyDocument.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationPolicy;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationPolicyArgs;
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
///         var example = new LogDeliveryDestinationPolicy("example", LogDeliveryDestinationPolicyArgs.builder()
///             .deliveryDestinationName(exampleAwsCloudwatchLogDeliveryDestination.name())
///             .deliveryDestinationPolicy(exampleAwsIamPolicyDocument.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogDeliveryDestinationPolicy
///     properties:
///       deliveryDestinationName: ${exampleAwsCloudwatchLogDeliveryDestination.name}
///       deliveryDestinationPolicy: ${exampleAwsIamPolicyDocument.json}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `deliveryDestinationName` (String) Name of the delivery destination
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Delivery Destination Policies using `deliveryDestinationName`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDeliveryDestinationPolicy:LogDeliveryDestinationPolicy example example
/// ```
class LogDeliveryDestinationPolicy extends pulumi.CustomResource {
  /// The name of the delivery destination to assign this policy to.
  late final pulumi.Output<String> deliveryDestinationName;
  /// The contents of the policy.
  late final pulumi.Output<String> deliveryDestinationPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LogDeliveryDestinationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogDeliveryDestinationPolicy]. {@macro pulumi_cloudwatch_log_delivery_destination_policy_log_delivery_destination_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogDeliveryDestinationPolicy(
    String name, {
    LogDeliveryDestinationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliveryDestinationPolicy:LogDeliveryDestinationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deliveryDestinationName = registerOutput<String>('deliveryDestinationName');
    deliveryDestinationPolicy = registerOutput<String>('deliveryDestinationPolicy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [LogDeliveryDestinationPolicy] resource's state with the given [name] and [id].
  static LogDeliveryDestinationPolicy get(
    String name,
    pulumi.Input<String> id, {
    LogDeliveryDestinationPolicyState? state,
  }) {
    return LogDeliveryDestinationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogDeliveryDestinationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliveryDestinationPolicy:LogDeliveryDestinationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deliveryDestinationName = registerOutput<String>('deliveryDestinationName');
    deliveryDestinationPolicy = registerOutput<String>('deliveryDestinationPolicy');
    region = registerOutput<String>('region');
  }
}
