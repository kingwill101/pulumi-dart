import 'package:pulumi/pulumi.dart';
import '../framework_control_set/framework_control_set.dart';
import 'framework_args.dart';

/// Resource for managing an AWS Audit Manager Framework.
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
/// const test = new aws.auditmanager.Framework("test", {
/// name: "example",
/// controlSets: [{
/// name: "example",
/// controls: [
/// {
/// id: test1.id,
/// },
/// {
/// id: test2.id,
/// },
/// ],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.auditmanager.Framework("test",
/// name="example",
/// control_sets=[{
/// "name": "example",
/// "controls": [
/// {
/// "id": test1["id"],
/// },
/// {
/// "id": test2["id"],
/// },
/// ],
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
/// var test = new Aws.Auditmanager.Framework("test", new()
/// {
/// Name = "example",
/// ControlSets = new[]
/// {
/// new Aws.Auditmanager.Inputs.FrameworkControlSetArgs
/// {
/// Name = "example",
/// Controls = new[]
/// {
/// new Aws.Auditmanager.Inputs.FrameworkControlSetControlArgs
/// {
/// Id = test1.Id,
/// },
/// new Aws.Auditmanager.Inputs.FrameworkControlSetControlArgs
/// {
/// Id = test2.Id,
/// },
/// },
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
/// _, err := auditmanager.NewFramework(ctx, "test", &auditmanager.FrameworkArgs{
/// Name: pulumi.String("example"),
/// ControlSets: auditmanager.FrameworkControlSetArray{
/// &auditmanager.FrameworkControlSetArgs{
/// Name: pulumi.String("example"),
/// Controls: auditmanager.FrameworkControlSetControlArray{
/// &auditmanager.FrameworkControlSetControlArgs{
/// Id: pulumi.Any(test1.Id),
/// },
/// &auditmanager.FrameworkControlSetControlArgs{
/// Id: pulumi.Any(test2.Id),
/// },
/// },
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
/// import com.pulumi.aws.auditmanager.Framework;
/// import com.pulumi.aws.auditmanager.FrameworkArgs;
/// import com.pulumi.aws.auditmanager.inputs.FrameworkControlSetArgs;
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
/// var test = new Framework("test", FrameworkArgs.builder()
/// .name("example")
/// .controlSets(FrameworkControlSetArgs.builder()
/// .name("example")
/// .controls(
/// FrameworkControlSetControlArgs.builder()
/// .id(test1.id())
/// .build(),
/// FrameworkControlSetControlArgs.builder()
/// .id(test2.id())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:auditmanager:Framework
/// properties:
/// name: example
/// controlSets:
/// - name: example
/// controls:
/// - id: ${test1.id}
/// - id: ${test2.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Framework using the framework <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/framework:Framework example abc123-de45
/// ```
class Framework extends CustomResource {
  /// Amazon Resource Name (ARN) of the framework.
  /// * `control_sets[*].id` - Unique identifier for the framework control set.
  late final Output<String> arn;

  /// Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  late final Output<String?> complianceType;

  /// Configuration block(s) for the control sets that are associated with the framework. See <span pulumi-lang-nodejs="`controlSets`" pulumi-lang-dotnet="`ControlSets`" pulumi-lang-go="`controlSets`" pulumi-lang-python="`control_sets`" pulumi-lang-yaml="`controlSets`" pulumi-lang-java="`controlSets`">`control_sets`</span> Block below for details.
  ///
  /// The following arguments are optional:
  late final Output<List<FrameworkControlSet>?> controlSets;

  /// Description of the framework.
  late final Output<String?> description;

  /// Framework type, such as a custom framework or a standard framework.
  late final Output<String> frameworkType;

  /// Name of the framework.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the framework. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Framework(
    String name, {
    FrameworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/framework:Framework',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.complianceType = registerOutput<String?>('complianceType');
    this.controlSets =
        registerOutput<List<FrameworkControlSet>?>('controlSets');
    this.description = registerOutput<String?>('description');
    this.frameworkType = registerOutput<String>('frameworkType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
