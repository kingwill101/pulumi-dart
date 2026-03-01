import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';

/// Provides an SWF Domain resource.
///
/// ## Example Usage
///
/// To register a basic SWF domain:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.swf.Domain("foo", {
///     name: "foo",
///     description: "SWF Domain",
///     workflowExecutionRetentionPeriodInDays: "30",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.swf.Domain("foo",
///     name="foo",
///     description="SWF Domain",
///     workflow_execution_retention_period_in_days="30")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Swf.Domain("foo", new()
///     {
///         Name = "foo",
///         Description = "SWF Domain",
///         WorkflowExecutionRetentionPeriodInDays = "30",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/swf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := swf.NewDomain(ctx, "foo", &swf.DomainArgs{
/// 			Name:                                   pulumi.String("foo"),
/// 			Description:                            pulumi.String("SWF Domain"),
/// 			WorkflowExecutionRetentionPeriodInDays: pulumi.String("30"),
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
/// import com.pulumi.aws.swf.Domain;
/// import com.pulumi.aws.swf.DomainArgs;
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
///         var foo = new Domain("foo", DomainArgs.builder()
///             .name("foo")
///             .description("SWF Domain")
///             .workflowExecutionRetentionPeriodInDays("30")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:swf:Domain
///     properties:
///       name: foo
///       description: SWF Domain
///       workflowExecutionRetentionPeriodInDays: 30
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SWF Domains using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:swf/domain:Domain foo test-domain
/// ```
class Domain extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN)
  late final pulumi.Output<String> arn;

  /// The domain description.
  late final pulumi.Output<String?> description;

  /// The name of the domain. If omitted, this provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Length of time that SWF will continue to retain information about the workflow execution after the workflow execution is complete, must be between 0 and 90 days.
  late final pulumi.Output<String> workflowExecutionRetentionPeriodInDays;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_swf_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(String name, {DomainArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:swf/domain:Domain',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.workflowExecutionRetentionPeriodInDays = registerOutput<String>(
      'workflowExecutionRetentionPeriodInDays',
    );
  }
}
