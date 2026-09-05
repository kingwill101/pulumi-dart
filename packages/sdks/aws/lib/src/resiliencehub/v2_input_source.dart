import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_input_source_args.dart';
import 'v2_input_source_resource_configuration.dart';
import 'v2_input_source_state.dart';

/// Resource for managing an AWS Resilience Hub V2 Input Source.
///
/// An input source defines where Resilience Hub discovers AWS resources for a service. Supported source types include CloudFormation stacks, Terraform state files (stored in S3), and EKS clusters.
///
/// &gt; **Note:** This resource does not support in-place updates. Any change to the resource configuration will destroy and recreate the input source.
///
/// ## Example Usage
///
/// ### CloudFormation Stack
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2InputSource("example", {
///     resourceConfiguration: {
///         cfnStackArn: "arn:aws:cloudformation:us-west-2:123456789012:stack/my-stack/abc123",
///     },
///     serviceArn: exampleAwsResiliencehubv2Service.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2InputSource("example",
///     resource_configuration={
///         "cfn_stack_arn": "arn:aws:cloudformation:us-west-2:123456789012:stack/my-stack/abc123",
///     },
///     service_arn=example_aws_resiliencehubv2_service["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2InputSource("example", new()
///     {
///         ResourceConfiguration = new Aws.ResilienceHub.Inputs.V2InputSourceResourceConfigurationArgs
///         {
///             CfnStackArn = "arn:aws:cloudformation:us-west-2:123456789012:stack/my-stack/abc123",
///         },
///         ServiceArn = exampleAwsResiliencehubv2Service.Arn,
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
/// 		_, err := resiliencehub.NewV2InputSource(ctx, "example", &resiliencehub.V2InputSourceArgs{
/// 			ResourceConfiguration: &resiliencehub.V2InputSourceResourceConfigurationArgs{
/// 				CfnStackArn: pulumi.String("arn:aws:cloudformation:us-west-2:123456789012:stack/my-stack/abc123"),
/// 			},
/// 			ServiceArn: pulumi.Any(exampleAwsResiliencehubv2Service.Arn),
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
/// resource "aws_resiliencehub_v2inputsource" "example" {
///   resource_configuration = {
///     cfn_stack_arn = "arn:aws:cloudformation:us-west-2:123456789012:stack/my-stack/abc123"
///   }
///   service_arn = exampleAwsResiliencehubv2Service.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2InputSource;
/// import com.pulumi.aws.resiliencehub.V2InputSourceArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2InputSourceResourceConfigurationArgs;
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
///         var example = new V2InputSource("example", V2InputSourceArgs.builder()
///             .resourceConfiguration(V2InputSourceResourceConfigurationArgs.builder()
///                 .cfnStackArn("arn:aws:cloudformation:us-west-2:123456789012:stack/my-stack/abc123")
///                 .build())
///             .serviceArn(exampleAwsResiliencehubv2Service.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2InputSource
///     properties:
///       resourceConfiguration:
///         cfnStackArn: arn:aws:cloudformation:us-west-2:123456789012:stack/my-stack/abc123
///       serviceArn: ${exampleAwsResiliencehubv2Service.arn}
/// ```
///
///
/// ### Terraform State File
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2InputSource("example", {
///     resourceConfiguration: {
///         tfStateFileUrl: "s3://my-bucket/terraform.tfstate",
///     },
///     serviceArn: exampleAwsResiliencehubv2Service.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2InputSource("example",
///     resource_configuration={
///         "tf_state_file_url": "s3://my-bucket/terraform.tfstate",
///     },
///     service_arn=example_aws_resiliencehubv2_service["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2InputSource("example", new()
///     {
///         ResourceConfiguration = new Aws.ResilienceHub.Inputs.V2InputSourceResourceConfigurationArgs
///         {
///             TfStateFileUrl = "s3://my-bucket/terraform.tfstate",
///         },
///         ServiceArn = exampleAwsResiliencehubv2Service.Arn,
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
/// 		_, err := resiliencehub.NewV2InputSource(ctx, "example", &resiliencehub.V2InputSourceArgs{
/// 			ResourceConfiguration: &resiliencehub.V2InputSourceResourceConfigurationArgs{
/// 				TfStateFileUrl: pulumi.String("s3://my-bucket/terraform.tfstate"),
/// 			},
/// 			ServiceArn: pulumi.Any(exampleAwsResiliencehubv2Service.Arn),
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
/// resource "aws_resiliencehub_v2inputsource" "example" {
///   resource_configuration = {
///     tf_state_file_url = "s3://my-bucket/terraform.tfstate"
///   }
///   service_arn = exampleAwsResiliencehubv2Service.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2InputSource;
/// import com.pulumi.aws.resiliencehub.V2InputSourceArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2InputSourceResourceConfigurationArgs;
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
///         var example = new V2InputSource("example", V2InputSourceArgs.builder()
///             .resourceConfiguration(V2InputSourceResourceConfigurationArgs.builder()
///                 .tfStateFileUrl("s3://my-bucket/terraform.tfstate")
///                 .build())
///             .serviceArn(exampleAwsResiliencehubv2Service.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2InputSource
///     properties:
///       resourceConfiguration:
///         tfStateFileUrl: s3://my-bucket/terraform.tfstate
///       serviceArn: ${exampleAwsResiliencehubv2Service.arn}
/// ```
///
///
/// ### EKS Cluster
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2InputSource("example", {
///     resourceConfiguration: {
///         eks: {
///             clusterArn: "arn:aws:eks:us-west-2:123456789012:cluster/my-cluster",
///             namespaces: [
///                 "default",
///                 "production",
///             ],
///         },
///     },
///     serviceArn: exampleAwsResiliencehubv2Service.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2InputSource("example",
///     resource_configuration={
///         "eks": {
///             "cluster_arn": "arn:aws:eks:us-west-2:123456789012:cluster/my-cluster",
///             "namespaces": [
///                 "default",
///                 "production",
///             ],
///         },
///     },
///     service_arn=example_aws_resiliencehubv2_service["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2InputSource("example", new()
///     {
///         ResourceConfiguration = new Aws.ResilienceHub.Inputs.V2InputSourceResourceConfigurationArgs
///         {
///             Eks = new Aws.ResilienceHub.Inputs.V2InputSourceResourceConfigurationEksArgs
///             {
///                 ClusterArn = "arn:aws:eks:us-west-2:123456789012:cluster/my-cluster",
///                 Namespaces = new[]
///                 {
///                     "default",
///                     "production",
///                 },
///             },
///         },
///         ServiceArn = exampleAwsResiliencehubv2Service.Arn,
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
/// 		_, err := resiliencehub.NewV2InputSource(ctx, "example", &resiliencehub.V2InputSourceArgs{
/// 			ResourceConfiguration: &resiliencehub.V2InputSourceResourceConfigurationArgs{
/// 				Eks: &resiliencehub.V2InputSourceResourceConfigurationEksArgs{
/// 					ClusterArn: pulumi.String("arn:aws:eks:us-west-2:123456789012:cluster/my-cluster"),
/// 					Namespaces: pulumi.StringArray{
/// 						pulumi.String("default"),
/// 						pulumi.String("production"),
/// 					},
/// 				},
/// 			},
/// 			ServiceArn: pulumi.Any(exampleAwsResiliencehubv2Service.Arn),
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
/// resource "aws_resiliencehub_v2inputsource" "example" {
///   resource_configuration = {
///     eks = {
///       cluster_arn = "arn:aws:eks:us-west-2:123456789012:cluster/my-cluster"
///       namespaces  = ["default", "production"]
///     }
///   }
///   service_arn = exampleAwsResiliencehubv2Service.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2InputSource;
/// import com.pulumi.aws.resiliencehub.V2InputSourceArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2InputSourceResourceConfigurationArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2InputSourceResourceConfigurationEksArgs;
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
///         var example = new V2InputSource("example", V2InputSourceArgs.builder()
///             .resourceConfiguration(V2InputSourceResourceConfigurationArgs.builder()
///                 .eks(V2InputSourceResourceConfigurationEksArgs.builder()
///                     .clusterArn("arn:aws:eks:us-west-2:123456789012:cluster/my-cluster")
///                     .namespaces(
///                         "default",
///                         "production")
///                     .build())
///                 .build())
///             .serviceArn(exampleAwsResiliencehubv2Service.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2InputSource
///     properties:
///       resourceConfiguration:
///         eks:
///           clusterArn: arn:aws:eks:us-west-2:123456789012:cluster/my-cluster
///           namespaces:
///             - default
///             - production
///       serviceArn: ${exampleAwsResiliencehubv2Service.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `serviceArn` (String) ARN of the service this input source belongs to.
/// * `inputSourceId` (String) Unique identifier of the input source.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Resilience Hub V2 Input Source using the `serviceArn` and `inputSourceId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/v2InputSource:V2InputSource example arn:aws:resiliencehub:us-west-2:123456789012:service/example-service:abc123,12345678-1234-1234-1234-123456789012
/// ```
class V2InputSource extends pulumi.CustomResource {
  /// Unique identifier of the input source.
  late final pulumi.Output<String> inputSourceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource configuration for an input source. See `resourceConfiguration` Block below.
  late final pulumi.Output<V2InputSourceResourceConfiguration> resourceConfiguration;
  /// ARN of the service this input source belongs to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceArn;

  /// Creates a new [V2InputSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2InputSource]. {@macro pulumi_resiliencehub_v2_input_source_v2_input_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2InputSource(
    String name, {
    V2InputSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2InputSource:V2InputSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    inputSourceId = registerOutput<String>('inputSourceId');
    region = registerOutput<String>('region');
    resourceConfiguration = registerOutput<V2InputSourceResourceConfiguration>('resourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2InputSourceResourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceArn = registerOutput<String>('serviceArn');
  }

  /// Gets an existing [V2InputSource] resource's state with the given [name] and [id].
  static V2InputSource get(
    String name,
    pulumi.Input<String> id, {
    V2InputSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return V2InputSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  V2InputSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2InputSource:V2InputSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    inputSourceId = registerOutput<String>('inputSourceId');
    region = registerOutput<String>('region');
    resourceConfiguration = registerOutput<V2InputSourceResourceConfiguration>('resourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2InputSourceResourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceArn = registerOutput<String>('serviceArn');
  }

  /// Creates a typed reference to an existing [V2InputSource] resource.
  V2InputSource.reference(String urn)
    : super(
        'aws:resiliencehub/v2InputSource:V2InputSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    inputSourceId = registerOutput<String>('inputSourceId');
    region = registerOutput<String>('region');
    resourceConfiguration = registerOutput<V2InputSourceResourceConfiguration>('resourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return V2InputSourceResourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceArn = registerOutput<String>('serviceArn');
  }
}
