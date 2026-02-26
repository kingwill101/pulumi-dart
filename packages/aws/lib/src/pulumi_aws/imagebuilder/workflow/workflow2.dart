import 'package:pulumi/pulumi.dart';
import 'workflow_args2.dart';

/// Resource for managing an AWS EC2 Image Builder Workflow.
///
/// > Image Builder manages the workflows for the distribution stage. Therefore, using the DISTRIBUTION workflow type results in an error.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.imagebuilder.Workflow("example", {
/// name: "example",
/// version: "1.0.0",
/// type: "TEST",
/// data: `name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
/// - name: waitForActionAtEnd
/// type: boolean
///
/// steps:
/// - name: LaunchTestInstance
/// action: LaunchInstance
/// onFailure: Abort
/// inputs:
/// waitFor: \\"ssmAgent\\"
///
/// - name: TerminateTestInstance
/// action: TerminateInstance
/// onFailure: Continue
/// inputs:
/// instanceId.: \\".stepOutputs.LaunchTestInstance.instanceId\\"
///
/// - name: WaitForActionAtEnd
/// action: WaitForAction
/// if:
/// booleanEquals: true
/// value: \\".parameters.waitForActionAtEnd\\"
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.imagebuilder.Workflow("example",
/// name="example",
/// version="1.0.0",
/// type="TEST",
/// data="""name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
/// - name: waitForActionAtEnd
/// type: boolean
///
/// steps:
/// - name: LaunchTestInstance
/// action: LaunchInstance
/// onFailure: Abort
/// inputs:
/// waitFor: \"ssmAgent\"
///
/// - name: TerminateTestInstance
/// action: TerminateInstance
/// onFailure: Continue
/// inputs:
/// instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
/// - name: WaitForActionAtEnd
/// action: WaitForAction
/// if:
/// booleanEquals: true
/// value: \"$.parameters.waitForActionAtEnd\"
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
/// var example = new Aws.ImageBuilder.Workflow("example", new()
/// {
/// Name = "example",
/// Version = "1.0.0",
/// Type = "TEST",
/// Data = @"name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
/// - name: waitForActionAtEnd
/// type: boolean
///
/// steps:
/// - name: LaunchTestInstance
/// action: LaunchInstance
/// onFailure: Abort
/// inputs:
/// waitFor: \""ssmAgent\""
///
/// - name: TerminateTestInstance
/// action: TerminateInstance
/// onFailure: Continue
/// inputs:
/// instanceId.$: \""$.stepOutputs.LaunchTestInstance.instanceId\""
///
/// - name: WaitForActionAtEnd
/// action: WaitForAction
/// if:
/// booleanEquals: true
/// value: \""$.parameters.waitForActionAtEnd\""
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/imagebuilder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := imagebuilder.NewWorkflow(ctx, "example", &imagebuilder.WorkflowArgs{
/// Name:    pulumi.String("example"),
/// Version: pulumi.String("1.0.0"),
/// Type:    pulumi.String("TEST"),
/// Data: pulumi.String(`name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
/// - name: waitForActionAtEnd
/// type: boolean
///
/// steps:
/// - name: LaunchTestInstance
/// action: LaunchInstance
/// onFailure: Abort
/// inputs:
/// waitFor: \"ssmAgent\"
///
/// - name: TerminateTestInstance
/// action: TerminateInstance
/// onFailure: Continue
/// inputs:
/// instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
/// - name: WaitForActionAtEnd
/// action: WaitForAction
/// if:
/// booleanEquals: true
/// value: \"$.parameters.waitForActionAtEnd\"
/// `),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Workflow("example", WorkflowArgs.builder()
/// .name("example")
/// .version("1.0.0")
/// .type("TEST")
/// .data("""
/// name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
/// - name: waitForActionAtEnd
/// type: boolean
///
/// steps:
/// - name: LaunchTestInstance
/// action: LaunchInstance
/// onFailure: Abort
/// inputs:
/// waitFor: \"ssmAgent\"
///
/// - name: TerminateTestInstance
/// action: TerminateInstance
/// onFailure: Continue
/// inputs:
/// instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
/// - name: WaitForActionAtEnd
/// action: WaitForAction
/// if:
/// booleanEquals: true
/// value: \"$.parameters.waitForActionAtEnd\"
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:imagebuilder:Workflow
/// properties:
/// name: example
/// version: 1.0.0
/// type: TEST
/// data: |
/// name: example
/// description: Workflow to test an image
/// schemaVersion: 1.0
///
/// parameters:
/// - name: waitForActionAtEnd
/// type: boolean
///
/// steps:
/// - name: LaunchTestInstance
/// action: LaunchInstance
/// onFailure: Abort
/// inputs:
/// waitFor: \"ssmAgent\"
///
/// - name: TerminateTestInstance
/// action: TerminateInstance
/// onFailure: Continue
/// inputs:
/// instanceId.$: \"$.stepOutputs.LaunchTestInstance.instanceId\"
///
/// - name: WaitForActionAtEnd
/// action: WaitForAction
/// if:
/// booleanEquals: true
/// value: \"$.parameters.waitForActionAtEnd\"
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Image Builder workflow.
///
///
/// Using `pulumi import`, import EC2 Image Builder Workflow using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/workflow:Workflow example arn:aws:imagebuilder:us-east-1:aws:workflow/test/example/1.0.1/1
/// ```
///
/// Certain resource arguments, such as <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span>, cannot be read via the API and imported into Terraform. Terraform will display a difference for these arguments the first run after import if declared in the Terraform configuration for an imported resource.
class Workflow2 extends CustomResource {
  /// Amazon Resource Name (ARN) of the workflow.
  late final Output<String> arn;

  /// Change description of the workflow.
  late final Output<String?> changeDescription;

  /// Inline YAML string with data of the workflow. Exactly one of <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span> and <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> can be specified.
  late final Output<String> data;

  /// Date the workflow was created.
  late final Output<String> dateCreated;

  /// Description of the workflow.
  late final Output<String?> description;

  /// Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the workflow.
  late final Output<String?> kmsKeyId;

  /// Name of the workflow.
  late final Output<String> name;

  /// Owner of the workflow.
  late final Output<String> owner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags for the workflow. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Type of the workflow. Valid values: `BUILD`, `TEST`.
  late final Output<String> type;

  /// S3 URI with data of the workflow. Exactly one of <span pulumi-lang-nodejs="`data`" pulumi-lang-dotnet="`Data`" pulumi-lang-go="`data`" pulumi-lang-python="`data`" pulumi-lang-yaml="`data`" pulumi-lang-java="`data`">`data`</span> and <span pulumi-lang-nodejs="`uri`" pulumi-lang-dotnet="`Uri`" pulumi-lang-go="`uri`" pulumi-lang-python="`uri`" pulumi-lang-yaml="`uri`" pulumi-lang-java="`uri`">`uri`</span> can be specified.
  late final Output<String?> uri;

  /// Version of the workflow.
  ///
  /// The following arguments are optional:
  late final Output<String> version;

  Workflow2(
    String name, {
    WorkflowArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/workflow:Workflow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
