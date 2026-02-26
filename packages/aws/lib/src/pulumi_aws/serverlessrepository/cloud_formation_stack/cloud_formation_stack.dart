import 'package:pulumi/pulumi.dart';
import 'cloud_formation_stack_args.dart';

/// Deploys an Application CloudFormation Stack from the Serverless Application Repository.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const postgres_rotator = new aws.serverlessrepository.CloudFormationStack("postgres-rotator", {
/// name: "postgres-rotator",
/// applicationId: "arn:aws:serverlessrepo:us-east-1:297356227824:applications/SecretsManagerRDSPostgreSQLRotationSingleUser",
/// capabilities: [
/// "CAPABILITY_IAM",
/// "CAPABILITY_RESOURCE_POLICY",
/// ],
/// parameters: {
/// functionName: "func-postgres-rotator",
/// endpoint: Promise.all([currentGetRegion, current]).then(([currentGetRegion, current]) => `secretsmanager.${currentGetRegion.region}.${current.dnsSuffix}`),
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// current_get_region = aws.get_region()
/// postgres_rotator = aws.serverlessrepository.CloudFormationStack("postgres-rotator",
/// name="postgres-rotator",
/// application_id="arn:aws:serverlessrepo:us-east-1:297356227824:applications/SecretsManagerRDSPostgreSQLRotationSingleUser",
/// capabilities=[
/// "CAPABILITY_IAM",
/// "CAPABILITY_RESOURCE_POLICY",
/// ],
/// parameters={
/// "functionName": "func-postgres-rotator",
/// "endpoint": f"secretsmanager.{current_get_region.region}.{current.dns_suffix}",
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
/// var current = Aws.GetPartition.Invoke();
///
/// var currentGetRegion = Aws.GetRegion.Invoke();
///
/// var postgres_rotator = new Aws.ServerlessRepository.CloudFormationStack("postgres-rotator", new()
/// {
/// Name = "postgres-rotator",
/// ApplicationId = "arn:aws:serverlessrepo:us-east-1:297356227824:applications/SecretsManagerRDSPostgreSQLRotationSingleUser",
/// Capabilities = new[]
/// {
/// "CAPABILITY_IAM",
/// "CAPABILITY_RESOURCE_POLICY",
/// },
/// Parameters =
/// {
/// { "functionName", "func-postgres-rotator" },
/// { "endpoint", Output.Tuple(currentGetRegion, current).Apply(values =>
/// {
/// var currentGetRegion = values.Item1;
/// var current = values.Item2;
/// return $"secretsmanager.{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}.{current.Apply(getPartitionResult => getPartitionResult.DnsSuffix)}";
/// }) },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/serverlessrepository"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = serverlessrepository.NewCloudFormationStack(ctx, "postgres-rotator", &serverlessrepository.CloudFormationStackArgs{
/// Name:          pulumi.String("postgres-rotator"),
/// ApplicationId: pulumi.String("arn:aws:serverlessrepo:us-east-1:297356227824:applications/SecretsManagerRDSPostgreSQLRotationSingleUser"),
/// Capabilities: pulumi.StringArray{
/// pulumi.String("CAPABILITY_IAM"),
/// pulumi.String("CAPABILITY_RESOURCE_POLICY"),
/// },
/// Parameters: pulumi.StringMap{
/// "functionName": pulumi.String("func-postgres-rotator"),
/// "endpoint":     pulumi.Sprintf("secretsmanager.%v.%v", currentGetRegion.Region, current.DnsSuffix),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.serverlessrepository.CloudFormationStack;
/// import com.pulumi.aws.serverlessrepository.CloudFormationStackArgs;
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
/// final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
/// .build());
///
/// final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var postgres_rotator = new CloudFormationStack("postgres-rotator", CloudFormationStackArgs.builder()
/// .name("postgres-rotator")
/// .applicationId("arn:aws:serverlessrepo:us-east-1:297356227824:applications/SecretsManagerRDSPostgreSQLRotationSingleUser")
/// .capabilities(
/// "CAPABILITY_IAM",
/// "CAPABILITY_RESOURCE_POLICY")
/// .parameters(Map.ofEntries(
/// Map.entry("functionName", "func-postgres-rotator"),
/// Map.entry("endpoint", String.format("secretsmanager.%s.%s", currentGetRegion.region(),current.dnsSuffix()))
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// postgres-rotator:
/// type: aws:serverlessrepository:CloudFormationStack
/// properties:
/// name: postgres-rotator
/// applicationId: arn:aws:serverlessrepo:us-east-1:297356227824:applications/SecretsManagerRDSPostgreSQLRotationSingleUser
/// capabilities:
/// - CAPABILITY_IAM
/// - CAPABILITY_RESOURCE_POLICY
/// parameters:
/// functionName: func-postgres-rotator
/// endpoint: secretsmanager.${currentGetRegion.region}.${current.dnsSuffix}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getPartition
/// arguments: {}
/// currentGetRegion:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Serverless Application Repository Stack using the CloudFormation Stack name (with or without the `serverlessrepo-` prefix) or the CloudFormation Stack ID. For example:
///
/// ```sh
/// $ pulumi import aws:serverlessrepository/cloudFormationStack:CloudFormationStack example serverlessrepo-postgres-rotator
/// ```
class CloudFormationStack extends CustomResource {
  /// The ARN of the application from the Serverless Application Repository.
  late final Output<String> applicationId;

  /// A list of capabilities. Valid values are `CAPABILITY_IAM`, `CAPABILITY_NAMED_IAM`, `CAPABILITY_RESOURCE_POLICY`, or `CAPABILITY_AUTO_EXPAND`
  late final Output<List<String>> capabilities;

  /// The name of the stack to create. The resource deployed in AWS will be prefixed with `serverlessrepo-`
  late final Output<String> name;

  /// A map of outputs from the stack.
  late final Output<Map<String, String>> outputs;

  /// A map of Parameter structures that specify input parameters for the stack.
  late final Output<Map<String, String>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The version of the application to deploy. If not supplied, deploys the latest version.
  late final Output<String> semanticVersion;

  /// A list of tags to associate with this stack. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  CloudFormationStack(
    String name, {
    CloudFormationStackArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:serverlessrepository/cloudFormationStack:CloudFormationStack',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = Output.createUnknown<String>();
    this.capabilities = Output.createUnknown<List<String>>();
    this.name = Output.createUnknown<String>();
    this.outputs = Output.createUnknown<Map<String, String>>();
    this.parameters = Output.createUnknown<Map<String, String>>();
    this.region = Output.createUnknown<String>();
    this.semanticVersion = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
