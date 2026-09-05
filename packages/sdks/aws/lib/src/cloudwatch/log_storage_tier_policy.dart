import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_storage_tier_policy_args.dart';
import 'log_storage_tier_policy_state.dart';

/// Manages a CloudWatch Logs account-level storage tier policy. When set to `INTELLIGENT_TIERING`, CloudWatch Logs automatically moves log data to the most cost-effective storage tier based on access frequency.
///
/// &gt; Deletion of this resource will reset the storage tier policy to `STANDARD` (the default state).
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
/// const example = new aws.cloudwatch.LogStorageTierPolicy("example", {storageTier: "INTELLIGENT_TIERING"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogStorageTierPolicy("example", storage_tier="INTELLIGENT_TIERING")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogStorageTierPolicy("example", new()
///     {
///         StorageTier = "INTELLIGENT_TIERING",
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
/// 		_, err := cloudwatch.NewLogStorageTierPolicy(ctx, "example", &cloudwatch.LogStorageTierPolicyArgs{
/// 			StorageTier: pulumi.String("INTELLIGENT_TIERING"),
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
/// resource "aws_cloudwatch_logstoragetierpolicy" "example" {
///   storage_tier = "INTELLIGENT_TIERING"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.LogStorageTierPolicy;
/// import com.pulumi.aws.cloudwatch.LogStorageTierPolicyArgs;
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
///         var example = new LogStorageTierPolicy("example", LogStorageTierPolicyArgs.builder()
///             .storageTier("INTELLIGENT_TIERING")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogStorageTierPolicy
///     properties:
///       storageTier: INTELLIGENT_TIERING
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `region` (String) Region where this resource is managed.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import storage tier policies using `region`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logStorageTierPolicy:LogStorageTierPolicy example us-west-2
/// ```
class LogStorageTierPolicy extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Storage tier to set for the account. Valid values are `STANDARD` or `INTELLIGENT_TIERING`.
  late final pulumi.Output<String> storageTier;

  /// Creates a new [LogStorageTierPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogStorageTierPolicy]. {@macro pulumi_cloudwatch_log_storage_tier_policy_log_storage_tier_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogStorageTierPolicy(
    String name, {
    LogStorageTierPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logStorageTierPolicy:LogStorageTierPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    storageTier = registerOutput<String>('storageTier');
  }

  /// Gets an existing [LogStorageTierPolicy] resource's state with the given [name] and [id].
  static LogStorageTierPolicy get(
    String name,
    pulumi.Input<String> id, {
    LogStorageTierPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LogStorageTierPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LogStorageTierPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logStorageTierPolicy:LogStorageTierPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    storageTier = registerOutput<String>('storageTier');
  }

  /// Creates a typed reference to an existing [LogStorageTierPolicy] resource.
  LogStorageTierPolicy.reference(String urn)
    : super(
        'aws:cloudwatch/logStorageTierPolicy:LogStorageTierPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    storageTier = registerOutput<String>('storageTier');
  }
}
