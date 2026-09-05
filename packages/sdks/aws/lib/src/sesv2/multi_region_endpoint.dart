import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_endpoint_args.dart';
import 'multi_region_endpoint_details.dart';
import 'multi_region_endpoint_route.dart';
import 'multi_region_endpoint_state.dart';
import 'multi_region_endpoint_timeouts.dart';

/// Manages an AWS SESv2 (Simple Email V2) Multi Region Endpoint (global endpoint). Traffic is split equally between the primary region (where the resource is created) and the secondary region specified in the `details` block.
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
/// const example = new aws.sesv2.MultiRegionEndpoint("example", {
///     details: {
///         routesDetails: {
///             region: "example-alternate-region",
///         },
///     },
///     endpointName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.MultiRegionEndpoint("example",
///     details={
///         "routes_details": {
///             "region": "example-alternate-region",
///         },
///     },
///     endpoint_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.MultiRegionEndpoint("example", new()
///     {
///         Details = new Aws.SesV2.Inputs.MultiRegionEndpointDetailsArgs
///         {
///             RoutesDetails = new Aws.SesV2.Inputs.MultiRegionEndpointDetailsRoutesDetailsArgs
///             {
///                 Region = "example-alternate-region",
///             },
///         },
///         EndpointName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewMultiRegionEndpoint(ctx, "example", &sesv2.MultiRegionEndpointArgs{
/// 			Details: &sesv2.MultiRegionEndpointDetailsArgs{
/// 				RoutesDetails: &sesv2.MultiRegionEndpointDetailsRoutesDetailsArgs{
/// 					Region: pulumi.String("example-alternate-region"),
/// 				},
/// 			},
/// 			EndpointName: pulumi.String("example"),
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
/// resource "aws_sesv2_multiregionendpoint" "example" {
///   details = {
///     routes_details = {
///       region = "example-alternate-region"
///     }
///   }
///   endpoint_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sesv2.MultiRegionEndpoint;
/// import com.pulumi.aws.sesv2.MultiRegionEndpointArgs;
/// import com.pulumi.aws.sesv2.inputs.MultiRegionEndpointDetailsArgs;
/// import com.pulumi.aws.sesv2.inputs.MultiRegionEndpointDetailsRoutesDetailsArgs;
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
///         var example = new MultiRegionEndpoint("example", MultiRegionEndpointArgs.builder()
///             .details(MultiRegionEndpointDetailsArgs.builder()
///                 .routesDetails(MultiRegionEndpointDetailsRoutesDetailsArgs.builder()
///                     .region("example-alternate-region")
///                     .build())
///                 .build())
///             .endpointName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:MultiRegionEndpoint
///     properties:
///       details:
///         routesDetails:
///           region: example-alternate-region
///       endpointName: example
/// ```
class MultiRegionEndpoint extends pulumi.CustomResource {
  /// ARN of the multi-region endpoint.
  late final pulumi.Output<String> arn;
  /// Configuration details for the endpoint. See `details` Block below.
  late final pulumi.Output<MultiRegionEndpointDetails?> details;
  /// ID assigned to the multi-region endpoint.
  late final pulumi.Output<String> endpointId;
  /// Name of the multi-region endpoint.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> endpointName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of active routes. See `routes` below.
  late final pulumi.Output<List<MultiRegionEndpointRoute>> routes;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<MultiRegionEndpointTimeouts?> timeouts;

  /// Creates a new [MultiRegionEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiRegionEndpoint]. {@macro pulumi_sesv2_multi_region_endpoint_multi_region_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiRegionEndpoint(
    String name, {
    MultiRegionEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/multiRegionEndpoint:MultiRegionEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    details = registerOutput<MultiRegionEndpointDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionEndpointDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointId = registerOutput<String>('endpointId');
    endpointName = registerOutput<String>('endpointName');
    region = registerOutput<String>('region');
    routes = registerOutput<List<MultiRegionEndpointRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultiRegionEndpointRoute>(guardedValue, (value) => MultiRegionEndpointRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MultiRegionEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [MultiRegionEndpoint] resource's state with the given [name] and [id].
  static MultiRegionEndpoint get(
    String name,
    pulumi.Input<String> id, {
    MultiRegionEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MultiRegionEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MultiRegionEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/multiRegionEndpoint:MultiRegionEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    details = registerOutput<MultiRegionEndpointDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionEndpointDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointId = registerOutput<String>('endpointId');
    endpointName = registerOutput<String>('endpointName');
    region = registerOutput<String>('region');
    routes = registerOutput<List<MultiRegionEndpointRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultiRegionEndpointRoute>(guardedValue, (value) => MultiRegionEndpointRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MultiRegionEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [MultiRegionEndpoint] resource.
  MultiRegionEndpoint.reference(String urn)
    : super(
        'aws:sesv2/multiRegionEndpoint:MultiRegionEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    details = registerOutput<MultiRegionEndpointDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionEndpointDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    endpointId = registerOutput<String>('endpointId');
    endpointName = registerOutput<String>('endpointName');
    region = registerOutput<String>('region');
    routes = registerOutput<List<MultiRegionEndpointRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultiRegionEndpointRoute>(guardedValue, (value) => MultiRegionEndpointRoute.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<MultiRegionEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiRegionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
