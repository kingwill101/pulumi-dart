import 'package:pulumi/pulumi.dart';
import 'usage_limit_args2.dart';

/// Creates a new Amazon Redshift Serverless Usage Limit.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.Workgroup("example", {
/// namespaceName: exampleAwsRedshiftserverlessNamespace.namespaceName,
/// workgroupName: "example",
/// });
/// const exampleUsageLimit = new aws.redshiftserverless.UsageLimit("example", {
/// resourceArn: example.arn,
/// usageType: "serverless-compute",
/// amount: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.Workgroup("example",
/// namespace_name=example_aws_redshiftserverless_namespace["namespaceName"],
/// workgroup_name="example")
/// example_usage_limit = aws.redshiftserverless.UsageLimit("example",
/// resource_arn=example.arn,
/// usage_type="serverless-compute",
/// amount=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedshiftServerless.Workgroup("example", new()
/// {
/// NamespaceName = exampleAwsRedshiftserverlessNamespace.NamespaceName,
/// WorkgroupName = "example",
/// });
///
/// var exampleUsageLimit = new Aws.RedshiftServerless.UsageLimit("example", new()
/// {
/// ResourceArn = example.Arn,
/// UsageType = "serverless-compute",
/// Amount = 60,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := redshiftserverless.NewWorkgroup(ctx, "example", &redshiftserverless.WorkgroupArgs{
/// NamespaceName: pulumi.Any(exampleAwsRedshiftserverlessNamespace.NamespaceName),
/// WorkgroupName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = redshiftserverless.NewUsageLimit(ctx, "example", &redshiftserverless.UsageLimitArgs{
/// ResourceArn: example.Arn,
/// UsageType:   pulumi.String("serverless-compute"),
/// Amount:      pulumi.Int(60),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Workgroup("example", WorkgroupArgs.builder()
/// .namespaceName(exampleAwsRedshiftserverlessNamespace.namespaceName())
/// .workgroupName("example")
/// .build());
///
/// var exampleUsageLimit = new UsageLimit("exampleUsageLimit", UsageLimitArgs.builder()
/// .resourceArn(example.arn())
/// .usageType("serverless-compute")
/// .amount(60)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshiftserverless:Workgroup
/// properties:
/// namespaceName: ${exampleAwsRedshiftserverlessNamespace.namespaceName}
/// workgroupName: example
/// exampleUsageLimit:
/// type: aws:redshiftserverless:UsageLimit
/// name: example
/// properties:
/// resourceArn: ${example.arn}
/// usageType: serverless-compute
/// amount: 60
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Usage Limits using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/usageLimit:UsageLimit example example-id
/// ```
class UsageLimit2 extends CustomResource {
  /// The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  late final Output<int> amount;

  /// Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit.
  late final Output<String> arn;

  /// The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are <span pulumi-lang-nodejs="`log`" pulumi-lang-dotnet="`Log`" pulumi-lang-go="`log`" pulumi-lang-python="`log`" pulumi-lang-yaml="`log`" pulumi-lang-java="`log`">`log`</span>, `emit-metric`, and <span pulumi-lang-nodejs="`deactivate`" pulumi-lang-dotnet="`Deactivate`" pulumi-lang-go="`deactivate`" pulumi-lang-python="`deactivate`" pulumi-lang-yaml="`deactivate`" pulumi-lang-java="`deactivate`">`deactivate`</span>. The default is <span pulumi-lang-nodejs="`log`" pulumi-lang-dotnet="`Log`" pulumi-lang-go="`log`" pulumi-lang-python="`log`" pulumi-lang-yaml="`log`" pulumi-lang-java="`log`">`log`</span>.
  late final Output<String?> breachAction;

  /// The time period that the amount applies to. A weekly period begins on Sunday. Valid values are <span pulumi-lang-nodejs="`daily`" pulumi-lang-dotnet="`Daily`" pulumi-lang-go="`daily`" pulumi-lang-python="`daily`" pulumi-lang-yaml="`daily`" pulumi-lang-java="`daily`">`daily`</span>, <span pulumi-lang-nodejs="`weekly`" pulumi-lang-dotnet="`Weekly`" pulumi-lang-go="`weekly`" pulumi-lang-python="`weekly`" pulumi-lang-yaml="`weekly`" pulumi-lang-java="`weekly`">`weekly`</span>, and <span pulumi-lang-nodejs="`monthly`" pulumi-lang-dotnet="`Monthly`" pulumi-lang-go="`monthly`" pulumi-lang-python="`monthly`" pulumi-lang-yaml="`monthly`" pulumi-lang-java="`monthly`">`monthly`</span>. The default is <span pulumi-lang-nodejs="`monthly`" pulumi-lang-dotnet="`Monthly`" pulumi-lang-go="`monthly`" pulumi-lang-python="`monthly`" pulumi-lang-yaml="`monthly`" pulumi-lang-java="`monthly`">`monthly`</span>.
  late final Output<String?> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  late final Output<String> resourceArn;

  /// The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  late final Output<String> usageType;

  UsageLimit2(
    String name, {
    UsageLimitArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/usageLimit:UsageLimit',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amount = registerOutput<int>('amount');
    this.arn = registerOutput<String>('arn');
    this.breachAction = registerOutput<String?>('breachAction');
    this.period = registerOutput<String?>('period');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.usageType = registerOutput<String>('usageType');
  }
}
