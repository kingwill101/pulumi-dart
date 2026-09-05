import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_encryption_configuration.dart';
import 'service_health_check_configuration.dart';
import 'service_instance_configuration.dart';
import 'service_network_configuration.dart';
import 'service_observability_configuration.dart';
import 'service_source_configuration.dart';
import 'service_state.dart';

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
///             sourceCodeVersion: {
///                 type: "BRANCH",
///                 value: "main",
///             },
///             repositoryUrl: "https://github.com/example/my-example-python-app",
///         },
///     },
///     networkConfiguration: {
///         egressConfiguration: {
///             egressType: "VPC",
///             vpcConnectorArn: connector.arn,
///         },
///     },
///     serviceName: "example",
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
///             "source_code_version": {
///                 "type": "BRANCH",
///                 "value": "main",
///             },
///             "repository_url": "https://github.com/example/my-example-python-app",
///         },
///     },
///     network_configuration={
///         "egress_configuration": {
///             "egress_type": "VPC",
///             "vpc_connector_arn": connector["arn"],
///         },
///     },
///     service_name="example",
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
///                 SourceCodeVersion = new Aws.AppRunner.Inputs.ServiceSourceConfigurationCodeRepositorySourceCodeVersionArgs
///                 {
///                     Type = "BRANCH",
///                     Value = "main",
///                 },
///                 RepositoryUrl = "https://github.com/example/my-example-python-app",
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
///         ServiceName = "example",
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
/// 					SourceCodeVersion: &apprunner.ServiceSourceConfigurationCodeRepositorySourceCodeVersionArgs{
/// 						Type:  pulumi.String("BRANCH"),
/// 						Value: pulumi.String("main"),
/// 					},
/// 					RepositoryUrl: pulumi.String("https://github.com/example/my-example-python-app"),
/// 				},
/// 			},
/// 			NetworkConfiguration: &apprunner.ServiceNetworkConfigurationArgs{
/// 				EgressConfiguration: &apprunner.ServiceNetworkConfigurationEgressConfigurationArgs{
/// 					EgressType:      pulumi.String("VPC"),
/// 					VpcConnectorArn: pulumi.Any(connector.Arn),
/// 				},
/// 			},
/// 			ServiceName: pulumi.String("example"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_apprunner_service" "example" {
///   source_configuration = {
///     authentication_configuration = {
///       connection_arn = exampleAwsApprunnerConnection.arn
///     }
///     code_repository = {
///       code_configuration = {
///         code_configuration_values = {
///           build_command = "python setup.py develop"
///           port          = "8000"
///           runtime       = "PYTHON_3"
///           start_command = "python runapp.py"
///         }
///         configuration_source = "API"
///       }
///       source_code_version = {
///         type  = "BRANCH"
///         value = "main"
///       }
///       repository_url = "https://github.com/example/my-example-python-app"
///     }
///   }
///   network_configuration = {
///     egress_configuration = {
///       egress_type       = "VPC"
///       vpc_connector_arn = connector.arn
///     }
///   }
///   service_name = "example"
///   tags = {
///     "Name" = "example-apprunner-service"
///   }
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
///         var example = new Service("example", ServiceArgs.builder()
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
///                     .sourceCodeVersion(ServiceSourceConfigurationCodeRepositorySourceCodeVersionArgs.builder()
///                         .type("BRANCH")
///                         .value("main")
///                         .build())
///                     .repositoryUrl("https://github.com/example/my-example-python-app")
///                     .build())
///                 .build())
///             .networkConfiguration(ServiceNetworkConfigurationArgs.builder()
///                 .egressConfiguration(ServiceNetworkConfigurationEgressConfigurationArgs.builder()
///                     .egressType("VPC")
///                     .vpcConnectorArn(connector.arn())
///                     .build())
///                 .build())
///             .serviceName("example")
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
///           sourceCodeVersion:
///             type: BRANCH
///             value: main
///           repositoryUrl: https://github.com/example/my-example-python-app
///       networkConfiguration:
///         egressConfiguration:
///           egressType: VPC
///           vpcConnectorArn: ${connector.arn}
///       serviceName: example
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
///     serviceName: "example",
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
///     service_name="example",
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
///         ServiceName = "example",
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
/// 			ServiceName: pulumi.String("example"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_apprunner_service" "example" {
///   source_configuration = {
///     image_repository = {
///       image_configuration = {
///         port = "8000"
///       }
///       image_identifier      = "public.ecr.aws/aws-containers/hello-app-runner:latest"
///       image_repository_type = "ECR_PUBLIC"
///     }
///     auto_deployments_enabled = false
///   }
///   service_name = "example"
///   tags = {
///     "Name" = "example-apprunner-service"
///   }
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
///         var example = new Service("example", ServiceArgs.builder()
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
///             .serviceName("example")
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
///       sourceConfiguration:
///         imageRepository:
///           imageConfiguration:
///             port: '8000'
///           imageIdentifier: public.ecr.aws/aws-containers/hello-app-runner:latest
///           imageRepositoryType: ECR_PUBLIC
///         autoDeploymentsEnabled: false
///       serviceName: example
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
///     traceConfiguration: {
///         vendor: "AWSXRAY",
///     },
///     observabilityConfigurationName: "example",
/// });
/// const example = new aws.apprunner.Service("example", {
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
///     serviceName: "example",
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
///     trace_configuration={
///         "vendor": "AWSXRAY",
///     },
///     observability_configuration_name="example")
/// example = aws.apprunner.Service("example",
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
///     service_name="example",
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
///         TraceConfiguration = new Aws.AppRunner.Inputs.ObservabilityConfigurationTraceConfigurationArgs
///         {
///             Vendor = "AWSXRAY",
///         },
///         ObservabilityConfigurationName = "example",
///     });
///
///     var example = new Aws.AppRunner.Service("example", new()
///     {
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
///         ServiceName = "example",
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
/// 			TraceConfiguration: &apprunner.ObservabilityConfigurationTraceConfigurationArgs{
/// 				Vendor: pulumi.String("AWSXRAY"),
/// 			},
/// 			ObservabilityConfigurationName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apprunner.NewService(ctx, "example", &apprunner.ServiceArgs{
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
/// 			ServiceName: pulumi.String("example"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_apprunner_service" "example" {
///   observability_configuration = {
///     observability_configuration_arn = aws_apprunner_observabilityconfiguration.example.arn
///     observability_enabled           = true
///   }
///   source_configuration = {
///     image_repository = {
///       image_configuration = {
///         port = "8000"
///       }
///       image_identifier      = "public.ecr.aws/aws-containers/hello-app-runner:latest"
///       image_repository_type = "ECR_PUBLIC"
///     }
///     auto_deployments_enabled = false
///   }
///   service_name = "example"
///   tags = {
///     "Name" = "example-apprunner-service"
///   }
/// }
/// resource "aws_apprunner_observabilityconfiguration" "example" {
///   trace_configuration = {
///     vendor = "AWSXRAY"
///   }
///   observability_configuration_name = "example"
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
///         var exampleObservabilityConfiguration = new ObservabilityConfiguration("exampleObservabilityConfiguration", ObservabilityConfigurationArgs.builder()
///             .traceConfiguration(ObservabilityConfigurationTraceConfigurationArgs.builder()
///                 .vendor("AWSXRAY")
///                 .build())
///             .observabilityConfigurationName("example")
///             .build());
///
///         var example = new Service("example", ServiceArgs.builder()
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
///             .serviceName("example")
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
///       serviceName: example
///       tags:
///         Name: example-apprunner-service
///   exampleObservabilityConfiguration:
///     type: aws:apprunner:ObservabilityConfiguration
///     name: example
///     properties:
///       traceConfiguration:
///         vendor: AWSXRAY
///       observabilityConfigurationName: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the App Runner service.
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
  /// Custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See `encryptionConfiguration` below.
  late final pulumi.Output<ServiceEncryptionConfiguration?> encryptionConfiguration;
  /// Settings of the health check that AWS App Runner performs to monitor the health of your service. See `healthCheckConfiguration` below.
  late final pulumi.Output<ServiceHealthCheckConfiguration> healthCheckConfiguration;
  /// Runtime configuration of instances (scaling units) of the App Runner service. See `instanceConfiguration` below.
  late final pulumi.Output<ServiceInstanceConfiguration> instanceConfiguration;
  /// Configuration settings related to network traffic of the web application that the App Runner service runs. See `networkConfiguration` below.
  late final pulumi.Output<ServiceNetworkConfiguration> networkConfiguration;
  /// Observability configuration of your service. See `observabilityConfiguration` below.
  late final pulumi.Output<ServiceObservabilityConfiguration?> observabilityConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Alphanumeric ID that App Runner generated for this service. Unique within the AWS Region.
  late final pulumi.Output<String> serviceId;
  /// Name of the service.
  late final pulumi.Output<String> serviceName;
  /// Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.
  late final pulumi.Output<String> serviceUrl;
  /// Source to deploy to the App Runner service. Can be a code or an image repository. See `sourceConfiguration` below.
  late final pulumi.Output<ServiceSourceConfiguration> sourceConfiguration;
  /// Current state of the App Runner service.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    autoScalingConfigurationArn = registerOutput<String>('autoScalingConfigurationArn');
    encryptionConfiguration = registerOutput<ServiceEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckConfiguration = registerOutput<ServiceHealthCheckConfiguration>('healthCheckConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHealthCheckConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceConfiguration = registerOutput<ServiceInstanceConfiguration>('instanceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceInstanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkConfiguration = registerOutput<ServiceNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    observabilityConfiguration = registerOutput<ServiceObservabilityConfiguration?>('observabilityConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceObservabilityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serviceId = registerOutput<String>('serviceId');
    serviceName = registerOutput<String>('serviceName');
    serviceUrl = registerOutput<String>('serviceUrl');
    sourceConfiguration = registerOutput<ServiceSourceConfiguration>('sourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    autoScalingConfigurationArn = registerOutput<String>('autoScalingConfigurationArn');
    encryptionConfiguration = registerOutput<ServiceEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckConfiguration = registerOutput<ServiceHealthCheckConfiguration>('healthCheckConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHealthCheckConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceConfiguration = registerOutput<ServiceInstanceConfiguration>('instanceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceInstanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkConfiguration = registerOutput<ServiceNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    observabilityConfiguration = registerOutput<ServiceObservabilityConfiguration?>('observabilityConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceObservabilityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serviceId = registerOutput<String>('serviceId');
    serviceName = registerOutput<String>('serviceName');
    serviceUrl = registerOutput<String>('serviceUrl');
    sourceConfiguration = registerOutput<ServiceSourceConfiguration>('sourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Service] resource.
  Service.reference(String urn)
    : super(
        'aws:apprunner/service:Service',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    autoScalingConfigurationArn = registerOutput<String>('autoScalingConfigurationArn');
    encryptionConfiguration = registerOutput<ServiceEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    healthCheckConfiguration = registerOutput<ServiceHealthCheckConfiguration>('healthCheckConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHealthCheckConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceConfiguration = registerOutput<ServiceInstanceConfiguration>('instanceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceInstanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkConfiguration = registerOutput<ServiceNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    observabilityConfiguration = registerOutput<ServiceObservabilityConfiguration?>('observabilityConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceObservabilityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serviceId = registerOutput<String>('serviceId');
    serviceName = registerOutput<String>('serviceName');
    serviceUrl = registerOutput<String>('serviceUrl');
    sourceConfiguration = registerOutput<ServiceSourceConfiguration>('sourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
