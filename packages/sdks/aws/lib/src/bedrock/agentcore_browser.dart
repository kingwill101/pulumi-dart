import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_args.dart';
import 'agentcore_browser_browser_signing.dart';
import 'agentcore_browser_certificate.dart';
import 'agentcore_browser_enterprise_policy.dart';
import 'agentcore_browser_network_configuration.dart';
import 'agentcore_browser_recording.dart';
import 'agentcore_browser_state.dart';
import 'agentcore_browser_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Browser. Browser provides AI agents with web browsing capabilities, allowing them to navigate websites, extract information, and interact with web content in a controlled environment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreBrowser("example", {
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     name: "example-browser",
///     description: "Browser for web data extraction",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreBrowser("example",
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     name="example-browser",
///     description="Browser for web data extraction")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcoreBrowser("example", new()
///     {
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreBrowserNetworkConfigurationArgs
///         {
///             NetworkMode = "PUBLIC",
///         },
///         Name = "example-browser",
///         Description = "Browser for web data extraction",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreBrowser(ctx, "example", &bedrock.AgentcoreBrowserArgs{
/// 			NetworkConfiguration: &bedrock.AgentcoreBrowserNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			Name:        pulumi.String("example-browser"),
/// 			Description: pulumi.String("Browser for web data extraction"),
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
/// resource "aws_bedrock_agentcorebrowser" "example" {
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   name        = "example-browser"
///   description = "Browser for web data extraction"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreBrowser;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreBrowserNetworkConfigurationArgs;
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
///         var example = new AgentcoreBrowser("example", AgentcoreBrowserArgs.builder()
///             .networkConfiguration(AgentcoreBrowserNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .name("example-browser")
///             .description("Browser for web data extraction")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreBrowser
///     properties:
///       networkConfiguration:
///         networkMode: PUBLIC
///       name: example-browser
///       description: Browser for web data extraction
/// ```
///
///
/// ### Browser with VPC Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpcExample = new aws.bedrock.AgentcoreBrowser("vpc_example", {
///     networkConfiguration: {
///         vpcConfig: {
///             securityGroups: ["sg-12345678"],
///             subnets: [
///                 "subnet-12345678",
///                 "subnet-87654321",
///             ],
///         },
///         networkMode: "VPC",
///     },
///     name: "vpc-browser",
///     description: "Browser with VPC configuration",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpc_example = aws.bedrock.AgentcoreBrowser("vpc_example",
///     network_configuration={
///         "vpc_config": {
///             "security_groups": ["sg-12345678"],
///             "subnets": [
///                 "subnet-12345678",
///                 "subnet-87654321",
///             ],
///         },
///         "network_mode": "VPC",
///     },
///     name="vpc-browser",
///     description="Browser with VPC configuration")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcExample = new Aws.Bedrock.AgentcoreBrowser("vpc_example", new()
///     {
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreBrowserNetworkConfigurationArgs
///         {
///             VpcConfig = new Aws.Bedrock.Inputs.AgentcoreBrowserNetworkConfigurationVpcConfigArgs
///             {
///                 SecurityGroups = new[]
///                 {
///                     "sg-12345678",
///                 },
///                 Subnets = new[]
///                 {
///                     "subnet-12345678",
///                     "subnet-87654321",
///                 },
///             },
///             NetworkMode = "VPC",
///         },
///         Name = "vpc-browser",
///         Description = "Browser with VPC configuration",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreBrowser(ctx, "vpc_example", &bedrock.AgentcoreBrowserArgs{
/// 			NetworkConfiguration: &bedrock.AgentcoreBrowserNetworkConfigurationArgs{
/// 				VpcConfig: &bedrock.AgentcoreBrowserNetworkConfigurationVpcConfigArgs{
/// 					SecurityGroups: pulumi.StringArray{
/// 						pulumi.String("sg-12345678"),
/// 					},
/// 					Subnets: pulumi.StringArray{
/// 						pulumi.String("subnet-12345678"),
/// 						pulumi.String("subnet-87654321"),
/// 					},
/// 				},
/// 				NetworkMode: pulumi.String("VPC"),
/// 			},
/// 			Name:        pulumi.String("vpc-browser"),
/// 			Description: pulumi.String("Browser with VPC configuration"),
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
/// resource "aws_bedrock_agentcorebrowser" "vpc_example" {
///   network_configuration = {
///     vpc_config = {
///       security_groups = ["sg-12345678"]
///       subnets         = ["subnet-12345678", "subnet-87654321"]
///     }
///     network_mode = "VPC"
///   }
///   name        = "vpc-browser"
///   description = "Browser with VPC configuration"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreBrowser;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreBrowserNetworkConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreBrowserNetworkConfigurationVpcConfigArgs;
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
///         var vpcExample = new AgentcoreBrowser("vpcExample", AgentcoreBrowserArgs.builder()
///             .networkConfiguration(AgentcoreBrowserNetworkConfigurationArgs.builder()
///                 .vpcConfig(AgentcoreBrowserNetworkConfigurationVpcConfigArgs.builder()
///                     .securityGroups("sg-12345678")
///                     .subnets(
///                         "subnet-12345678",
///                         "subnet-87654321")
///                     .build())
///                 .networkMode("VPC")
///                 .build())
///             .name("vpc-browser")
///             .description("Browser with VPC configuration")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpcExample:
///     type: aws:bedrock:AgentcoreBrowser
///     name: vpc_example
///     properties:
///       networkConfiguration:
///         vpcConfig:
///           securityGroups:
///             - sg-12345678
///           subnets:
///             - subnet-12345678
///             - subnet-87654321
///         networkMode: VPC
///       name: vpc-browser
///       description: Browser with VPC configuration
/// ```
///
///
/// ### Browser with Execution Role and Recording
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["bedrock-agentcore.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "bedrock-agentcore-browser-role",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const recording = new aws.s3.Bucket("recording", {bucket: "browser-recording-bucket"});
/// const exampleAgentcoreBrowser = new aws.bedrock.AgentcoreBrowser("example", {
///     networkConfiguration: {
///         networkMode: "PUBLIC",
///     },
///     recording: {
///         s3Location: {
///             bucket: recording.bucket,
///             prefix: "browser-sessions/",
///         },
///         enabled: true,
///     },
///     name: "example-browser",
///     description: "Browser with recording enabled",
///     executionRoleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["bedrock-agentcore.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// example = aws.iam.Role("example",
///     name="bedrock-agentcore-browser-role",
///     assume_role_policy=assume_role.json)
/// recording = aws.s3.Bucket("recording", bucket="browser-recording-bucket")
/// example_agentcore_browser = aws.bedrock.AgentcoreBrowser("example",
///     network_configuration={
///         "network_mode": "PUBLIC",
///     },
///     recording={
///         "s3_location": {
///             "bucket": recording.bucket,
///             "prefix": "browser-sessions/",
///         },
///         "enabled": True,
///     },
///     name="example-browser",
///     description="Browser with recording enabled",
///     execution_role_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "bedrock-agentcore.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "bedrock-agentcore-browser-role",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var recording = new Aws.S3.Bucket("recording", new()
///     {
///         BucketName = "browser-recording-bucket",
///     });
///
///     var exampleAgentcoreBrowser = new Aws.Bedrock.AgentcoreBrowser("example", new()
///     {
///         NetworkConfiguration = new Aws.Bedrock.Inputs.AgentcoreBrowserNetworkConfigurationArgs
///         {
///             NetworkMode = "PUBLIC",
///         },
///         Recording = new Aws.Bedrock.Inputs.AgentcoreBrowserRecordingArgs
///         {
///             S3Location = new Aws.Bedrock.Inputs.AgentcoreBrowserRecordingS3LocationArgs
///             {
///                 Bucket = recording.BucketName,
///                 Prefix = "browser-sessions/",
///             },
///             Enabled = true,
///         },
///         Name = "example-browser",
///         Description = "Browser with recording enabled",
///         ExecutionRoleArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"bedrock-agentcore.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("bedrock-agentcore-browser-role"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		recording, err := s3.NewBucket(ctx, "recording", &s3.BucketArgs{
/// 			Bucket: pulumi.String("browser-recording-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcoreBrowser(ctx, "example", &bedrock.AgentcoreBrowserArgs{
/// 			NetworkConfiguration: &bedrock.AgentcoreBrowserNetworkConfigurationArgs{
/// 				NetworkMode: pulumi.String("PUBLIC"),
/// 			},
/// 			Recording: &bedrock.AgentcoreBrowserRecordingArgs{
/// 				S3Location: &bedrock.AgentcoreBrowserRecordingS3LocationArgs{
/// 					Bucket: recording.Bucket,
/// 					Prefix: pulumi.String("browser-sessions/"),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			Name:             pulumi.String("example-browser"),
/// 			Description:      pulumi.String("Browser with recording enabled"),
/// 			ExecutionRoleArn: example.Arn,
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["bedrock-agentcore.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "bedrock-agentcore-browser-role"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_s3_bucket" "recording" {
///   bucket = "browser-recording-bucket"
/// }
/// resource "aws_bedrock_agentcorebrowser" "example" {
///   network_configuration = {
///     network_mode = "PUBLIC"
///   }
///   recording = {
///     s3_location = {
///       bucket = aws_s3_bucket.recording.bucket
///       prefix = "browser-sessions/"
///     }
///     enabled = true
///   }
///   name               = "example-browser"
///   description        = "Browser with recording enabled"
///   execution_role_arn = aws_iam_role.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.bedrock.AgentcoreBrowser;
/// import com.pulumi.aws.bedrock.AgentcoreBrowserArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreBrowserNetworkConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreBrowserRecordingArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreBrowserRecordingS3LocationArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("bedrock-agentcore.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("bedrock-agentcore-browser-role")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var recording = new Bucket("recording", BucketArgs.builder()
///             .bucket("browser-recording-bucket")
///             .build());
///
///         var exampleAgentcoreBrowser = new AgentcoreBrowser("exampleAgentcoreBrowser", AgentcoreBrowserArgs.builder()
///             .networkConfiguration(AgentcoreBrowserNetworkConfigurationArgs.builder()
///                 .networkMode("PUBLIC")
///                 .build())
///             .recording(AgentcoreBrowserRecordingArgs.builder()
///                 .s3Location(AgentcoreBrowserRecordingS3LocationArgs.builder()
///                     .bucket(recording.bucket())
///                     .prefix("browser-sessions/")
///                     .build())
///                 .enabled(true)
///                 .build())
///             .name("example-browser")
///             .description("Browser with recording enabled")
///             .executionRoleArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: bedrock-agentcore-browser-role
///       assumeRolePolicy: ${assumeRole.json}
///   recording:
///     type: aws:s3:Bucket
///     properties:
///       bucket: browser-recording-bucket
///   exampleAgentcoreBrowser:
///     type: aws:bedrock:AgentcoreBrowser
///     name: example
///     properties:
///       networkConfiguration:
///         networkMode: PUBLIC
///       recording:
///         s3Location:
///           bucket: ${recording.bucket}
///           prefix: browser-sessions/
///         enabled: true
///       name: example-browser
///       description: Browser with recording enabled
///       executionRoleArn: ${example.arn}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - bedrock-agentcore.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Browser using the browser ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreBrowser:AgentcoreBrowser example BROWSER1234567890
/// ```
class AgentcoreBrowser extends pulumi.CustomResource {
  /// ARN of the Browser.
  late final pulumi.Output<String> browserArn;
  /// Unique identifier of the Browser.
  late final pulumi.Output<String> browserId;
  /// Browser signing configuration that enables cryptographic agent identification using HTTP message signatures. See `browserSigning` below.
  late final pulumi.Output<AgentcoreBrowserBrowserSigning?> browserSigning;
  /// Certificates to install in the browser. See `certificate` below.
  late final pulumi.Output<List<AgentcoreBrowserCertificate>?> certificates;
  /// Description of the browser.
  late final pulumi.Output<String?> description;
  /// Enterprise policy files to apply to the browser. See `enterprisePolicy` below.
  late final pulumi.Output<List<AgentcoreBrowserEnterprisePolicy>?> enterprisePolicies;
  /// ARN of the IAM role that the browser assumes for execution.
  late final pulumi.Output<String?> executionRoleArn;
  /// Name of the browser.
  late final pulumi.Output<String> name;
  /// Network configuration for the browser. See `networkConfiguration` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreBrowserNetworkConfiguration> networkConfiguration;
  /// Recording configuration for browser sessions. See `recording` below.
  late final pulumi.Output<AgentcoreBrowserRecording?> recording;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcoreBrowserTimeouts?> timeouts;

  /// Creates a new [AgentcoreBrowser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreBrowser]. {@macro pulumi_bedrock_agentcore_browser_agentcore_browser_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreBrowser(
    String name, {
    AgentcoreBrowserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreBrowser:AgentcoreBrowser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    browserArn = registerOutput<String>('browserArn');
    browserId = registerOutput<String>('browserId');
    browserSigning = registerOutput<AgentcoreBrowserBrowserSigning?>('browserSigning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserBrowserSigning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificates = registerOutput<List<AgentcoreBrowserCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreBrowserCertificate>(guardedValue, (value) => AgentcoreBrowserCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    enterprisePolicies = registerOutput<List<AgentcoreBrowserEnterprisePolicy>?>('enterprisePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreBrowserEnterprisePolicy>(guardedValue, (value) => AgentcoreBrowserEnterprisePolicy.fromMap((value as Map).cast<String, dynamic>())); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<AgentcoreBrowserNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    recording = registerOutput<AgentcoreBrowserRecording?>('recording', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserRecording.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreBrowserTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcoreBrowser] resource's state with the given [name] and [id].
  static AgentcoreBrowser get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreBrowserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreBrowser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreBrowser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreBrowser:AgentcoreBrowser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    browserArn = registerOutput<String>('browserArn');
    browserId = registerOutput<String>('browserId');
    browserSigning = registerOutput<AgentcoreBrowserBrowserSigning?>('browserSigning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserBrowserSigning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificates = registerOutput<List<AgentcoreBrowserCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreBrowserCertificate>(guardedValue, (value) => AgentcoreBrowserCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    enterprisePolicies = registerOutput<List<AgentcoreBrowserEnterprisePolicy>?>('enterprisePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreBrowserEnterprisePolicy>(guardedValue, (value) => AgentcoreBrowserEnterprisePolicy.fromMap((value as Map).cast<String, dynamic>())); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<AgentcoreBrowserNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    recording = registerOutput<AgentcoreBrowserRecording?>('recording', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserRecording.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreBrowserTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcoreBrowser] resource.
  AgentcoreBrowser.reference(String urn)
    : super(
        'aws:bedrock/agentcoreBrowser:AgentcoreBrowser',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    browserArn = registerOutput<String>('browserArn');
    browserId = registerOutput<String>('browserId');
    browserSigning = registerOutput<AgentcoreBrowserBrowserSigning?>('browserSigning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserBrowserSigning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificates = registerOutput<List<AgentcoreBrowserCertificate>?>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreBrowserCertificate>(guardedValue, (value) => AgentcoreBrowserCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    enterprisePolicies = registerOutput<List<AgentcoreBrowserEnterprisePolicy>?>('enterprisePolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreBrowserEnterprisePolicy>(guardedValue, (value) => AgentcoreBrowserEnterprisePolicy.fromMap((value as Map).cast<String, dynamic>())); });
    executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<AgentcoreBrowserNetworkConfiguration>('networkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    recording = registerOutput<AgentcoreBrowserRecording?>('recording', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserRecording.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcoreBrowserTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreBrowserTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
