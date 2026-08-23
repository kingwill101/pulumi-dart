import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_limit_args.dart';
import 'usage_limit_state.dart';

/// Creates a new Amazon Redshift Serverless Usage Limit.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.Workgroup("example", {
///     namespaceName: exampleAwsRedshiftserverlessNamespace.namespaceName,
///     workgroupName: "example",
/// });
/// const exampleUsageLimit = new aws.redshiftserverless.UsageLimit("example", {
///     resourceArn: example.arn,
///     usageType: "serverless-compute",
///     amount: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.Workgroup("example",
///     namespace_name=example_aws_redshiftserverless_namespace["namespaceName"],
///     workgroup_name="example")
/// example_usage_limit = aws.redshiftserverless.UsageLimit("example",
///     resource_arn=example.arn,
///     usage_type="serverless-compute",
///     amount=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftServerless.Workgroup("example", new()
///     {
///         NamespaceName = exampleAwsRedshiftserverlessNamespace.NamespaceName,
///         WorkgroupName = "example",
///     });
///
///     var exampleUsageLimit = new Aws.RedshiftServerless.UsageLimit("example", new()
///     {
///         ResourceArn = example.Arn,
///         UsageType = "serverless-compute",
///         Amount = 60,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := redshiftserverless.NewWorkgroup(ctx, "example", &redshiftserverless.WorkgroupArgs{
/// 			NamespaceName: pulumi.Any(exampleAwsRedshiftserverlessNamespace.NamespaceName),
/// 			WorkgroupName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshiftserverless.NewUsageLimit(ctx, "example", &redshiftserverless.UsageLimitArgs{
/// 			ResourceArn: example.Arn,
/// 			UsageType:   pulumi.String("serverless-compute"),
/// 			Amount:      pulumi.Int(60),
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
/// resource "aws_redshiftserverless_workgroup" "example" {
///   namespace_name = exampleAwsRedshiftserverlessNamespace.namespaceName
///   workgroup_name = "example"
/// }
/// resource "aws_redshiftserverless_usagelimit" "example" {
///   resource_arn = aws_redshiftserverless_workgroup.example.arn
///   usage_type   = "serverless-compute"
///   amount       = 60
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshiftserverless.Workgroup;
/// import com.pulumi.aws.redshiftserverless.WorkgroupArgs;
/// import com.pulumi.aws.redshiftserverless.UsageLimit;
/// import com.pulumi.aws.redshiftserverless.UsageLimitArgs;
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
///         var example = new Workgroup("example", WorkgroupArgs.builder()
///             .namespaceName(exampleAwsRedshiftserverlessNamespace.namespaceName())
///             .workgroupName("example")
///             .build());
///
///         var exampleUsageLimit = new UsageLimit("exampleUsageLimit", UsageLimitArgs.builder()
///             .resourceArn(example.arn())
///             .usageType("serverless-compute")
///             .amount(60)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftserverless:Workgroup
///     properties:
///       namespaceName: ${exampleAwsRedshiftserverlessNamespace.namespaceName}
///       workgroupName: example
///   exampleUsageLimit:
///     type: aws:redshiftserverless:UsageLimit
///     name: example
///     properties:
///       resourceArn: ${example.arn}
///       usageType: serverless-compute
///       amount: 60
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Usage Limits using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/usageLimit:UsageLimit example example-id
/// ```
class UsageLimit extends pulumi.CustomResource {
  /// The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  late final pulumi.Output<int> amount;
  /// Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit.
  late final pulumi.Output<String> arn;
  /// The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are `log`, `emit-metric`, and `deactivate`. The default is `log`.
  late final pulumi.Output<String?> breachAction;
  /// The time period that the amount applies to. A weekly period begins on Sunday. Valid values are `daily`, `weekly`, and `monthly`. The default is `monthly`.
  late final pulumi.Output<String?> period;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  late final pulumi.Output<String> resourceArn;
  /// The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  late final pulumi.Output<String> usageType;

  /// Creates a new [UsageLimit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UsageLimit]. {@macro pulumi_redshiftserverless_usage_limit_usage_limit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UsageLimit(
    String name, {
    UsageLimitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/usageLimit:UsageLimit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<int>('amount');
    arn = registerOutput<String>('arn');
    breachAction = registerOutput<String?>('breachAction');
    period = registerOutput<String?>('period');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    usageType = registerOutput<String>('usageType');
  }

  /// Gets an existing [UsageLimit] resource's state with the given [name] and [id].
  static UsageLimit get(
    String name,
    pulumi.Input<String> id, {
    UsageLimitState? state,
  }) {
    return UsageLimit._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UsageLimit._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/usageLimit:UsageLimit',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<int>('amount');
    arn = registerOutput<String>('arn');
    breachAction = registerOutput<String?>('breachAction');
    period = registerOutput<String?>('period');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    usageType = registerOutput<String>('usageType');
  }
}
