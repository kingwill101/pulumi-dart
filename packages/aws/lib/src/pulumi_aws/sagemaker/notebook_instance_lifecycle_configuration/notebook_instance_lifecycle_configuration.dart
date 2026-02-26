import 'package:pulumi/pulumi.dart';
import 'notebook_instance_lifecycle_configuration_args.dart';

/// Provides a lifecycle configuration for SageMaker AI Notebook Instances.
///
/// ## Example Usage
///
/// Usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const lc = new aws.sagemaker.NotebookInstanceLifecycleConfiguration("lc", {
/// name: "foo",
/// onCreate: std.base64encode({
/// input: "echo foo",
/// }).then(invoke => invoke.result),
/// onStart: std.base64encode({
/// input: "echo bar",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// lc = aws.sagemaker.NotebookInstanceLifecycleConfiguration("lc",
/// name="foo",
/// on_create=std.base64encode(input="echo foo").result,
/// on_start=std.base64encode(input="echo bar").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var lc = new Aws.Sagemaker.NotebookInstanceLifecycleConfiguration("lc", new()
/// {
/// Name = "foo",
/// OnCreate = Std.Base64encode.Invoke(new()
/// {
/// Input = "echo foo",
/// }).Apply(invoke => invoke.Result),
/// OnStart = Std.Base64encode.Invoke(new()
/// {
/// Input = "echo bar",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "echo foo",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// Input: "echo bar",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = sagemaker.NewNotebookInstanceLifecycleConfiguration(ctx, "lc", &sagemaker.NotebookInstanceLifecycleConfigurationArgs{
/// Name:     pulumi.String("foo"),
/// OnCreate: pulumi.String(invokeBase64encode.Result),
/// OnStart:  pulumi.String(invokeBase64encode1.Result),
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
/// import com.pulumi.aws.sagemaker.NotebookInstanceLifecycleConfiguration;
/// import com.pulumi.aws.sagemaker.NotebookInstanceLifecycleConfigurationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
/// var lc = new NotebookInstanceLifecycleConfiguration("lc", NotebookInstanceLifecycleConfigurationArgs.builder()
/// .name("foo")
/// .onCreate(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("echo foo")
/// .build()).result())
/// .onStart(StdFunctions.base64encode(Base64encodeArgs.builder()
/// .input("echo bar")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// lc:
/// type: aws:sagemaker:NotebookInstanceLifecycleConfiguration
/// properties:
/// name: foo
/// onCreate:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: echo foo
/// return: result
/// onStart:
/// fn::invoke:
/// function: std:base64encode
/// arguments:
/// input: echo bar
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import models using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/notebookInstanceLifecycleConfiguration:NotebookInstanceLifecycleConfiguration lc foo
/// ```
class NotebookInstanceLifecycleConfiguration extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this lifecycle configuration.
  late final Output<String> arn;

  /// The name of the lifecycle configuration (must be unique). If omitted, this provider will assign a random, unique name.
  late final Output<String> name;

  /// A shell script (base64-encoded) that runs only once when the SageMaker AI Notebook Instance is created.
  late final Output<String?> onCreate;

  /// A shell script (base64-encoded) that runs every time the SageMaker AI Notebook Instance is started including the time it's created.
  late final Output<String?> onStart;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A mapping of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  NotebookInstanceLifecycleConfiguration(
    String name, {
    NotebookInstanceLifecycleConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/notebookInstanceLifecycleConfiguration:NotebookInstanceLifecycleConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.onCreate = registerOutput<String?>('onCreate');
    this.onStart = registerOutput<String?>('onStart');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
