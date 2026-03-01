import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_args.dart';

/// Resource for managing an AWS EC2 Image Builder Workflow.
///
/// > Image Builder manages the workflows for the distribution stage. Therefore, using the DISTRIBUTION workflow type results in an error.
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
/// const example = new aws.imagebuilder.Workflow("example", {
///     name: "example",
///     version: "1.0.0",
///     type: "TEST",
///     data: `name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
///   - name: waitForActionAtEnd
///     type: boolean
///
/// steps:
///   - name: LaunchTestInstance
///     action: LaunchInstance
///     onFailure: Abort
///     inputs:
///       waitFor: \\"ssmAgent\\"
///
///   - name: TerminateTestInstance
///     action: TerminateInstance
///     onFailure: Continue
///     inputs:
///       instanceId.: \\".stepOutputs.LaunchTestInstance.instanceId\\"
///
///   - name: WaitForActionAtEnd
///     action: WaitForAction
///     if:
///       booleanEquals: true
///       value: \\".parameters.waitForActionAtEnd\\"
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.Workflow("example",
///     name="example",
///     version="1.0.0",
///     type="TEST",
///     data="""name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
///   - name: waitForActionAtEnd
///     type: boolean
///
/// steps:
///   - name: LaunchTestInstance
///     action: LaunchInstance
///     onFailure: Abort
///     inputs:
///       waitFor: \"ssmAgent\"
///
///   - name: TerminateTestInstance
///     action: TerminateInstance
///     onFailure: Continue
///     inputs:
///       instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
///   - name: WaitForActionAtEnd
///     action: WaitForAction
///     if:
///       booleanEquals: true
///       value: \"$.parameters.waitForActionAtEnd\"
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ImageBuilder.Workflow("example", new()
///     {
///         Name = "example",
///         Version = "1.0.0",
///         Type = "TEST",
///         Data = @"name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
///   - name: waitForActionAtEnd
///     type: boolean
///
/// steps:
///   - name: LaunchTestInstance
///     action: LaunchInstance
///     onFailure: Abort
///     inputs:
///       waitFor: \""ssmAgent\""
///
///   - name: TerminateTestInstance
///     action: TerminateInstance
///     onFailure: Continue
///     inputs:
///       instanceId.$: \""$.stepOutputs.LaunchTestInstance.instanceId\""
///
///   - name: WaitForActionAtEnd
///     action: WaitForAction
///     if:
///       booleanEquals: true
///       value: \""$.parameters.waitForActionAtEnd\""
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imagebuilder.NewWorkflow(ctx, "example", &imagebuilder.WorkflowArgs{
/// 			Name:    pulumi.String("example"),
/// 			Version: pulumi.String("1.0.0"),
/// 			Type:    pulumi.String("TEST"),
/// 			Data: pulumi.String(`name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
///   - name: waitForActionAtEnd
///     type: boolean
///
/// steps:
///   - name: LaunchTestInstance
///     action: LaunchInstance
///     onFailure: Abort
///     inputs:
///       waitFor: \"ssmAgent\"
///
///   - name: TerminateTestInstance
///     action: TerminateInstance
///     onFailure: Continue
///     inputs:
///       instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
///   - name: WaitForActionAtEnd
///     action: WaitForAction
///     if:
///       booleanEquals: true
///       value: \"$.parameters.waitForActionAtEnd\"
/// `),
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
/// import com.pulumi.aws.imagebuilder.Workflow;
/// import com.pulumi.aws.imagebuilder.WorkflowArgs;
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
///         var example = new Workflow("example", WorkflowArgs.builder()
///             .name("example")
///             .version("1.0.0")
///             .type("TEST")
///             .data("""
/// name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
///   - name: waitForActionAtEnd
///     type: boolean
///
/// steps:
///   - name: LaunchTestInstance
///     action: LaunchInstance
///     onFailure: Abort
///     inputs:
///       waitFor: \"ssmAgent\"
///
///   - name: TerminateTestInstance
///     action: TerminateInstance
///     onFailure: Continue
///     inputs:
///       instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
///   - name: WaitForActionAtEnd
///     action: WaitForAction
///     if:
///       booleanEquals: true
///       value: \"$.parameters.waitForActionAtEnd\"
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:imagebuilder:Workflow
///     properties:
///       name: example
///       version: 1.0.0
///       type: TEST
///       data: |
///         name: example
///         description: Workflow to test an image
///         schemaVersion: 1.0
///
///         parameters:
///           - name: waitForActionAtEnd
///             type: boolean
///
///         steps:
///           - name: LaunchTestInstance
///             action: LaunchInstance
///             onFailure: Abort
///             inputs:
///               waitFor: \"ssmAgent\"
///
///           - name: TerminateTestInstance
///             action: TerminateInstance
///             onFailure: Continue
///             inputs:
///               instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
///           - name: WaitForActionAtEnd
///             action: WaitForAction
///             if:
///               booleanEquals: true
///               value: \"$.parameters.waitForActionAtEnd\"
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder workflow.
///
///
/// Using `pulumi import`, import EC2 Image Builder Workflow using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/workflow:Workflow example arn:aws:imagebuilder:us-east-1:aws:workflow/test/example/1.0.1/1
/// ```
///
/// Certain resource arguments, such as `uri`, cannot be read via the API and imported into Terraform. Terraform will display a difference for these arguments the first run after import if declared in the Terraform configuration for an imported resource.
class Workflow extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the workflow.
  late final pulumi.Output<String> arn;

  /// Change description of the workflow.
  late final pulumi.Output<String?> changeDescription;

  /// Inline YAML string with data of the workflow. Exactly one of `data` and `uri` can be specified.
  late final pulumi.Output<String> data;

  /// Date the workflow was created.
  late final pulumi.Output<String> dateCreated;

  /// Description of the workflow.
  late final pulumi.Output<String?> description;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  late final pulumi.Output<String?> kmsKeyId;

  /// Name of the workflow.
  late final pulumi.Output<String> name;

  /// Owner of the workflow.
  late final pulumi.Output<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags for the workflow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of the workflow. Valid values: `BUILD`, `TEST`.
  late final pulumi.Output<String> type;

  /// S3 URI with data of the workflow. Exactly one of `data` and `uri` can be specified.
  late final pulumi.Output<String?> uri;

  /// Version of the workflow.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> version;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_imagebuilder_workflow_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:imagebuilder/workflow:Workflow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.changeDescription = registerOutput<String?>('changeDescription');
    this.data = registerOutput<String>('data');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.uri = registerOutput<String?>('uri');
    this.version = registerOutput<String>('version');
  }
}
