import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_layer_automatic_response_args.dart';
import 'application_layer_automatic_response_state.dart';
import 'application_layer_automatic_response_timeouts.dart';

/// Resource for managing an AWS Shield Application Layer Automatic Response for automatic DDoS mitigation.
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
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const config = new pulumi.Config();
/// // The Cloudfront Distribution on which to enable the Application Layer Automatic Response.
/// const distributionId = config.require("distributionId");
/// const example = new aws.shield.ApplicationLayerAutomaticResponse("example", {
///     resourceArn: Promise.all([currentGetPartition, currentGetCallerIdentity]).then(([currentGetPartition, currentGetCallerIdentity]) => `arn:${currentGetPartition.partition}:cloudfront:${currentGetCallerIdentity.accountId}:distribution/${distributionId}`),
///     action: "COUNT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// config = pulumi.Config()
/// # The Cloudfront Distribution on which to enable the Application Layer Automatic Response.
/// distribution_id = config.require("distributionId")
/// example = aws.shield.ApplicationLayerAutomaticResponse("example",
///     resource_arn=f"arn:{current_get_partition.partition}:cloudfront:{current_get_caller_identity.account_id}:distribution/{distribution_id}",
///     action="COUNT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var config = new Config();
///     // The Cloudfront Distribution on which to enable the Application Layer Automatic Response.
///     var distributionId = config.Require("distributionId");
///     var example = new Aws.Shield.ApplicationLayerAutomaticResponse("example", new()
///     {
///         ResourceArn = Output.Tuple(currentGetPartition, currentGetCallerIdentity).Apply(values =>
///         {
///             var currentGetPartition = values.Item1;
///             var currentGetCallerIdentity = values.Item2;
///             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:cloudfront:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:distribution/{distributionId}";
///         }),
///         Action = "COUNT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/shield"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		// The Cloudfront Distribution on which to enable the Application Layer Automatic Response.
/// 		distributionId := cfg.Require("distributionId")
/// 		_, err = shield.NewApplicationLayerAutomaticResponse(ctx, "example", &shield.ApplicationLayerAutomaticResponseArgs{
/// 			ResourceArn: pulumi.Sprintf("arn:%v:cloudfront:%v:distribution/%v", currentGetPartition.Partition, currentGetCallerIdentity.AccountId, distributionId),
/// 			Action:      pulumi.String("COUNT"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.shield.ApplicationLayerAutomaticResponse;
/// import com.pulumi.aws.shield.ApplicationLayerAutomaticResponseArgs;
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
///         final var config = ctx.config();
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var distributionId = config.get("distributionId");
///         var example = new ApplicationLayerAutomaticResponse("example", ApplicationLayerAutomaticResponseArgs.builder()
///             .resourceArn(String.format("arn:%s:cloudfront:%s:distribution/%s", currentGetPartition.partition(),currentGetCallerIdentity.accountId(),distributionId))
///             .action("COUNT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   distributionId:
///     type: string
/// resources:
///   example:
///     type: aws:shield:ApplicationLayerAutomaticResponse
///     properties:
///       resourceArn: arn:${currentGetPartition.partition}:cloudfront:${currentGetCallerIdentity.accountId}:distribution/${distributionId}
///       action: COUNT
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
class ApplicationLayerAutomaticResponse extends pulumi.CustomResource {
  /// One of `COUNT` or `BLOCK`
  late final pulumi.Output<String> action;
  /// ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  late final pulumi.Output<String> resourceArn;
  late final pulumi.Output<ApplicationLayerAutomaticResponseTimeouts?> timeouts;

  /// Creates a new [ApplicationLayerAutomaticResponse].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationLayerAutomaticResponse]. {@macro pulumi_shield_application_layer_automatic_response_application_layer_automatic_response_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationLayerAutomaticResponse(
    String name, {
    ApplicationLayerAutomaticResponseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/applicationLayerAutomaticResponse:ApplicationLayerAutomaticResponse',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.timeouts = registerOutput<ApplicationLayerAutomaticResponseTimeouts?>('timeouts');
  }

  /// Gets an existing [ApplicationLayerAutomaticResponse] resource's state with the given [name] and [id].
  static ApplicationLayerAutomaticResponse get(
    String name,
    pulumi.Input<String> id, {
    ApplicationLayerAutomaticResponseState? state,
  }) {
    return ApplicationLayerAutomaticResponse._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationLayerAutomaticResponse._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:shield/applicationLayerAutomaticResponse:ApplicationLayerAutomaticResponse',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.timeouts = registerOutput<ApplicationLayerAutomaticResponseTimeouts?>('timeouts');
  }
}
