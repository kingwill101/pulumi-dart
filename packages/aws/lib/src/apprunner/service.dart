import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_encryption_configuration.dart';
import 'service_health_check_configuration.dart';
import 'service_instance_configuration.dart';
import 'service_network_configuration.dart';
import 'service_observability_configuration.dart';
import 'service_source_configuration.dart';

/// Manages an App Runner Service.
///
/// ## Example Usage
///
/// ### Service with a Code Repository Source
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.Service("example", {
///     serviceName: "example",
///     sourceConfiguration: {
///         authenticationConfiguration: {
///             connectionArn: exampleAwsApprunnerConnection.arn,
///         },
///         codeRepository: {
///             codeConfiguration: {
///                 codeConfigurationValues: {
///                     buildCommand: "python setup.py develop",
///                     port: "8000",
///                     runtime: "PYTHON_3",
///                     startCommand: "python runapp.py",
///                 },
///                 configurationSource: "API",
///             },
///             repositoryUrl: "https://github.com/example/my-example-python-app",
///             sourceCodeVersion: {
///                 type: "BRANCH",
///                 value: "main",
///             },
///         },
///     },
///     networkConfiguration: {
///         egressConfiguration: {
///             egressType: "VPC",
///             vpcConnectorArn: connector.arn,
///         },
///     },
///     tags: {
///         Name: "example-apprunner-service",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.Service("example",
///     service_name="example",
///     source_configuration={
///         "authentication_configuration": {
///             "connection_arn": example_aws_apprunner_connection["arn"],
///         },
///         "code_repository": {
///             "code_configuration": {
///                 "code_configuration_values": {
///                     "build_command": "python setup.py develop",
///                     "port": "8000",
///                     "runtime": "PYTHON_3",
///                     "start_command": "python runapp.py",
///                 },
///                 "configuration_source": "API",
///             },
///             "repository_url": "https://github.com/example/my-example-python-app",
///             "source_code_version": {
///                 "type": "BRANCH",
///                 "value": "main",
///             },
///         },
///     },
///     network_configuration={
///         "egress_configuration": {
///             "egress_type": "VPC",
///             "vpc_connector_arn": connector["arn"],
///         },
///     },
///     tags={
///         "Name": "example-apprunner-service",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppRunner.Service("example", new()
///     {
///         ServiceName = "example",
///         SourceConfiguration = new Aws.AppRunner.Inputs.ServiceSourceConfigurationArgs
///         {
///             AuthenticationConfiguration = new Aws.AppRunner.Inputs.ServiceSourceConfigurationAuthenticationConfigurationArgs
///             {
///                 ConnectionArn = exampleAwsApprunnerConnection.Arn,
///             },
///             CodeRepository = new Aws.AppRunner.Inputs.ServiceSourceConfigurationCodeRepositoryArgs
///             {
///                 CodeConfiguration = new Aws.AppRunner.Inputs.ServiceSourceConfigurationCodeRepositoryCodeConfigurationArgs
///                 {
///                     CodeConfigurationValues = new Aws.AppRunner.Inputs.ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValuesArgs
///                     {
///                         BuildCommand = "python setup.py develop",
///                         Port = "8000",
///                         Runtime = "PYTHON_3",
///                         StartCommand = "python runapp.py",
///                     },
///                     ConfigurationSource = "API",
///                 },
///                 RepositoryUrl = "https://github.com/example/my-example-python-app",
///                 SourceCodeVersion = new Aws.AppRunner.Inputs.ServiceSourceConfigurationCodeRepositorySourceCodeVersionArgs
///                 {
///                     Type = "BRANCH",
///                     Value = "main",
///                 },
///             },
///         },
///         NetworkConfiguration = new Aws.AppRunner.Inputs.ServiceNetworkConfigurationArgs
///         {
///             EgressConfiguration = new Aws.AppRunner.Inputs.ServiceNetworkConfigurationEgressConfigurationArgs
///             {
///                 EgressType = "VPC",
///                 VpcConnectorArn = connector.Arn,
///             },
///         },
///         Tags =
///         {
///             { "Name", "example-apprunner-service" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apprunner.NewService(ctx, "example", &apprunner.ServiceArgs{
/// 			ServiceName: pulumi.String("example"),
/// 			SourceConfiguration: &apprunner.ServiceSourceConfigurationArgs{
/// 				AuthenticationConfiguration: &apprunner.ServiceSourceConfigurationAuthenticationConfigurationArgs{
/// 					ConnectionArn: pulumi.Any(exampleAwsApprunnerConnection.Arn),
/// 				},
/// 				CodeRepository: &apprunner.ServiceSourceConfigurationCodeRepositoryArgs{
/// 					CodeConfiguration: &apprunner.ServiceSourceConfigurationCodeRepositoryCodeConfigurationArgs{
/// 						CodeConfigurationValues: &apprunner.ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValuesArgs{
/// 							BuildCommand: pulumi.String("python setup.py develop"),
/// 							Port:         pulumi.String("8000"),
/// 							Runtime:      pulumi.String("PYTHON_3"),
/// 							StartCommand: pulumi.String("python runapp.py"),
/// 						},
/// 						ConfigurationSource: pulumi.String("API"),
/// 					},
/// 					RepositoryUrl: pulumi.String("https://github.com/example/my-example-python-app"),
/// 					SourceCodeVersion: &apprunner.ServiceSourceConfigurationCodeRepositorySourceCodeVersionArgs{
/// 						Type:  pulumi.String("BRANCH"),
/// 						Value: pulumi.String("main"),
/// 					},
/// 				},
/// 			},
/// 			NetworkConfiguration: &apprunner.ServiceNetworkConfigurationArgs{
/// 				EgressConfiguration: &apprunner.ServiceNetworkConfigurationEgressConfigurationArgs{
/// 					EgressType:      pulumi.String("VPC"),
/// 					VpcConnectorArn: pulumi.Any(connector.Arn),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-apprunner-service"),
/// 			},
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
/// import com.pulumi.aws.apprunner.Service;
/// import com.pulumi.aws.apprunner.ServiceArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationAuthenticationConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationCodeRepositoryArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationCodeRepositoryCodeConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValuesArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationCodeRepositorySourceCodeVersionArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceNetworkConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceNetworkConfigurationEgressConfigurationArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .serviceName("example")
///             .sourceConfiguration(ServiceSourceConfigurationArgs.builder()
///                 .authenticationConfiguration(ServiceSourceConfigurationAuthenticationConfigurationArgs.builder()
///                     .connectionArn(exampleAwsApprunnerConnection.arn())
///                     .build())
///                 .codeRepository(ServiceSourceConfigurationCodeRepositoryArgs.builder()
///                     .codeConfiguration(ServiceSourceConfigurationCodeRepositoryCodeConfigurationArgs.builder()
///                         .codeConfigurationValues(ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValuesArgs.builder()
///                             .buildCommand("python setup.py develop")
///                             .port("8000")
///                             .runtime("PYTHON_3")
///                             .startCommand("python runapp.py")
///                             .build())
///                         .configurationSource("API")
///                         .build())
///                     .repositoryUrl("https://github.com/example/my-example-python-app")
///                     .sourceCodeVersion(ServiceSourceConfigurationCodeRepositorySourceCodeVersionArgs.builder()
///                         .type("BRANCH")
///                         .value("main")
///                         .build())
///                     .build())
///                 .build())
///             .networkConfiguration(ServiceNetworkConfigurationArgs.builder()
///                 .egressConfiguration(ServiceNetworkConfigurationEgressConfigurationArgs.builder()
///                     .egressType("VPC")
///                     .vpcConnectorArn(connector.arn())
///                     .build())
///                 .build())
///             .tags(Map.of("Name", "example-apprunner-service"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:Service
///     properties:
///       serviceName: example
///       sourceConfiguration:
///         authenticationConfiguration:
///           connectionArn: ${exampleAwsApprunnerConnection.arn}
///         codeRepository:
///           codeConfiguration:
///             codeConfigurationValues:
///               buildCommand: python setup.py develop
///               port: '8000'
///               runtime: PYTHON_3
///               startCommand: python runapp.py
///             configurationSource: API
///           repositoryUrl: https://github.com/example/my-example-python-app
///           sourceCodeVersion:
///             type: BRANCH
///             value: main
///       networkConfiguration:
///         egressConfiguration:
///           egressType: VPC
///           vpcConnectorArn: ${connector.arn}
///       tags:
///         Name: example-apprunner-service
/// ```
///
///
/// ### Service with an Image Repository Source
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.Service("example", {
///     serviceName: "example",
///     sourceConfiguration: {
///         imageRepository: {
///             imageConfiguration: {
///                 port: "8000",
///             },
///             imageIdentifier: "public.ecr.aws/aws-containers/hello-app-runner:latest",
///             imageRepositoryType: "ECR_PUBLIC",
///         },
///         autoDeploymentsEnabled: false,
///     },
///     tags: {
///         Name: "example-apprunner-service",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.Service("example",
///     service_name="example",
///     source_configuration={
///         "image_repository": {
///             "image_configuration": {
///                 "port": "8000",
///             },
///             "image_identifier": "public.ecr.aws/aws-containers/hello-app-runner:latest",
///             "image_repository_type": "ECR_PUBLIC",
///         },
///         "auto_deployments_enabled": False,
///     },
///     tags={
///         "Name": "example-apprunner-service",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppRunner.Service("example", new()
///     {
///         ServiceName = "example",
///         SourceConfiguration = new Aws.AppRunner.Inputs.ServiceSourceConfigurationArgs
///         {
///             ImageRepository = new Aws.AppRunner.Inputs.ServiceSourceConfigurationImageRepositoryArgs
///             {
///                 ImageConfiguration = new Aws.AppRunner.Inputs.ServiceSourceConfigurationImageRepositoryImageConfigurationArgs
///                 {
///                     Port = "8000",
///                 },
///                 ImageIdentifier = "public.ecr.aws/aws-containers/hello-app-runner:latest",
///                 ImageRepositoryType = "ECR_PUBLIC",
///             },
///             AutoDeploymentsEnabled = false,
///         },
///         Tags =
///         {
///             { "Name", "example-apprunner-service" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apprunner.NewService(ctx, "example", &apprunner.ServiceArgs{
/// 			ServiceName: pulumi.String("example"),
/// 			SourceConfiguration: &apprunner.ServiceSourceConfigurationArgs{
/// 				ImageRepository: &apprunner.ServiceSourceConfigurationImageRepositoryArgs{
/// 					ImageConfiguration: &apprunner.ServiceSourceConfigurationImageRepositoryImageConfigurationArgs{
/// 						Port: pulumi.String("8000"),
/// 					},
/// 					ImageIdentifier:     pulumi.String("public.ecr.aws/aws-containers/hello-app-runner:latest"),
/// 					ImageRepositoryType: pulumi.String("ECR_PUBLIC"),
/// 				},
/// 				AutoDeploymentsEnabled: pulumi.Bool(false),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-apprunner-service"),
/// 			},
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
/// import com.pulumi.aws.apprunner.Service;
/// import com.pulumi.aws.apprunner.ServiceArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationImageRepositoryArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationImageRepositoryImageConfigurationArgs;
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
///         var example = new Service("example", ServiceArgs.builder()
///             .serviceName("example")
///             .sourceConfiguration(ServiceSourceConfigurationArgs.builder()
///                 .imageRepository(ServiceSourceConfigurationImageRepositoryArgs.builder()
///                     .imageConfiguration(ServiceSourceConfigurationImageRepositoryImageConfigurationArgs.builder()
///                         .port("8000")
///                         .build())
///                     .imageIdentifier("public.ecr.aws/aws-containers/hello-app-runner:latest")
///                     .imageRepositoryType("ECR_PUBLIC")
///                     .build())
///                 .autoDeploymentsEnabled(false)
///                 .build())
///             .tags(Map.of("Name", "example-apprunner-service"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:Service
///     properties:
///       serviceName: example
///       sourceConfiguration:
///         imageRepository:
///           imageConfiguration:
///             port: '8000'
///           imageIdentifier: public.ecr.aws/aws-containers/hello-app-runner:latest
///           imageRepositoryType: ECR_PUBLIC
///         autoDeploymentsEnabled: false
///       tags:
///         Name: example-apprunner-service
/// ```
///
///
/// ### Service with Observability Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleObservabilityConfiguration = new aws.apprunner.ObservabilityConfiguration("example", {
///     observabilityConfigurationName: "example",
///     traceConfiguration: {
///         vendor: "AWSXRAY",
///     },
/// });
/// const example = new aws.apprunner.Service("example", {
///     serviceName: "example",
///     observabilityConfiguration: {
///         observabilityConfigurationArn: exampleObservabilityConfiguration.arn,
///         observabilityEnabled: true,
///     },
///     sourceConfiguration: {
///         imageRepository: {
///             imageConfiguration: {
///                 port: "8000",
///             },
///             imageIdentifier: "public.ecr.aws/aws-containers/hello-app-runner:latest",
///             imageRepositoryType: "ECR_PUBLIC",
///         },
///         autoDeploymentsEnabled: false,
///     },
///     tags: {
///         Name: "example-apprunner-service",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_observability_configuration = aws.apprunner.ObservabilityConfiguration("example",
///     observability_configuration_name="example",
///     trace_configuration={
///         "vendor": "AWSXRAY",
///     })
/// example = aws.apprunner.Service("example",
///     service_name="example",
///     observability_configuration={
///         "observability_configuration_arn": example_observability_configuration.arn,
///         "observability_enabled": True,
///     },
///     source_configuration={
///         "image_repository": {
///             "image_configuration": {
///                 "port": "8000",
///             },
///             "image_identifier": "public.ecr.aws/aws-containers/hello-app-runner:latest",
///             "image_repository_type": "ECR_PUBLIC",
///         },
///         "auto_deployments_enabled": False,
///     },
///     tags={
///         "Name": "example-apprunner-service",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleObservabilityConfiguration = new Aws.AppRunner.ObservabilityConfiguration("example", new()
///     {
///         ObservabilityConfigurationName = "example",
///         TraceConfiguration = new Aws.AppRunner.Inputs.ObservabilityConfigurationTraceConfigurationArgs
///         {
///             Vendor = "AWSXRAY",
///         },
///     });
///
///     var example = new Aws.AppRunner.Service("example", new()
///     {
///         ServiceName = "example",
///         ObservabilityConfiguration = new Aws.AppRunner.Inputs.ServiceObservabilityConfigurationArgs
///         {
///             ObservabilityConfigurationArn = exampleObservabilityConfiguration.Arn,
///             ObservabilityEnabled = true,
///         },
///         SourceConfiguration = new Aws.AppRunner.Inputs.ServiceSourceConfigurationArgs
///         {
///             ImageRepository = new Aws.AppRunner.Inputs.ServiceSourceConfigurationImageRepositoryArgs
///             {
///                 ImageConfiguration = new Aws.AppRunner.Inputs.ServiceSourceConfigurationImageRepositoryImageConfigurationArgs
///                 {
///                     Port = "8000",
///                 },
///                 ImageIdentifier = "public.ecr.aws/aws-containers/hello-app-runner:latest",
///                 ImageRepositoryType = "ECR_PUBLIC",
///             },
///             AutoDeploymentsEnabled = false,
///         },
///         Tags =
///         {
///             { "Name", "example-apprunner-service" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleObservabilityConfiguration, err := apprunner.NewObservabilityConfiguration(ctx, "example", &apprunner.ObservabilityConfigurationArgs{
/// 			ObservabilityConfigurationName: pulumi.String("example"),
/// 			TraceConfiguration: &apprunner.ObservabilityConfigurationTraceConfigurationArgs{
/// 				Vendor: pulumi.String("AWSXRAY"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apprunner.NewService(ctx, "example", &apprunner.ServiceArgs{
/// 			ServiceName: pulumi.String("example"),
/// 			ObservabilityConfiguration: &apprunner.ServiceObservabilityConfigurationArgs{
/// 				ObservabilityConfigurationArn: exampleObservabilityConfiguration.Arn,
/// 				ObservabilityEnabled:          pulumi.Bool(true),
/// 			},
/// 			SourceConfiguration: &apprunner.ServiceSourceConfigurationArgs{
/// 				ImageRepository: &apprunner.ServiceSourceConfigurationImageRepositoryArgs{
/// 					ImageConfiguration: &apprunner.ServiceSourceConfigurationImageRepositoryImageConfigurationArgs{
/// 						Port: pulumi.String("8000"),
/// 					},
/// 					ImageIdentifier:     pulumi.String("public.ecr.aws/aws-containers/hello-app-runner:latest"),
/// 					ImageRepositoryType: pulumi.String("ECR_PUBLIC"),
/// 				},
/// 				AutoDeploymentsEnabled: pulumi.Bool(false),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-apprunner-service"),
/// 			},
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
/// import com.pulumi.aws.apprunner.ObservabilityConfiguration;
/// import com.pulumi.aws.apprunner.ObservabilityConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ObservabilityConfigurationTraceConfigurationArgs;
/// import com.pulumi.aws.apprunner.Service;
/// import com.pulumi.aws.apprunner.ServiceArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceObservabilityConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationImageRepositoryArgs;
/// import com.pulumi.aws.apprunner.inputs.ServiceSourceConfigurationImageRepositoryImageConfigurationArgs;
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
///         var exampleObservabilityConfiguration = new ObservabilityConfiguration("exampleObservabilityConfiguration", ObservabilityConfigurationArgs.builder()
///             .observabilityConfigurationName("example")
///             .traceConfiguration(ObservabilityConfigurationTraceConfigurationArgs.builder()
///                 .vendor("AWSXRAY")
///                 .build())
///             .build());
///
///         var example = new Service("example", ServiceArgs.builder()
///             .serviceName("example")
///             .observabilityConfiguration(ServiceObservabilityConfigurationArgs.builder()
///                 .observabilityConfigurationArn(exampleObservabilityConfiguration.arn())
///                 .observabilityEnabled(true)
///                 .build())
///             .sourceConfiguration(ServiceSourceConfigurationArgs.builder()
///                 .imageRepository(ServiceSourceConfigurationImageRepositoryArgs.builder()
///                     .imageConfiguration(ServiceSourceConfigurationImageRepositoryImageConfigurationArgs.builder()
///                         .port("8000")
///                         .build())
///                     .imageIdentifier("public.ecr.aws/aws-containers/hello-app-runner:latest")
///                     .imageRepositoryType("ECR_PUBLIC")
///                     .build())
///                 .autoDeploymentsEnabled(false)
///                 .build())
///             .tags(Map.of("Name", "example-apprunner-service"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:Service
///     properties:
///       serviceName: example
///       observabilityConfiguration:
///         observabilityConfigurationArn: ${exampleObservabilityConfiguration.arn}
///         observabilityEnabled: true
///       sourceConfiguration:
///         imageRepository:
///           imageConfiguration:
///             port: '8000'
///           imageIdentifier: public.ecr.aws/aws-containers/hello-app-runner:latest
///           imageRepositoryType: ECR_PUBLIC
///         autoDeploymentsEnabled: false
///       tags:
///         Name: example-apprunner-service
///   exampleObservabilityConfiguration:
///     type: aws:apprunner:ObservabilityConfiguration
///     name: example
///     properties:
///       observabilityConfigurationName: example
///       traceConfiguration:
///         vendor: AWSXRAY
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner service.
///
///
/// Using `pulumi import`, import App Runner Services using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/service:Service example arn:aws:apprunner:us-east-1:1234567890:service/example/0a03292a89764e5882c41d8f991c82fe
/// ```
class Service extends pulumi.CustomResource {
  /// ARN of the App Runner service.
  late final pulumi.Output<String> arn;
  /// ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration.
  late final pulumi.Output<String> autoScalingConfigurationArn;
  /// An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details.
  late final pulumi.Output<ServiceEncryptionConfiguration?> encryptionConfiguration;
  /// Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details.
  late final pulumi.Output<ServiceHealthCheckConfiguration> healthCheckConfiguration;
  /// The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details.
  late final pulumi.Output<ServiceInstanceConfiguration> instanceConfiguration;
  /// Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details.
  late final pulumi.Output<ServiceNetworkConfiguration> networkConfiguration;
  /// The observability configuration of your service. See Observability Configuration below for more details.
  late final pulumi.Output<ServiceObservabilityConfiguration?> observabilityConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An alphanumeric ID that App Runner generated for this service. Unique within the AWS Region.
  late final pulumi.Output<String> serviceId;
  /// Name of the service.
  late final pulumi.Output<String> serviceName;
  /// Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.
  late final pulumi.Output<String> serviceUrl;
  /// The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ServiceSourceConfiguration> sourceConfiguration;
  /// Current state of the App Runner service.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_apprunner_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingConfigurationArn = registerOutput<String>('autoScalingConfigurationArn');
    this.encryptionConfiguration = registerOutput<ServiceEncryptionConfiguration?>('encryptionConfiguration');
    this.healthCheckConfiguration = registerOutput<ServiceHealthCheckConfiguration>('healthCheckConfiguration');
    this.instanceConfiguration = registerOutput<ServiceInstanceConfiguration>('instanceConfiguration');
    this.networkConfiguration = registerOutput<ServiceNetworkConfiguration>('networkConfiguration');
    this.observabilityConfiguration = registerOutput<ServiceObservabilityConfiguration?>('observabilityConfiguration');
    this.region = registerOutput<String>('region');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceUrl = registerOutput<String>('serviceUrl');
    this.sourceConfiguration = registerOutput<ServiceSourceConfiguration>('sourceConfiguration');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
