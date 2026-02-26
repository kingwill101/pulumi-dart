import 'package:pulumi/pulumi.dart';
import 'registry_policy_args.dart';

/// Provides an Elastic Container Registry Policy.
///
/// > **NOTE on ECR Registry Policies:** While the AWS Management Console interface may suggest the ability to define multiple policies by creating multiple statements, ECR registry policies are effectively managed as singular entities at the regional level by the AWS APIs. Therefore, the <span pulumi-lang-nodejs="`aws.ecr.RegistryPolicy`" pulumi-lang-dotnet="`aws.ecr.RegistryPolicy`" pulumi-lang-go="`ecr.RegistryPolicy`" pulumi-lang-python="`ecr.RegistryPolicy`" pulumi-lang-yaml="`aws.ecr.RegistryPolicy`" pulumi-lang-java="`aws.ecr.RegistryPolicy`">`aws.ecr.RegistryPolicy`</span> resource should be configured only once per region with all necessary statements defined in the same policy. Attempting to define multiple <span pulumi-lang-nodejs="`aws.ecr.RegistryPolicy`" pulumi-lang-dotnet="`aws.ecr.RegistryPolicy`" pulumi-lang-go="`ecr.RegistryPolicy`" pulumi-lang-python="`ecr.RegistryPolicy`" pulumi-lang-yaml="`aws.ecr.RegistryPolicy`" pulumi-lang-java="`aws.ecr.RegistryPolicy`">`aws.ecr.RegistryPolicy`</span> resources may result in perpetual differences, with one policy overriding another.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetRegion = aws.getRegion({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.ecr.RegistryPolicy("example", {policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Sid: "testpolicy",
/// Effect: "Allow",
/// Principal: {
/// AWS: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:root`),
/// },
/// Action: ["ecr:ReplicateImage"],
/// Resource: [Promise.all([currentGetPartition, currentGetRegion, current]).then(([currentGetPartition, currentGetRegion, current]) => `arn:${currentGetPartition.partition}:ecr:${currentGetRegion.region}:${current.accountId}:repository/*`)],
/// }],
/// })});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// current_get_partition = aws.get_partition()
/// example = aws.ecr.RegistryPolicy("example", policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Sid": "testpolicy",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:{current_get_partition.partition}:iam::{current.account_id}:root",
/// },
/// "Action": ["ecr:ReplicateImage"],
/// "Resource": [f"arn:{current_get_partition.partition}:ecr:{current_get_region.region}:{current.account_id}:repository/*"],
/// }],
/// }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetCallerIdentity.Invoke();
///
/// var currentGetRegion = Aws.GetRegion.Invoke();
///
/// var currentGetPartition = Aws.GetPartition.Invoke();
///
/// var example = new Aws.Ecr.RegistryPolicy("example", new()
/// {
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "testpolicy",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = Output.Tuple(currentGetPartition, current).Apply(values =>
/// {
/// var currentGetPartition = values.Item1;
/// var current = values.Item2;
/// return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root";
/// }),
/// },
/// ["Action"] = new[]
/// {
/// "ecr:ReplicateImage",
/// },
/// ["Resource"] = new[]
/// {
/// Output.Tuple(currentGetPartition, currentGetRegion, current).Apply(values =>
/// {
/// var currentGetPartition = values.Item1;
/// var currentGetRegion = values.Item2;
/// var current = values.Item3;
/// return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:ecr:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:repository/*";
/// }),
/// },
/// },
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Sid":    "testpolicy",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// },
/// "Action": []string{
/// "ecr:ReplicateImage",
/// },
/// "Resource": []string{
/// fmt.Sprintf("arn:%v:ecr:%v:%v:repository/*", currentGetPartition.Partition, currentGetRegion.Region, current.AccountId),
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = ecr.NewRegistryPolicy(ctx, "example", &ecr.RegistryPolicyArgs{
/// Policy: pulumi.String(json0),
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
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.ecr.RegistryPolicy;
/// import com.pulumi.aws.ecr.RegistryPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
/// .build());
///
/// var example = new RegistryPolicy("example", RegistryPolicyArgs.builder()
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Sid", "testpolicy"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:%s:iam::%s:root", currentGetPartition.partition(),current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray("ecr:ReplicateImage")),
/// jsonProperty("Resource", jsonArray(String.format("arn:%s:ecr:%s:%s:repository/*", currentGetPartition.partition(),currentGetRegion.region(),current.accountId())))
/// )))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ecr:RegistryPolicy
/// properties:
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Sid: testpolicy
/// Effect: Allow
/// Principal:
/// AWS: arn:${currentGetPartition.partition}:iam::${current.accountId}:root
/// Action:
/// - ecr:ReplicateImage
/// Resource:
/// - arn:${currentGetPartition.partition}:ecr:${currentGetRegion.region}:${current.accountId}:repository/*
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// currentGetRegion:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// currentGetPartition:
/// fn::invoke:
/// function: aws:getPartition
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECR Registry Policy using the registry id. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/registryPolicy:RegistryPolicy example 123456789012
/// ```
class RegistryPolicy extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID where the registry was created.
  late final Output<String> registryId;

  RegistryPolicy(
    String name, {
    RegistryPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/registryPolicy:RegistryPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
  }
}
