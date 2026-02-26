import 'package:pulumi/pulumi.dart';
import '../application_appversion_lifecycle/application_appversion_lifecycle.dart';
import 'application_args4.dart';

/// Provides an Elastic Beanstalk Application Resource. Elastic Beanstalk allows
/// you to deploy and manage applications in the AWS cloud without worrying about
/// the infrastructure that runs those applications.
///
/// This resource creates an application that has one configuration template named
/// <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, and no application versions
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const tftest = new aws.elasticbeanstalk.Application("tftest", {
/// name: "tf-test-name",
/// description: "tf-test-desc",
/// appversionLifecycle: {
/// serviceRole: beanstalkService.arn,
/// maxCount: 128,
/// deleteSourceFromS3: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// tftest = aws.elasticbeanstalk.Application("tftest",
/// name="tf-test-name",
/// description="tf-test-desc",
/// appversion_lifecycle={
/// "service_role": beanstalk_service["arn"],
/// "max_count": 128,
/// "delete_source_from_s3": True,
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
/// var tftest = new Aws.ElasticBeanstalk.Application("tftest", new()
/// {
/// Name = "tf-test-name",
/// Description = "tf-test-desc",
/// AppversionLifecycle = new Aws.ElasticBeanstalk.Inputs.ApplicationAppversionLifecycleArgs
/// {
/// ServiceRole = beanstalkService.Arn,
/// MaxCount = 128,
/// DeleteSourceFromS3 = true,
/// },
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
/// _, err := elasticbeanstalk.NewApplication(ctx, "tftest", &elasticbeanstalk.ApplicationArgs{
/// Name:        pulumi.String("tf-test-name"),
/// Description: pulumi.String("tf-test-desc"),
/// AppversionLifecycle: &elasticbeanstalk.ApplicationAppversionLifecycleArgs{
/// ServiceRole:        pulumi.Any(beanstalkService.Arn),
/// MaxCount:           pulumi.Int(128),
/// DeleteSourceFromS3: pulumi.Bool(true),
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
/// import com.pulumi.aws.elasticbeanstalk.Application;
/// import com.pulumi.aws.elasticbeanstalk.ApplicationArgs;
/// import com.pulumi.aws.elasticbeanstalk.inputs.ApplicationAppversionLifecycleArgs;
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
/// var tftest = new Application("tftest", ApplicationArgs.builder()
/// .name("tf-test-name")
/// .description("tf-test-desc")
/// .appversionLifecycle(ApplicationAppversionLifecycleArgs.builder()
/// .serviceRole(beanstalkService.arn())
/// .maxCount(128)
/// .deleteSourceFromS3(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// tftest:
/// type: aws:elasticbeanstalk:Application
/// properties:
/// name: tf-test-name
/// description: tf-test-desc
/// appversionLifecycle:
/// serviceRole: ${beanstalkService.arn}
/// maxCount: 128
/// deleteSourceFromS3: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Beanstalk Applications using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elasticbeanstalk/application:Application tf_test tf-test-name
/// ```
class Application4 extends CustomResource {
  late final Output<ApplicationAppversionLifecycle?> appversionLifecycle;

  /// The ARN assigned by AWS for this Elastic Beanstalk Application.
  late final Output<String> arn;

  /// Short description of the application
  late final Output<String?> description;

  /// The name of the application, must be unique within your account
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of tags for the Elastic Beanstalk Application. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Application4(
    String name, {
    ApplicationArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appversionLifecycle =
        Output.createUnknown<ApplicationAppversionLifecycle?>();
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
