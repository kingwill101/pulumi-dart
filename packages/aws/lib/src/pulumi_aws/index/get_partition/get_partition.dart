import 'package:pulumi/pulumi.dart';
import 'get_partition_args.dart';
import 'get_partition_result.dart';

/// Use this data source to lookup information about the current AWS partition in
/// which the provider is working.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getPartition({});
/// const s3Policy = current.then(current => aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "1",
/// actions: ["s3:ListBucket"],
/// resources: [`arn:${current.partition}:s3:::my-bucket`],
/// }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// s3_policy = aws.iam.get_policy_document(statements=[{
/// "sid": "1",
/// "actions": ["s3:ListBucket"],
/// "resources": [f"arn:{current.partition}:s3:::my-bucket"],
/// }])
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
/// var s3Policy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "1",
/// Actions = new[]
/// {
/// "s3:ListBucket",
/// },
/// Resources = new[]
/// {
/// $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:s3:::my-bucket",
/// },
/// },
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("1"),
/// Actions: []string{
/// "s3:ListBucket",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:%v:s3:::my-bucket", current.Partition),
/// },
/// },
/// },
/// }, nil)
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
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
/// final var s3Policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("1")
/// .actions("s3:ListBucket")
/// .resources(String.format("arn:%s:s3:::my-bucket", current.partition()))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getPartition
/// arguments: {}
/// s3Policy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: '1'
/// actions:
/// - s3:ListBucket
/// resources:
/// - arn:${current.partition}:s3:::my-bucket
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPartitionResult> getPartition(
  GetPartitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getPartition:getPartition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPartitionResult.fromMap(result);
}
