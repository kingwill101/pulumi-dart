import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_assertion_args.dart';
import 'v2_assertion_state.dart';

/// Resource for managing an AWS Resilience Hub V2 Assertion.
///
/// An assertion is a statement about your application that provides context for failure mode assessments. Assertions help the GenAI assessment engine understand aspects of your architecture that aren't visible from resource configuration alone (e.g., "Data loss is unacceptable", "Typical traffic is 1000 TPS spiking to 10000 TPS").
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
/// const example = new aws.resiliencehub.V2Assertion("example", {
///     serviceArn: exampleAwsResiliencehubv2Service.arn,
///     text: "The service must recover within 5 minutes of an AZ failure",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2Assertion("example",
///     service_arn=example_aws_resiliencehubv2_service["arn"],
///     text="The service must recover within 5 minutes of an AZ failure")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2Assertion("example", new()
///     {
///         ServiceArn = exampleAwsResiliencehubv2Service.Arn,
///         Text = "The service must recover within 5 minutes of an AZ failure",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resiliencehub.NewV2Assertion(ctx, "example", &resiliencehub.V2AssertionArgs{
/// 			ServiceArn: pulumi.Any(exampleAwsResiliencehubv2Service.Arn),
/// 			Text:       pulumi.String("The service must recover within 5 minutes of an AZ failure"),
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
/// resource "aws_resiliencehub_v2assertion" "example" {
///   service_arn = exampleAwsResiliencehubv2Service.arn
///   text        = "The service must recover within 5 minutes of an AZ failure"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2Assertion;
/// import com.pulumi.aws.resiliencehub.V2AssertionArgs;
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
///         var example = new V2Assertion("example", V2AssertionArgs.builder()
///             .serviceArn(exampleAwsResiliencehubv2Service.arn())
///             .text("The service must recover within 5 minutes of an AZ failure")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2Assertion
///     properties:
///       serviceArn: ${exampleAwsResiliencehubv2Service.arn}
///       text: The service must recover within 5 minutes of an AZ failure
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `serviceArn` (String) ARN of the service this assertion belongs to.
/// * `assertionId` (String) Unique identifier of the assertion.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Resilience Hub V2 Assertion using the `serviceArn` and `assertionId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/v2Assertion:V2Assertion example arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123,12345678-1234-1234-1234-123456789012
/// ```
class V2Assertion extends pulumi.CustomResource {
  /// Unique identifier of the assertion.
  late final pulumi.Output<String> assertionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the service this assertion belongs to. Changing this value requires creating a new resource.
  late final pulumi.Output<String> serviceArn;
  /// Text of the resilience assertion.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> text;

  /// Creates a new [V2Assertion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2Assertion]. {@macro pulumi_resiliencehub_v2_assertion_v2_assertion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2Assertion(
    String name, {
    V2AssertionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2Assertion:V2Assertion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    assertionId = registerOutput<String>('assertionId');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    text = registerOutput<String>('text');
  }

  /// Gets an existing [V2Assertion] resource's state with the given [name] and [id].
  static V2Assertion get(
    String name,
    pulumi.Input<String> id, {
    V2AssertionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2Assertion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2Assertion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2Assertion:V2Assertion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assertionId = registerOutput<String>('assertionId');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    text = registerOutput<String>('text');
  }

  /// Creates a typed reference to an existing [V2Assertion] resource.
  V2Assertion.reference(String urn)
    : super(
        'aws:resiliencehub/v2Assertion:V2Assertion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    assertionId = registerOutput<String>('assertionId');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    text = registerOutput<String>('text');
  }
}
