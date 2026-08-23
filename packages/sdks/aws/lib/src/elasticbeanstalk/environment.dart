import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'environment_state.dart';

/// Provides an Elastic Beanstalk Environment Resource. Elastic Beanstalk allows
/// you to deploy and manage applications in the AWS cloud without worrying about
/// the infrastructure that runs those applications.
///
/// Environments are often things such as `development`, `integration`, or
/// `production`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleApplication = new aws.elasticbeanstalk.Application("example", {
///     name: "tf-test-name",
///     description: "tf-test-desc",
/// });
/// const example = new aws.elasticbeanstalk.Environment("example", {
///     name: "tf-test-name",
///     application: exampleApplication.name,
///     solutionStackName: "64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_application = aws.elasticbeanstalk.Application("example",
///     name="tf-test-name",
///     description="tf-test-desc")
/// example = aws.elasticbeanstalk.Environment("example",
///     name="tf-test-name",
///     application=example_application.name,
///     solution_stack_name="64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleApplication = new Aws.ElasticBeanstalk.Application("example", new()
///     {
///         Name = "tf-test-name",
///         Description = "tf-test-desc",
///     });
///
///     var example = new Aws.ElasticBeanstalk.Environment("example", new()
///     {
///         Name = "tf-test-name",
///         Application = exampleApplication.Name,
///         SolutionStackName = "64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticbeanstalk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleApplication, err := elasticbeanstalk.NewApplication(ctx, "example", &elasticbeanstalk.ApplicationArgs{
/// 			Name:        pulumi.String("tf-test-name"),
/// 			Description: pulumi.String("tf-test-desc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticbeanstalk.NewEnvironment(ctx, "example", &elasticbeanstalk.EnvironmentArgs{
/// 			Name:              pulumi.String("tf-test-name"),
/// 			Application:       exampleApplication.Name,
/// 			SolutionStackName: pulumi.String("64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elasticbeanstalk_environment" "example" {
///   name                = "tf-test-name"
///   application         = aws_elasticbeanstalk_application.example.name
///   solution_stack_name = "64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4"
/// }
/// resource "aws_elasticbeanstalk_application" "example" {
///   name        = "tf-test-name"
///   description = "tf-test-desc"
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
/// import com.pulumi.aws.elasticbeanstalk.Environment;
/// import com.pulumi.aws.elasticbeanstalk.EnvironmentArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("tf-test-name")
///             .description("tf-test-desc")
///             .build());
///
///         var example = new Environment("example", EnvironmentArgs.builder()
///             .name("tf-test-name")
///             .application(exampleApplication.name())
///             .solutionStackName("64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticbeanstalk:Environment
///     properties:
///       name: tf-test-name
///       application: ${exampleApplication.name}
///       solutionStackName: 64bit Amazon Linux 2015.03 v2.0.3 running Go 1.4
///   exampleApplication:
///     type: aws:elasticbeanstalk:Application
///     name: example
///     properties:
///       name: tf-test-name
///       description: tf-test-desc
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Beanstalk Environments using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticbeanstalk/environment:Environment prodenv e-rpqsewtp2j
/// ```
class Environment extends pulumi.CustomResource {
  /// List of all option settings configured in this Environment. These
  /// are a combination of default settings and their overrides from `setting` in
  /// the configuration.
  late final pulumi.Output<List<Map<String, dynamic>>> allSettings;
  /// Name of the application that contains the version
  /// to be deployed
  late final pulumi.Output<String> application;
  late final pulumi.Output<String> arn;
  /// The autoscaling groups used by this Environment.
  late final pulumi.Output<List<String>> autoscalingGroups;
  /// Fully qualified DNS name for this Environment.
  late final pulumi.Output<String> cname;
  /// Prefix to use for the fully qualified DNS name of
  /// the Environment.
  late final pulumi.Output<String> cnamePrefix;
  /// Short description of the Environment
  late final pulumi.Output<String?> description;
  /// The URL to the Load Balancer for this Environment
  late final pulumi.Output<String> endpointUrl;
  /// Instances used by this Environment.
  late final pulumi.Output<List<String>> instances;
  /// Launch configurations in use by this Environment.
  late final pulumi.Output<List<String>> launchConfigurations;
  /// Elastic load balancers in use by this Environment.
  late final pulumi.Output<List<String>> loadBalancers;
  /// A unique name for this Environment. This name is used
  /// in the application URL
  late final pulumi.Output<String> name;
  /// The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the Elastic Beanstalk [Platform](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn)
  /// to use in deployment
  late final pulumi.Output<String> platformArn;
  /// The time between polling the AWS API to
  /// check if changes have been applied. Use this to adjust the rate of API calls
  /// for any `create` or `update` action. Minimum `10s`, maximum `180s`. Omit this to
  /// use the default behavior, which is an exponential backoff
  late final pulumi.Output<String?> pollInterval;
  /// SQS queues in use by this Environment.
  late final pulumi.Output<List<String>> queues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Option settings to configure the new Environment. These
  /// override specific values that are set as defaults. The format is detailed
  /// below in Option Settings
  late final pulumi.Output<List<Map<String, dynamic>>?> settings;
  /// A solution stack to base your environment
  /// off of. Example stacks can be found in the [Amazon API documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html)
  late final pulumi.Output<String> solutionStackName;
  /// A set of tags to apply to the Environment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The name of the Elastic Beanstalk Configuration
  /// template to use in deployment
  late final pulumi.Output<String?> templateName;
  /// Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// or `WebServer`. If tier is left blank `WebServer` will be used.
  late final pulumi.Output<String?> tier;
  /// Autoscaling triggers in use by this Environment.
  late final pulumi.Output<List<String>> triggers;
  /// The name of the Elastic Beanstalk Application Version
  /// to use in deployment.
  late final pulumi.Output<String> version;
  /// The maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that this provider should
  /// wait for an Elastic Beanstalk Environment to be in a ready state before timing
  /// out.
  late final pulumi.Output<String?> waitForReadyTimeout;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_elasticbeanstalk_environment_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allSettings = registerOutput<List<Map<String, dynamic>>>('allSettings');
    application = registerOutput<String>('application');
    arn = registerOutput<String>('arn');
    autoscalingGroups = registerOutput<List<String>>('autoscalingGroups');
    cname = registerOutput<String>('cname');
    cnamePrefix = registerOutput<String>('cnamePrefix');
    description = registerOutput<String?>('description');
    endpointUrl = registerOutput<String>('endpointUrl');
    instances = registerOutput<List<String>>('instances');
    launchConfigurations = registerOutput<List<String>>('launchConfigurations');
    loadBalancers = registerOutput<List<String>>('loadBalancers');
    this.name = registerOutput<String>('name');
    platformArn = registerOutput<String>('platformArn');
    pollInterval = registerOutput<String?>('pollInterval');
    queues = registerOutput<List<String>>('queues');
    region = registerOutput<String>('region');
    settings = registerOutput<List<Map<String, dynamic>>?>('settings');
    solutionStackName = registerOutput<String>('solutionStackName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    templateName = registerOutput<String?>('templateName');
    tier = registerOutput<String?>('tier');
    triggers = registerOutput<List<String>>('triggers');
    version = registerOutput<String>('version');
    waitForReadyTimeout = registerOutput<String?>('waitForReadyTimeout');
  }

