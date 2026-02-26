import 'package:pulumi/pulumi.dart';
import '../configuration_template_setting/configuration_template_setting.dart';
import 'configuration_template_args.dart';

/// Provides an Elastic Beanstalk Configuration Template, which are associated with
/// a specific application and are used to deploy different versions of the
/// application with the same configuration settings.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleApplication = new aws.elasticbeanstalk.Application("example", {
/// name: "tf-test-name",
/// description: "tf-test-desc",
/// });
/// const example = new aws.elasticbeanstalk.ConfigurationTemplate("example", {
/// name: "tf-test-template-config",
/// application: exampleApplication.name,
/// solutionStackName: "64bit Amazon Linux 2015.09 v2.0.8 running Go 1.4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_application = aws.elasticbeanstalk.Application("example",
/// name="tf-test-name",
/// description="tf-test-desc")
/// example = aws.elasticbeanstalk.ConfigurationTemplate("example",
/// name="tf-test-template-config",
/// application=example_application.name,
/// solution_stack_name="64bit Amazon Linux 2015.09 v2.0.8 running Go 1.4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleApplication = new Aws.ElasticBeanstalk.Application("example", new()
/// {
/// Name = "tf-test-name",
/// Description = "tf-test-desc",
/// });
///
/// var example = new Aws.ElasticBeanstalk.ConfigurationTemplate("example", new()
/// {
/// Name = "tf-test-template-config",
/// Application = exampleApplication.Name,
/// SolutionStackName = "64bit Amazon Linux 2015.09 v2.0.8 running Go 1.4",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleApplication, err := elasticbeanstalk.NewApplication(ctx, "example", &elasticbeanstalk.ApplicationArgs{
/// Name:        pulumi.String("tf-test-name"),
/// Description: pulumi.String("tf-test-desc"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = elasticbeanstalk.NewConfigurationTemplate(ctx, "example", &elasticbeanstalk.ConfigurationTemplateArgs{
/// Name:              pulumi.String("tf-test-template-config"),
/// Application:       exampleApplication.Name,
/// SolutionStackName: pulumi.String("64bit Amazon Linux 2015.09 v2.0.8 running Go 1.4"),
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
/// import com.pulumi.aws.elasticbeanstalk.Application;
/// import com.pulumi.aws.elasticbeanstalk.ApplicationArgs;
/// import com.pulumi.aws.elasticbeanstalk.ConfigurationTemplate;
/// import com.pulumi.aws.elasticbeanstalk.ConfigurationTemplateArgs;
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
/// var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
/// .name("tf-test-name")
/// .description("tf-test-desc")
/// .build());
///
/// var example = new ConfigurationTemplate("example", ConfigurationTemplateArgs.builder()
/// .name("tf-test-template-config")
/// .application(exampleApplication.name())
/// .solutionStackName("64bit Amazon Linux 2015.09 v2.0.8 running Go 1.4")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:elasticbeanstalk:ConfigurationTemplate
/// properties:
/// name: tf-test-template-config
/// application: ${exampleApplication.name}
/// solutionStackName: 64bit Amazon Linux 2015.09 v2.0.8 running Go 1.4
/// exampleApplication:
/// type: aws:elasticbeanstalk:Application
/// name: example
/// properties:
/// name: tf-test-name
/// description: tf-test-desc
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Option Settings
///
/// The <span pulumi-lang-nodejs="`setting`" pulumi-lang-dotnet="`Setting`" pulumi-lang-go="`setting`" pulumi-lang-python="`setting`" pulumi-lang-yaml="`setting`" pulumi-lang-java="`setting`">`setting`</span> field supports the following format:
///
/// * <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span> - (Required) Unique namespace identifying the option's associated AWS resource
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> - (Required) Name of the configuration option
/// * <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> - (Required) Value for the configuration option
/// * <span pulumi-lang-nodejs="`resource`" pulumi-lang-dotnet="`Resource`" pulumi-lang-go="`resource`" pulumi-lang-python="`resource`" pulumi-lang-yaml="`resource`" pulumi-lang-java="`resource`">`resource`</span> - (Optional) resource name for [scheduled action](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options-general.html#command-options-general-autoscalingscheduledaction)
class ConfigurationTemplate extends CustomResource {
  /// name of the application to associate with this configuration template
  late final Output<String> application;

  /// Short description of the Template
  late final Output<String?> description;

  /// The ID of the environment used with this configuration template
  late final Output<String?> environmentId;

  /// A unique name for this Template.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Option settings to configure the new Environment. These
  /// override specific values that are set as defaults. The format is detailed
  /// below in Option Settings
  late final Output<List<ConfigurationTemplateSetting>> settings;

  /// A solution stack to base your Template
  /// off of. Example stacks can be found in the [Amazon API documentation][1]
  late final Output<String?> solutionStackName;

  ConfigurationTemplate(
    String name, {
    ConfigurationTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/configurationTemplate:ConfigurationTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.application = registerOutput<String>('application');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String?>('environmentId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.settings =
        registerOutput<List<ConfigurationTemplateSetting>>('settings');
    this.solutionStackName = registerOutput<String?>('solutionStackName');
  }
}
