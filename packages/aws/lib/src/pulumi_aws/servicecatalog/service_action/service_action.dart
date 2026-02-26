import 'package:pulumi/pulumi.dart';
import '../service_action_definition/service_action_definition.dart';
import 'service_action_args.dart';

/// Manages a Service Catalog self-service action.
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
/// const example = new aws.servicecatalog.ServiceAction("example", {
/// description: "Motor generator unit",
/// name: "MGU",
/// definition: {
/// name: "AWS-RestartEC2Instance",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ServiceAction("example",
/// description="Motor generator unit",
/// name="MGU",
/// definition={
/// "name": "AWS-RestartEC2Instance",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.ServiceAction("example", new()
/// {
/// Description = "Motor generator unit",
/// Name = "MGU",
/// Definition = new Aws.ServiceCatalog.Inputs.ServiceActionDefinitionArgs
/// {
/// Name = "AWS-RestartEC2Instance",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicecatalog.NewServiceAction(ctx, "example", &servicecatalog.ServiceActionArgs{
/// Description: pulumi.String("Motor generator unit"),
/// Name:        pulumi.String("MGU"),
/// Definition: &servicecatalog.ServiceActionDefinitionArgs{
/// Name: pulumi.String("AWS-RestartEC2Instance"),
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
/// import com.pulumi.aws.servicecatalog.ServiceAction;
/// import com.pulumi.aws.servicecatalog.ServiceActionArgs;
/// import com.pulumi.aws.servicecatalog.inputs.ServiceActionDefinitionArgs;
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
/// var example = new ServiceAction("example", ServiceActionArgs.builder()
/// .description("Motor generator unit")
/// .name("MGU")
/// .definition(ServiceActionDefinitionArgs.builder()
/// .name("AWS-RestartEC2Instance")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:ServiceAction
/// properties:
/// description: Motor generator unit
/// name: MGU
/// definition:
/// name: AWS-RestartEC2Instance
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicecatalog.ServiceAction`" pulumi-lang-dotnet="`aws.servicecatalog.ServiceAction`" pulumi-lang-go="`servicecatalog.ServiceAction`" pulumi-lang-python="`servicecatalog.ServiceAction`" pulumi-lang-yaml="`aws.servicecatalog.ServiceAction`" pulumi-lang-java="`aws.servicecatalog.ServiceAction`">`aws.servicecatalog.ServiceAction`</span> using the service action ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/serviceAction:ServiceAction example act-f1w12eperfslh
/// ```
class ServiceAction extends CustomResource {
  /// Language code. Valid values are <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), and <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). Default is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  late final Output<String?> acceptLanguage;

  /// Self-service action definition configuration block. Detailed below.
  late final Output<ServiceActionDefinition> definition;

  /// Self-service action description.
  late final Output<String> description;

  /// Self-service action name.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ServiceAction(
    String name, {
    ServiceActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/serviceAction:ServiceAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = Output.createUnknown<String?>();
    this.definition = Output.createUnknown<ServiceActionDefinition>();
    this.description = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
