import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_endpoint_args.dart';
import 'pipeline_endpoint_state.dart';
import 'pipeline_endpoint_timeouts.dart';
import 'pipeline_endpoint_vpc_options.dart';

/// Resource for managing an AWS OpenSearch Ingestion Pipeline Endpoint.
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
/// const example = new aws.opensearchingest.PipelineEndpoint("example", {
///     vpcOptions: {
///         securityGroupIds: [exampleAwsSecurityGroup.id],
///         subnetIds: [exampleAwsSubnet.id],
///     },
///     pipelineArn: exampleAwsOsisPipeline.pipelineArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearchingest.PipelineEndpoint("example",
///     vpc_options={
///         "security_group_ids": [example_aws_security_group["id"]],
///         "subnet_ids": [example_aws_subnet["id"]],
///     },
///     pipeline_arn=example_aws_osis_pipeline["pipelineArn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearchIngest.PipelineEndpoint("example", new()
///     {
///         VpcOptions = new Aws.OpenSearchIngest.Inputs.PipelineEndpointVpcOptionsArgs
///         {
///             SecurityGroupIds = new[]
///             {
///                 exampleAwsSecurityGroup.Id,
///             },
///             SubnetIds = new[]
///             {
///                 exampleAwsSubnet.Id,
///             },
///         },
///         PipelineArn = exampleAwsOsisPipeline.PipelineArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearchingest"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearchingest.NewPipelineEndpoint(ctx, "example", &opensearchingest.PipelineEndpointArgs{
/// 			VpcOptions: &opensearchingest.PipelineEndpointVpcOptionsArgs{
/// 				SecurityGroupIds: pulumi.StringArray{
/// 					exampleAwsSecurityGroup.Id,
/// 				},
/// 				SubnetIds: pulumi.StringArray{
/// 					exampleAwsSubnet.Id,
/// 				},
/// 			},
/// 			PipelineArn: pulumi.Any(exampleAwsOsisPipeline.PipelineArn),
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
/// resource "aws_opensearchingest_pipelineendpoint" "example" {
///   vpc_options = {
///     security_group_ids = [exampleAwsSecurityGroup.id]
///     subnet_ids         = [exampleAwsSubnet.id]
///   }
///   pipeline_arn = exampleAwsOsisPipeline.pipelineArn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearchingest.PipelineEndpoint;
/// import com.pulumi.aws.opensearchingest.PipelineEndpointArgs;
/// import com.pulumi.aws.opensearchingest.inputs.PipelineEndpointVpcOptionsArgs;
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
///         var example = new PipelineEndpoint("example", PipelineEndpointArgs.builder()
///             .vpcOptions(PipelineEndpointVpcOptionsArgs.builder()
///                 .securityGroupIds(exampleAwsSecurityGroup.id())
///                 .subnetIds(exampleAwsSubnet.id())
///                 .build())
///             .pipelineArn(exampleAwsOsisPipeline.pipelineArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearchingest:PipelineEndpoint
///     properties:
///       vpcOptions:
///         securityGroupIds:
///           - ${exampleAwsSecurityGroup.id}
///         subnetIds:
///           - ${exampleAwsSubnet.id}
///       pipelineArn: ${exampleAwsOsisPipeline.pipelineArn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the pipeline endpoint.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import OpenSearch Ingestion Pipeline Endpoint using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearchingest/pipelineEndpoint:PipelineEndpoint example endpoint-id
/// ```
class PipelineEndpoint extends pulumi.CustomResource {
  /// ARN of the pipeline to create the endpoint for.
  late final pulumi.Output<String> pipelineArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the endpoint.
  late final pulumi.Output<String> status;
  late final pulumi.Output<PipelineEndpointTimeouts?> timeouts;
  /// ID of the VPC. Derived from `subnetIds`.
  late final pulumi.Output<String> vpcId;
  /// VPC options for the pipeline endpoint. See `vpcOptions` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<PipelineEndpointVpcOptions?> vpcOptions;

  /// Creates a new [PipelineEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineEndpoint]. {@macro pulumi_opensearchingest_pipeline_endpoint_pipeline_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineEndpoint(
    String name, {
    PipelineEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearchingest/pipelineEndpoint:PipelineEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    pipelineArn = registerOutput<String>('pipelineArn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<PipelineEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcId = registerOutput<String>('vpcId');
    vpcOptions = registerOutput<PipelineEndpointVpcOptions?>('vpcOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineEndpointVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [PipelineEndpoint] resource's state with the given [name] and [id].
  static PipelineEndpoint get(
    String name,
    pulumi.Input<String> id, {
    PipelineEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PipelineEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PipelineEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearchingest/pipelineEndpoint:PipelineEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    pipelineArn = registerOutput<String>('pipelineArn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<PipelineEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcId = registerOutput<String>('vpcId');
    vpcOptions = registerOutput<PipelineEndpointVpcOptions?>('vpcOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineEndpointVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PipelineEndpoint] resource.
  PipelineEndpoint.reference(String urn)
    : super(
        'aws:opensearchingest/pipelineEndpoint:PipelineEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    pipelineArn = registerOutput<String>('pipelineArn');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    timeouts = registerOutput<PipelineEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcId = registerOutput<String>('vpcId');
    vpcOptions = registerOutput<PipelineEndpointVpcOptions?>('vpcOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineEndpointVpcOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
