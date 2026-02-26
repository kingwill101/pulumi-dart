import 'package:pulumi/pulumi.dart';
import '../control_control_mapping_source/control_control_mapping_source.dart';
import 'control_args.dart';

/// Resource for managing an AWS Audit Manager Control.
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
/// const example = new aws.auditmanager.Control("example", {
/// name: "example",
/// controlMappingSources: [{
/// sourceName: "example",
/// sourceSetUpOption: "Procedural_Controls_Mapping",
/// sourceType: "MANUAL",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.auditmanager.Control("example",
/// name="example",
/// control_mapping_sources=[{
/// "source_name": "example",
/// "source_set_up_option": "Procedural_Controls_Mapping",
/// "source_type": "MANUAL",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Auditmanager.Control("example", new()
/// {
/// Name = "example",
/// ControlMappingSources = new[]
/// {
/// new Aws.Auditmanager.Inputs.ControlControlMappingSourceArgs
/// {
/// SourceName = "example",
/// SourceSetUpOption = "Procedural_Controls_Mapping",
/// SourceType = "MANUAL",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := auditmanager.NewControl(ctx, "example", &auditmanager.ControlArgs{
/// Name: pulumi.String("example"),
/// ControlMappingSources: auditmanager.ControlControlMappingSourceArray{
/// &auditmanager.ControlControlMappingSourceArgs{
/// SourceName:        pulumi.String("example"),
/// SourceSetUpOption: pulumi.String("Procedural_Controls_Mapping"),
/// SourceType:        pulumi.String("MANUAL"),
/// },
/// },
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
/// import com.pulumi.aws.auditmanager.Control;
/// import com.pulumi.aws.auditmanager.ControlArgs;
/// import com.pulumi.aws.auditmanager.inputs.ControlControlMappingSourceArgs;
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
/// var example = new Control("example", ControlArgs.builder()
/// .name("example")
/// .controlMappingSources(ControlControlMappingSourceArgs.builder()
/// .sourceName("example")
/// .sourceSetUpOption("Procedural_Controls_Mapping")
/// .sourceType("MANUAL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:auditmanager:Control
/// properties:
/// name: example
/// controlMappingSources:
/// - sourceName: example
/// sourceSetUpOption: Procedural_Controls_Mapping
/// sourceType: MANUAL
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an Audit Manager Control using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/control:Control example abc123-de45
/// ```
class Control extends CustomResource {
  /// Recommended actions to carry out if the control isn't fulfilled.
  late final Output<String?> actionPlanInstructions;

  /// Title of the action plan for remediating the control.
  late final Output<String?> actionPlanTitle;

  /// Amazon Resource Name (ARN) of the control.
  /// * `control_mapping_sources.*.source_id` - Unique identifier for the source.
  late final Output<String> arn;

  /// Data mapping sources. See <span pulumi-lang-nodejs="`controlMappingSources`" pulumi-lang-dotnet="`ControlMappingSources`" pulumi-lang-go="`controlMappingSources`" pulumi-lang-python="`control_mapping_sources`" pulumi-lang-yaml="`controlMappingSources`" pulumi-lang-java="`controlMappingSources`">`control_mapping_sources`</span> below.
  ///
  /// The following arguments are optional:
  late final Output<List<ControlControlMappingSource>?> controlMappingSources;

  /// Description of the control.
  late final Output<String?> description;

  /// Name of the control.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the control. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Steps to follow to determine if the control is satisfied.
  late final Output<String?> testingInformation;

  /// Type of control, such as a custom control or a standard control.
  late final Output<String> type;

  Control(
    String name, {
    ControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/control:Control',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionPlanInstructions =
        registerOutput<String?>('actionPlanInstructions');
    this.actionPlanTitle = registerOutput<String?>('actionPlanTitle');
    this.arn = registerOutput<String>('arn');
    this.controlMappingSources =
        registerOutput<List<ControlControlMappingSource>?>(
            'controlMappingSources');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.testingInformation = registerOutput<String?>('testingInformation');
    this.type = registerOutput<String>('type');
  }
}
