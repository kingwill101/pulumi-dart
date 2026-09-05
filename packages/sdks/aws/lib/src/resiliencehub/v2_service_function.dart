import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_service_function_args.dart';
import 'v2_service_function_state.dart';

/// Resource for managing an AWS Resilience Hub V2 Service Function.
///
/// A service function represents a technical subset of the service topology that represents a specific workflow within a service. For example, an authentication service might have separate service functions for "SSO sign-in" and "Registration".
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
/// const example = new aws.resiliencehub.V2ServiceFunction("example", {
///     serviceArn: exampleAwsResiliencehubv2Service.arn,
///     name: "example-function",
///     criticality: "PRIMARY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2ServiceFunction("example",
///     service_arn=example_aws_resiliencehubv2_service["arn"],
///     name="example-function",
///     criticality="PRIMARY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2ServiceFunction("example", new()
///     {
///         ServiceArn = exampleAwsResiliencehubv2Service.Arn,
///         Name = "example-function",
///         Criticality = "PRIMARY",
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
/// 		_, err := resiliencehub.NewV2ServiceFunction(ctx, "example", &resiliencehub.V2ServiceFunctionArgs{
/// 			ServiceArn:  pulumi.Any(exampleAwsResiliencehubv2Service.Arn),
/// 			Name:        pulumi.String("example-function"),
/// 			Criticality: pulumi.String("PRIMARY"),
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
/// resource "aws_resiliencehub_v2servicefunction" "example" {
///   service_arn = exampleAwsResiliencehubv2Service.arn
///   name        = "example-function"
///   criticality = "PRIMARY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2ServiceFunction;
/// import com.pulumi.aws.resiliencehub.V2ServiceFunctionArgs;
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
///         var example = new V2ServiceFunction("example", V2ServiceFunctionArgs.builder()
///             .serviceArn(exampleAwsResiliencehubv2Service.arn())
///             .name("example-function")
///             .criticality("PRIMARY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2ServiceFunction
///     properties:
///       serviceArn: ${exampleAwsResiliencehubv2Service.arn}
///       name: example-function
///       criticality: PRIMARY
/// ```
///
///
/// ### With Description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2ServiceFunction("example", {
///     serviceArn: exampleAwsResiliencehubv2Service.arn,
///     name: "payment-processing",
///     description: "Handles payment transaction processing",
///     criticality: "PRIMARY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2ServiceFunction("example",
///     service_arn=example_aws_resiliencehubv2_service["arn"],
///     name="payment-processing",
///     description="Handles payment transaction processing",
///     criticality="PRIMARY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2ServiceFunction("example", new()
///     {
///         ServiceArn = exampleAwsResiliencehubv2Service.Arn,
///         Name = "payment-processing",
///         Description = "Handles payment transaction processing",
///         Criticality = "PRIMARY",
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
/// 		_, err := resiliencehub.NewV2ServiceFunction(ctx, "example", &resiliencehub.V2ServiceFunctionArgs{
/// 			ServiceArn:  pulumi.Any(exampleAwsResiliencehubv2Service.Arn),
/// 			Name:        pulumi.String("payment-processing"),
/// 			Description: pulumi.String("Handles payment transaction processing"),
/// 			Criticality: pulumi.String("PRIMARY"),
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
/// resource "aws_resiliencehub_v2servicefunction" "example" {
///   service_arn = exampleAwsResiliencehubv2Service.arn
///   name        = "payment-processing"
///   description = "Handles payment transaction processing"
///   criticality = "PRIMARY"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2ServiceFunction;
/// import com.pulumi.aws.resiliencehub.V2ServiceFunctionArgs;
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
///         var example = new V2ServiceFunction("example", V2ServiceFunctionArgs.builder()
///             .serviceArn(exampleAwsResiliencehubv2Service.arn())
///             .name("payment-processing")
///             .description("Handles payment transaction processing")
///             .criticality("PRIMARY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2ServiceFunction
///     properties:
///       serviceArn: ${exampleAwsResiliencehubv2Service.arn}
///       name: payment-processing
///       description: Handles payment transaction processing
///       criticality: PRIMARY
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `serviceArn` (String) ARN of the service this service function belongs to.
/// * `serviceFunctionId` (String) Unique identifier of the service function.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Resilience Hub V2 Service Function using the `serviceArn` and `serviceFunctionId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/v2ServiceFunction:V2ServiceFunction example arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123,12345678-1234-1234-1234-123456789012
/// ```
class V2ServiceFunction extends pulumi.CustomResource {
  /// Criticality level of the service function. Valid values: `PRIMARY`, `SUPPLEMENTAL`.
  late final pulumi.Output<String> criticality;
  /// Description of the service function.
  late final pulumi.Output<String?> description;
  /// Name of the service function.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the service this function belongs to. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceArn;
  /// Unique identifier of the service function.
  late final pulumi.Output<String> serviceFunctionId;

  /// Creates a new [V2ServiceFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2ServiceFunction]. {@macro pulumi_resiliencehub_v2_service_function_v2_service_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2ServiceFunction(
    String name, {
    V2ServiceFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2ServiceFunction:V2ServiceFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    criticality = registerOutput<String>('criticality');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    serviceFunctionId = registerOutput<String>('serviceFunctionId');
  }

  /// Gets an existing [V2ServiceFunction] resource's state with the given [name] and [id].
  static V2ServiceFunction get(
    String name,
    pulumi.Input<String> id, {
    V2ServiceFunctionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2ServiceFunction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2ServiceFunction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2ServiceFunction:V2ServiceFunction',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    criticality = registerOutput<String>('criticality');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    serviceFunctionId = registerOutput<String>('serviceFunctionId');
  }

  /// Creates a typed reference to an existing [V2ServiceFunction] resource.
  V2ServiceFunction.reference(String urn)
    : super(
        'aws:resiliencehub/v2ServiceFunction:V2ServiceFunction',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    criticality = registerOutput<String>('criticality');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    serviceFunctionId = registerOutput<String>('serviceFunctionId');
  }
}
