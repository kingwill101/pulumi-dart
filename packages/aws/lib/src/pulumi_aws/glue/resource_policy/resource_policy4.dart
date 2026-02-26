import 'package:pulumi/pulumi.dart';
import 'resource_policy_args4.dart';

/// Provides a Glue resource policy. Only one can exist per region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const glue_example_policy = Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => aws.iam.getPolicyDocument({
/// statements: [{
/// actions: ["glue:CreateTable"],
/// resources: [`arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:*`],
/// principals: [{
/// identifiers: ["*"],
/// type: "AWS",
/// }],
/// }],
/// }));
/// const example = new aws.glue.ResourcePolicy("example", {policy: glue_example_policy.then(glue_example_policy => glue_example_policy.json)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// glue_example_policy = aws.iam.get_policy_document(statements=[{
/// "actions": ["glue:CreateTable"],
/// "resources": [f"arn:{current_get_partition.partition}:glue:{current_get_region.region}:{current.account_id}:*"],
/// "principals": [{
/// "identifiers": ["*"],
/// "type": "AWS",
/// }],
/// }])
/// example = aws.glue.ResourcePolicy("example", policy=glue_example_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var currentGetPartition = Aws.GetPartition.Invoke();
///
/// var currentGetRegion = Aws.GetRegion.Invoke();
///
/// var glue_example_policy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Actions = new[]
/// {
/// "glue:CreateTable",
/// },
/// Resources = new[]
/// {
/// $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:glue:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Identifiers = new[]
/// {
/// "*",
/// },
/// Type = "AWS",
/// },
/// },
/// },
/// },
/// });
///
/// var example = new Aws.Glue.ResourcePolicy("example", new()
/// {
/// Policy = glue_example_policy.Apply(glue_example_policy => glue_example_policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json)),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// glue_example_policy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Actions: []string{
/// "glue:CreateTable",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:%v:glue:%v:%v:*", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Identifiers: []string{
/// "*",
/// },
/// Type: "AWS",
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = glue.NewResourcePolicy(ctx, "example", &glue.ResourcePolicyArgs{
/// Policy: pulumi.String(glue_example_policy.Json),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.glue.ResourcePolicy;
/// import com.pulumi.aws.glue.ResourcePolicyArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
/// .build());
///
/// final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// final var glue-example-policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .actions("glue:CreateTable")
/// .resources(String.format("arn:%s:glue:%s:%s:*", currentGetPartition.partition(),currentGetRegion.region(),current.accountId()))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .identifiers("*")
/// .type("AWS")
/// .build())
/// .build())
/// .build());
///
/// var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
/// .policy(glue_example_policy.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:ResourcePolicy
/// properties:
/// policy: ${["glue-example-policy"].json}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// currentGetPartition:
/// fn::invoke:
/// function: aws:getPartition
/// arguments: {}
/// currentGetRegion:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// glue-example-policy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - actions:
/// - glue:CreateTable
/// resources:
/// - arn:${currentGetPartition.partition}:glue:${currentGetRegion.region}:${current.accountId}:*
/// principals:
/// - identifiers:
/// - '*'
/// type: AWS
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue Resource Policy using the region where the resource resides. For example:
///
/// ```sh
/// $ pulumi import aws:glue/resourcePolicy:ResourcePolicy Test us-east-1
/// ```
class ResourcePolicy4 extends CustomResource {
  /// Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  late final Output<String?> enableHybrid;

  /// The policy to be applied to the aws glue data catalog.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ResourcePolicy4(
    String name, {
    ResourcePolicyArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enableHybrid = Output.createUnknown<String?>();
    this.policy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
