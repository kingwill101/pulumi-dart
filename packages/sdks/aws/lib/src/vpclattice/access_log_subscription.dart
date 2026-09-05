import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_log_subscription_args.dart';
import 'access_log_subscription_state.dart';

/// Resource for managing an AWS VPC Lattice Service Network or Service Access log subscription.
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
/// const example = new aws.vpclattice.AccessLogSubscription("example", {
///     resourceIdentifier: exampleAwsVpclatticeServiceNetwork.id,
///     destinationArn: bucket.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.AccessLogSubscription("example",
///     resource_identifier=example_aws_vpclattice_service_network["id"],
///     destination_arn=bucket["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.AccessLogSubscription("example", new()
///     {
///         ResourceIdentifier = exampleAwsVpclatticeServiceNetwork.Id,
///         DestinationArn = bucket.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewAccessLogSubscription(ctx, "example", &vpclattice.AccessLogSubscriptionArgs{
/// 			ResourceIdentifier: pulumi.Any(exampleAwsVpclatticeServiceNetwork.Id),
/// 			DestinationArn:     pulumi.Any(bucket.Arn),
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
/// resource "aws_vpclattice_accesslogsubscription" "example" {
///   resource_identifier = exampleAwsVpclatticeServiceNetwork.id
///   destination_arn     = bucket.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.AccessLogSubscription;
/// import com.pulumi.aws.vpclattice.AccessLogSubscriptionArgs;
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
///         var example = new AccessLogSubscription("example", AccessLogSubscriptionArgs.builder()
///             .resourceIdentifier(exampleAwsVpclatticeServiceNetwork.id())
///             .destinationArn(bucket.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:AccessLogSubscription
///     properties:
///       resourceIdentifier: ${exampleAwsVpclatticeServiceNetwork.id}
///       destinationArn: ${bucket.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Access Log Subscription using the access log subscription ID. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/accessLogSubscription:AccessLogSubscription example rft-8012925589
/// ```
class AccessLogSubscription extends pulumi.CustomResource {
  /// ARN of the access log subscription.
  late final pulumi.Output<String> arn;
  /// ARN of the log destination.
  late final pulumi.Output<String> destinationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the service network or service.
  late final pulumi.Output<String> resourceArn;
  /// ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceIdentifier;
  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  late final pulumi.Output<String> serviceNetworkLogType;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AccessLogSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessLogSubscription]. {@macro pulumi_vpclattice_access_log_subscription_access_log_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessLogSubscription(
    String name, {
    AccessLogSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/accessLogSubscription:AccessLogSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    destinationArn = registerOutput<String>('destinationArn');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceIdentifier = registerOutput<String>('resourceIdentifier');
    serviceNetworkLogType = registerOutput<String>('serviceNetworkLogType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AccessLogSubscription] resource's state with the given [name] and [id].
  static AccessLogSubscription get(
    String name,
    pulumi.Input<String> id, {
    AccessLogSubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessLogSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessLogSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/accessLogSubscription:AccessLogSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    destinationArn = registerOutput<String>('destinationArn');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceIdentifier = registerOutput<String>('resourceIdentifier');
    serviceNetworkLogType = registerOutput<String>('serviceNetworkLogType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AccessLogSubscription] resource.
  AccessLogSubscription.reference(String urn)
    : super(
        'aws:vpclattice/accessLogSubscription:AccessLogSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    destinationArn = registerOutput<String>('destinationArn');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    resourceIdentifier = registerOutput<String>('resourceIdentifier');
    serviceNetworkLogType = registerOutput<String>('serviceNetworkLogType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
