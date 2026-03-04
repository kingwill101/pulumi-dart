import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_service_private_dns_verification_args.dart';
import 'endpoint_service_private_dns_verification_state.dart';
import 'endpoint_service_private_dns_verification_timeouts.dart';

/// Resource for managing an AWS VPC (Virtual Private Cloud) Endpoint Service Private DNS Verification.
/// This resource begins the verification process by calling the [`StartVpcEndpointServicePrivateDnsVerification`](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_StartVpcEndpointServicePrivateDnsVerification.html) API.
/// The service provider should add a record to the DNS server _before_ creating this resource.
///
/// For additional details, refer to the AWS documentation on [managing VPC endpoint service DNS names](https://docs.aws.amazon.com/vpc/latest/privatelink/manage-dns-names.html).
///
/// &gt; Destruction of this resource will not stop the verification process, only remove the resource from state.
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
/// const example = new aws.vpc.EndpointServicePrivateDnsVerification("example", {serviceId: exampleAwsVpcEndpointService.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.EndpointServicePrivateDnsVerification("example", service_id=example_aws_vpc_endpoint_service["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Vpc.EndpointServicePrivateDnsVerification("example", new()
///     {
///         ServiceId = exampleAwsVpcEndpointService.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.NewEndpointServicePrivateDnsVerification(ctx, "example", &vpc.EndpointServicePrivateDnsVerificationArgs{
/// 			ServiceId: pulumi.Any(exampleAwsVpcEndpointService.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpc.EndpointServicePrivateDnsVerification;
/// import com.pulumi.aws.vpc.EndpointServicePrivateDnsVerificationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new EndpointServicePrivateDnsVerification("example", EndpointServicePrivateDnsVerificationArgs.builder()
///             .serviceId(exampleAwsVpcEndpointService.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpc:EndpointServicePrivateDnsVerification
///     properties:
///       serviceId: ${exampleAwsVpcEndpointService.id}
/// ```
///
///
/// ## Import
///
/// You cannot import this resource.
class EndpointServicePrivateDnsVerification extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ID of the endpoint service.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceId;
  late final pulumi.Output<EndpointServicePrivateDnsVerificationTimeouts?>
  timeouts;

  /// Whether to wait until the endpoint service returns a `Verified` status for the configured private DNS name.
  late final pulumi.Output<bool?> waitForVerification;

  /// Creates a new [EndpointServicePrivateDnsVerification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EndpointServicePrivateDnsVerification]. {@macro pulumi_vpc_endpoint_service_private_dns_verification_endpoint_service_private_dns_verification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EndpointServicePrivateDnsVerification(
    String name, {
    EndpointServicePrivateDnsVerificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpc/endpointServicePrivateDnsVerification:EndpointServicePrivateDnsVerification',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    region = registerOutput<String>('region');
    serviceId = registerOutput<String>('serviceId');
    timeouts = registerOutput<EndpointServicePrivateDnsVerificationTimeouts?>(
      'timeouts',
    );
    waitForVerification = registerOutput<bool?>('waitForVerification');
  }

  /// Gets an existing [EndpointServicePrivateDnsVerification] resource's state with the given [name] and [id].
  static EndpointServicePrivateDnsVerification get(
    String name,
    pulumi.Input<String> id, {
    EndpointServicePrivateDnsVerificationState? state,
  }) {
    return EndpointServicePrivateDnsVerification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EndpointServicePrivateDnsVerification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:vpc/endpointServicePrivateDnsVerification:EndpointServicePrivateDnsVerification',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    region = registerOutput<String>('region');
    serviceId = registerOutput<String>('serviceId');
    timeouts = registerOutput<EndpointServicePrivateDnsVerificationTimeouts?>(
      'timeouts',
    );
    waitForVerification = registerOutput<bool?>('waitForVerification');
  }
}
