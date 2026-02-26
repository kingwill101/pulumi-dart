import 'package:pulumi/pulumi.dart';
import 'dev_endpoint_args.dart';

/// Provides a Glue Development Endpoint resource.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["sts:AssumeRole"],
/// principals: [{
/// type: "Service",
/// identifiers: ["glue.amazonaws.com"],
/// }],
/// }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "AWSGlueServiceRole-foo",
/// assumeRolePolicy: example.then(example => example.json),
/// });
/// const exampleDevEndpoint = new aws.glue.DevEndpoint("example", {
/// name: "foo",
/// roleArn: exampleRole.arn,
/// });
/// const example_AWSGlueServiceRole = new aws.iam.RolePolicyAttachment("example-AWSGlueServiceRole", {
/// policyArn: "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
/// role: exampleRole.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
/// "actions": ["sts:AssumeRole"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["glue.amazonaws.com"],
/// }],
/// }])
/// example_role = aws.iam.Role("example",
/// name="AWSGlueServiceRole-foo",
/// assume_role_policy=example.json)
/// example_dev_endpoint = aws.glue.DevEndpoint("example",
/// name="foo",
/// role_arn=example_role.arn)
/// example__aws_glue_service_role = aws.iam.RolePolicyAttachment("example-AWSGlueServiceRole",
/// policy_arn="arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
/// role=example_role.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "glue.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "AWSGlueServiceRole-foo",
/// AssumeRolePolicy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var exampleDevEndpoint = new Aws.Glue.DevEndpoint("example", new()
/// {
/// Name = "foo",
/// RoleArn = exampleRole.Arn,
/// });
///
/// var example_AWSGlueServiceRole = new Aws.Iam.RolePolicyAttachment("example-AWSGlueServiceRole", new()
/// {
/// PolicyArn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole",
/// Role = exampleRole.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "glue.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("AWSGlueServiceRole-foo"),
/// AssumeRolePolicy: pulumi.String(example.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = glue.NewDevEndpoint(ctx, "example", &glue.DevEndpointArgs{
/// Name:    pulumi.String("foo"),
/// RoleArn: exampleRole.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "example-AWSGlueServiceRole", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: pulumi.String("arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"),
/// Role:      exampleRole.Name,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.glue.DevEndpoint;
/// import com.pulumi.aws.glue.DevEndpointArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
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
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("sts:AssumeRole")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("glue.amazonaws.com")
/// .build())
/// .build())
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("AWSGlueServiceRole-foo")
/// .assumeRolePolicy(example.json())
/// .build());
///
/// var exampleDevEndpoint = new DevEndpoint("exampleDevEndpoint", DevEndpointArgs.builder()
/// .name("foo")
/// .roleArn(exampleRole.arn())
/// .build());
///
/// var example_AWSGlueServiceRole = new RolePolicyAttachment("example-AWSGlueServiceRole", RolePolicyAttachmentArgs.builder()
/// .policyArn("arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole")
/// .role(exampleRole.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleDevEndpoint:
/// type: aws:glue:DevEndpoint
/// name: example
/// properties:
/// name: foo
/// roleArn: ${exampleRole.arn}
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: AWSGlueServiceRole-foo
/// assumeRolePolicy: ${example.json}
/// example-AWSGlueServiceRole:
/// type: aws:iam:RolePolicyAttachment
/// properties:
/// policyArn: arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole
/// role: ${exampleRole.name}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - sts:AssumeRole
/// principals:
/// - type: Service
/// identifiers:
/// - glue.amazonaws.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a Glue Development Endpoint using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:glue/devEndpoint:DevEndpoint example foo
/// ```
class DevEndpoint extends CustomResource {
  /// A map of arguments used to configure the endpoint.
  late final Output<Map<String, String>?> arguments;

  /// The ARN of the endpoint.
  late final Output<String> arn;

  /// The AWS availability zone where this endpoint is located.
  late final Output<String> availabilityZone;

  /// Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint.
  late final Output<String?> extraJarsS3Path;

  /// Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma.
  late final Output<String?> extraPythonLibsS3Path;

  /// The reason for a current failure in this endpoint.
  late final Output<String> failureReason;

  /// Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9.
  late final Output<String?> glueVersion;

  /// The name of this endpoint. It must be unique in your account.
  late final Output<String> name;

  /// The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with <span pulumi-lang-nodejs="`workerType`" pulumi-lang-dotnet="`WorkerType`" pulumi-lang-go="`workerType`" pulumi-lang-python="`worker_type`" pulumi-lang-yaml="`workerType`" pulumi-lang-java="`workerType`">`worker_type`</span>.
  late final Output<int?> numberOfNodes;

  /// The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X.
  late final Output<int?> numberOfWorkers;

  /// A private IP address to access the endpoint within a VPC, if this endpoint is created within one.
  late final Output<String> privateAddress;

  /// The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint.
  late final Output<String> publicAddress;

  /// The public key to be used by this endpoint for authentication.
  late final Output<String?> publicKey;

  /// A list of public keys to be used by this endpoint for authentication.
  late final Output<List<String>?> publicKeys;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role for this endpoint.
  late final Output<String> roleArn;

  /// The name of the Security Configuration structure to be used with this endpoint.
  late final Output<String?> securityConfiguration;

  /// Security group IDs for the security groups to be used by this endpoint.
  late final Output<List<String>?> securityGroupIds;

  /// The current status of this endpoint.
  late final Output<String> status;

  /// The subnet ID for the new endpoint to use.
  late final Output<String?> subnetId;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// he ID of the VPC used by this endpoint.
  late final Output<String> vpcId;

  /// The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  late final Output<String?> workerType;

  /// The YARN endpoint address used by this endpoint.
  late final Output<String> yarnEndpointAddress;

  /// The Apache Zeppelin port for the remote Apache Spark interpreter.
  late final Output<int> zeppelinRemoteSparkInterpreterPort;

  DevEndpoint(
    String name, {
    DevEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/devEndpoint:DevEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arguments = registerOutput<Map<String, String>?>('arguments');
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.extraJarsS3Path = registerOutput<String?>('extraJarsS3Path');
    this.extraPythonLibsS3Path =
        registerOutput<String?>('extraPythonLibsS3Path');
    this.failureReason = registerOutput<String>('failureReason');
    this.glueVersion = registerOutput<String?>('glueVersion');
    this.name = registerOutput<String>('name');
    this.numberOfNodes = registerOutput<int?>('numberOfNodes');
    this.numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    this.privateAddress = registerOutput<String>('privateAddress');
    this.publicAddress = registerOutput<String>('publicAddress');
    this.publicKey = registerOutput<String?>('publicKey');
    this.publicKeys = registerOutput<List<String>?>('publicKeys');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.securityConfiguration =
        registerOutput<String?>('securityConfiguration');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.status = registerOutput<String>('status');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
    this.workerType = registerOutput<String?>('workerType');
    this.yarnEndpointAddress = registerOutput<String>('yarnEndpointAddress');
    this.zeppelinRemoteSparkInterpreterPort =
        registerOutput<int>('zeppelinRemoteSparkInterpreterPort');
  }
}
