import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_endpoint_args.dart';
import 'dev_endpoint_state.dart';

/// Provides a Glue Development Endpoint resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["glue.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "AWSGlueServiceRole-foo",
///     assumeRolePolicy: example.then(example => example.json),
/// });
/// const exampleDevEndpoint = new aws.glue.DevEndpoint("example", {
///     name: "foo",
///     roleArn: exampleRole.arn,
/// });
/// const example_AWSGlueServiceRole = new aws.iam.RolePolicyAttachment("example-AWSGlueServiceRole", {
///     policyArn: "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
///     role: exampleRole.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["glue.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="AWSGlueServiceRole-foo",
///     assume_role_policy=example.json)
/// example_dev_endpoint = aws.glue.DevEndpoint("example",
///     name="foo",
///     role_arn=example_role.arn)
/// example__aws_glue_service_role = aws.iam.RolePolicyAttachment("example-AWSGlueServiceRole",
///     policy_arn="arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
///     role=example_role.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "glue.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "AWSGlueServiceRole-foo",
///         AssumeRolePolicy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleDevEndpoint = new Aws.Glue.DevEndpoint("example", new()
///     {
///         Name = "foo",
///         RoleArn = exampleRole.Arn,
///     });
///
///     var example_AWSGlueServiceRole = new Aws.Iam.RolePolicyAttachment("example-AWSGlueServiceRole", new()
///     {
///         PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
///         Role = exampleRole.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"glue.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("AWSGlueServiceRole-foo"),
/// 			AssumeRolePolicy: pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = glue.NewDevEndpoint(ctx, "example", &glue.DevEndpointArgs{
/// 			Name:    pulumi.String("foo"),
/// 			RoleArn: exampleRole.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicyAttachment(ctx, "example-AWSGlueServiceRole", &iam.RolePolicyAttachmentArgs{
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"),
/// 			Role:      exampleRole.Name,
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
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["glue.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_glue_devendpoint" "example" {
///   name     = "foo"
///   role_arn = aws_iam_role.example.arn
/// }
/// resource "aws_iam_role" "example" {
///   name               = "AWSGlueServiceRole-foo"
///   assume_role_policy = data.aws_iam_getpolicydocument.example.json
/// }
/// resource "aws_iam_rolepolicyattachment" "example-AWSGlueServiceRole" {
///   policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
///   role       = aws_iam_role.example.name
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
/// import com.pulumi.aws.glue.DevEndpoint;
/// import com.pulumi.aws.glue.DevEndpointArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("glue.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("AWSGlueServiceRole-foo")
///             .assumeRolePolicy(example.json())
///             .build());
///
///         var exampleDevEndpoint = new DevEndpoint("exampleDevEndpoint", DevEndpointArgs.builder()
///             .name("foo")
///             .roleArn(exampleRole.arn())
///             .build());
///
///         var example_AWSGlueServiceRole = new RolePolicyAttachment("example-AWSGlueServiceRole", RolePolicyAttachmentArgs.builder()
///             .policyArn("arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole")
///             .role(exampleRole.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDevEndpoint:
///     type: aws:glue:DevEndpoint
///     name: example
///     properties:
///       name: foo
///       roleArn: ${exampleRole.arn}
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: AWSGlueServiceRole-foo
///       assumeRolePolicy: ${example.json}
///   example-AWSGlueServiceRole:
///     type: aws:iam:RolePolicyAttachment
///     properties:
///       policyArn: arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole
///       role: ${exampleRole.name}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - glue.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a Glue Development Endpoint using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/devEndpoint:DevEndpoint example foo
/// ```
class DevEndpoint extends pulumi.CustomResource {
  /// A map of arguments used to configure the endpoint.
  late final pulumi.Output<Map<String, String>?> arguments;
  /// The ARN of the endpoint.
  late final pulumi.Output<String> arn;
  /// The AWS availability zone where this endpoint is located.
  late final pulumi.Output<String> availabilityZone;
  /// Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint.
  late final pulumi.Output<String?> extraJarsS3Path;
  /// Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma.
  late final pulumi.Output<String?> extraPythonLibsS3Path;
  /// The reason for a current failure in this endpoint.
  late final pulumi.Output<String> failureReason;
  /// Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9.
  late final pulumi.Output<String?> glueVersion;
  /// The name of this endpoint. It must be unique in your account.
  late final pulumi.Output<String> name;
  /// The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `workerType`.
  late final pulumi.Output<int?> numberOfNodes;
  /// The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X.
  late final pulumi.Output<int?> numberOfWorkers;
  /// A private IP address to access the endpoint within a VPC, if this endpoint is created within one.
  late final pulumi.Output<String> privateAddress;
  /// The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint.
  late final pulumi.Output<String> publicAddress;
  /// The public key to be used by this endpoint for authentication.
  late final pulumi.Output<String?> publicKey;
  /// A list of public keys to be used by this endpoint for authentication.
  late final pulumi.Output<List<String>?> publicKeys;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IAM role for this endpoint.
  late final pulumi.Output<String> roleArn;
  /// The name of the Security Configuration structure to be used with this endpoint.
  late final pulumi.Output<String?> securityConfiguration;
  /// Security group IDs for the security groups to be used by this endpoint.
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// The current status of this endpoint.
  late final pulumi.Output<String> status;
  /// The subnet ID for the new endpoint to use.
  late final pulumi.Output<String?> subnetId;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// he ID of the VPC used by this endpoint.
  late final pulumi.Output<String> vpcId;
  /// The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  late final pulumi.Output<String?> workerType;
  /// The YARN endpoint address used by this endpoint.
  late final pulumi.Output<String> yarnEndpointAddress;
  /// The Apache Zeppelin port for the remote Apache Spark interpreter.
  late final pulumi.Output<int> zeppelinRemoteSparkInterpreterPort;

  /// Creates a new [DevEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DevEndpoint]. {@macro pulumi_glue_dev_endpoint_dev_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DevEndpoint(
    String name, {
    DevEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/devEndpoint:DevEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arguments = registerOutput<Map<String, String>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    extraJarsS3Path = registerOutput<String?>('extraJarsS3Path');
    extraPythonLibsS3Path = registerOutput<String?>('extraPythonLibsS3Path');
    failureReason = registerOutput<String>('failureReason');
    glueVersion = registerOutput<String?>('glueVersion');
    this.name = registerOutput<String>('name');
    numberOfNodes = registerOutput<int?>('numberOfNodes');
    numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    privateAddress = registerOutput<String>('privateAddress');
    publicAddress = registerOutput<String>('publicAddress');
    publicKey = registerOutput<String?>('publicKey');
    publicKeys = registerOutput<List<String>?>('publicKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityConfiguration = registerOutput<String?>('securityConfiguration');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
    workerType = registerOutput<String?>('workerType');
    yarnEndpointAddress = registerOutput<String>('yarnEndpointAddress');
    zeppelinRemoteSparkInterpreterPort = registerOutput<int>('zeppelinRemoteSparkInterpreterPort');
  }

  /// Gets an existing [DevEndpoint] resource's state with the given [name] and [id].
  static DevEndpoint get(
    String name,
    pulumi.Input<String> id, {
    DevEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DevEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DevEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/devEndpoint:DevEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arguments = registerOutput<Map<String, String>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    extraJarsS3Path = registerOutput<String?>('extraJarsS3Path');
    extraPythonLibsS3Path = registerOutput<String?>('extraPythonLibsS3Path');
    failureReason = registerOutput<String>('failureReason');
    glueVersion = registerOutput<String?>('glueVersion');
    this.name = registerOutput<String>('name');
    numberOfNodes = registerOutput<int?>('numberOfNodes');
    numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    privateAddress = registerOutput<String>('privateAddress');
    publicAddress = registerOutput<String>('publicAddress');
    publicKey = registerOutput<String?>('publicKey');
    publicKeys = registerOutput<List<String>?>('publicKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityConfiguration = registerOutput<String?>('securityConfiguration');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
    workerType = registerOutput<String?>('workerType');
    yarnEndpointAddress = registerOutput<String>('yarnEndpointAddress');
    zeppelinRemoteSparkInterpreterPort = registerOutput<int>('zeppelinRemoteSparkInterpreterPort');
  }

  /// Creates a typed reference to an existing [DevEndpoint] resource.
  DevEndpoint.reference(String urn)
    : super(
        'aws:glue/devEndpoint:DevEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arguments = registerOutput<Map<String, String>?>('arguments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    extraJarsS3Path = registerOutput<String?>('extraJarsS3Path');
    extraPythonLibsS3Path = registerOutput<String?>('extraPythonLibsS3Path');
    failureReason = registerOutput<String>('failureReason');
    glueVersion = registerOutput<String?>('glueVersion');
    this.name = registerOutput<String>('name');
    numberOfNodes = registerOutput<int?>('numberOfNodes');
    numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    privateAddress = registerOutput<String>('privateAddress');
    publicAddress = registerOutput<String>('publicAddress');
    publicKey = registerOutput<String?>('publicKey');
    publicKeys = registerOutput<List<String>?>('publicKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    securityConfiguration = registerOutput<String?>('securityConfiguration');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
    workerType = registerOutput<String?>('workerType');
    yarnEndpointAddress = registerOutput<String>('yarnEndpointAddress');
    zeppelinRemoteSparkInterpreterPort = registerOutput<int>('zeppelinRemoteSparkInterpreterPort');
  }
}
