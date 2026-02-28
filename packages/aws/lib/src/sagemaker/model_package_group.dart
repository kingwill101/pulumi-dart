import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_package_group_args.dart';

/// Provides a SageMaker AI Model Package Group resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.ModelPackageGroup("example", {modelPackageGroupName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.ModelPackageGroup("example", model_package_group_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.ModelPackageGroup("example", new()
///     {
///         ModelPackageGroupName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewModelPackageGroup(ctx, "example", &sagemaker.ModelPackageGroupArgs{
/// 			ModelPackageGroupName: pulumi.String("example"),
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
/// import com.pulumi.aws.sagemaker.ModelPackageGroup;
/// import com.pulumi.aws.sagemaker.ModelPackageGroupArgs;
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
///         var example = new ModelPackageGroup("example", ModelPackageGroupArgs.builder()
///             .modelPackageGroupName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:ModelPackageGroup
///     properties:
///       modelPackageGroupName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Model Package Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelPackageGroup:ModelPackageGroup test_model_package_group my-code-repo
/// ```
class ModelPackageGroup extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Model Package Group.
  late final pulumi.Output<String> arn;

  /// A description for the model group.
  late final pulumi.Output<String?> modelPackageGroupDescription;

  /// The name of the model group.
  late final pulumi.Output<String> modelPackageGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ModelPackageGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelPackageGroup]. {@macro pulumi_sagemaker_model_package_group_model_package_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelPackageGroup(
    String name, {
    ModelPackageGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelPackageGroup:ModelPackageGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.modelPackageGroupDescription =
        registerOutput<String?>('modelPackageGroupDescription');
    this.modelPackageGroupName =
        registerOutput<String>('modelPackageGroupName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