  /// Gets an existing [Environment] resource's state with the given [name] and [id].
  static Environment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentState? state,
  }) {
    return Environment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Environment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticbeanstalk/environment:Environment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allSettings = registerOutput<List<Map<String, dynamic>>>('allSettings');
    application = registerOutput<String>('application');
    arn = registerOutput<String>('arn');
    autoscalingGroups = registerOutput<List<String>>('autoscalingGroups');
    cname = registerOutput<String>('cname');
    cnamePrefix = registerOutput<String>('cnamePrefix');
    description = registerOutput<String?>('description');
    endpointUrl = registerOutput<String>('endpointUrl');
    instances = registerOutput<List<String>>('instances');
    launchConfigurations = registerOutput<List<String>>('launchConfigurations');
    loadBalancers = registerOutput<List<String>>('loadBalancers');
    this.name = registerOutput<String>('name');
    platformArn = registerOutput<String>('platformArn');
    pollInterval = registerOutput<String?>('pollInterval');
    queues = registerOutput<List<String>>('queues');
    region = registerOutput<String>('region');
    settings = registerOutput<List<Map<String, dynamic>>?>('settings');
    solutionStackName = registerOutput<String>('solutionStackName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    templateName = registerOutput<String?>('templateName');
    tier = registerOutput<String?>('tier');
    triggers = registerOutput<List<String>>('triggers');
    version = registerOutput<String>('version');
    waitForReadyTimeout = registerOutput<String?>('waitForReadyTimeout');
  }
}
