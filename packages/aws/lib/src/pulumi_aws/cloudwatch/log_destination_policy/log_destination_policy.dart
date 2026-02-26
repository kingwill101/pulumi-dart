import 'package:pulumi/pulumi.dart';
import 'log_destination_policy_args.dart';

/// Provides a CloudWatch Logs destination policy resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testDestination = new aws.cloudwatch.LogDestination("test_destination", {
/// name: "test_destination",
/// roleArn: iamForCloudwatch.arn,
/// targetArn: kinesisForCloudwatch.arn,
/// });
/// const testDestinationPolicy = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: ["123456789012"],
/// }],
/// actions: ["logs:PutSubscriptionFilter"],
/// resources: [testDestination.arn],
/// }],
/// });
/// const testDestinationPolicyLogDestinationPolicy = new aws.cloudwatch.LogDestinationPolicy("test_destination_policy", {
/// destinationName: testDestination.name,
/// accessPolicy: testDestinationPolicy.apply(testDestinationPolicy => testDestinationPolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_destination = aws.cloudwatch.LogDestination("test_destination",
/// name="test_destination",
/// role_arn=iam_for_cloudwatch["arn"],
/// target_arn=kinesis_for_cloudwatch["arn"])
/// test_destination_policy = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": ["123456789012"],
/// }],
/// "actions": ["logs:PutSubscriptionFilter"],
/// "resources": [test_destination.arn],
/// }])
/// test_destination_policy_log_destination_policy = aws.cloudwatch.LogDestinationPolicy("test_destination_policy",
/// destination_name=test_destination.name,
/// access_policy=test_destination_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testDestination = new Aws.CloudWatch.LogDestination("test_destination", new()
/// {
/// Name = "test_destination",
/// RoleArn = iamForCloudwatch.Arn,
/// TargetArn = kinesisForCloudwatch.Arn,
/// });
///
/// var testDestinationPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// "123456789012",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "logs:PutSubscriptionFilter",
/// },
/// Resources = new[]
/// {
/// testDestination.Arn,
/// },
/// },
/// },
/// });
///
/// var testDestinationPolicyLogDestinationPolicy = new Aws.CloudWatch.LogDestinationPolicy("test_destination_policy", new()
/// {
/// DestinationName = testDestination.Name,
/// AccessPolicy = testDestinationPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testDestination, err := cloudwatch.NewLogDestination(ctx, "test_destination", &cloudwatch.LogDestinationArgs{
/// Name:      pulumi.String("test_destination"),
/// RoleArn:   pulumi.Any(iamForCloudwatch.Arn),
/// TargetArn: pulumi.Any(kinesisForCloudwatch.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// testDestinationPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("AWS"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("123456789012"),
/// },
/// },
/// },
/// Actions: pulumi.StringArray{
/// pulumi.String("logs:PutSubscriptionFilter"),
/// },
/// Resources: pulumi.StringArray{
/// testDestination.Arn,
/// },
/// },
/// },
/// }, nil)
/// _, err = cloudwatch.NewLogDestinationPolicy(ctx, "test_destination_policy", &cloudwatch.LogDestinationPolicyArgs{
/// DestinationName: testDestination.Name,
/// AccessPolicy: pulumi.String(testDestinationPolicy.ApplyT(func(testDestinationPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &testDestinationPolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.cloudwatch.LogDestination;
/// import com.pulumi.aws.cloudwatch.LogDestinationArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.LogDestinationPolicy;
/// import com.pulumi.aws.cloudwatch.LogDestinationPolicyArgs;
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
/// var testDestination = new LogDestination("testDestination", LogDestinationArgs.builder()
/// .name("test_destination")
/// .roleArn(iamForCloudwatch.arn())
/// .targetArn(kinesisForCloudwatch.arn())
/// .build());
///
/// final var testDestinationPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers("123456789012")
/// .build())
/// .actions("logs:PutSubscriptionFilter")
/// .resources(testDestination.arn())
/// .build())
/// .build());
///
/// var testDestinationPolicyLogDestinationPolicy = new LogDestinationPolicy("testDestinationPolicyLogDestinationPolicy", LogDestinationPolicyArgs.builder()
/// .destinationName(testDestination.name())
/// .accessPolicy(testDestinationPolicy.applyValue(_testDestinationPolicy -> _testDestinationPolicy.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testDestination:
/// type: aws:cloudwatch:LogDestination
/// name: test_destination
/// properties:
/// name: test_destination
/// roleArn: ${iamForCloudwatch.arn}
/// targetArn: ${kinesisForCloudwatch.arn}
/// testDestinationPolicyLogDestinationPolicy:
/// type: aws:cloudwatch:LogDestinationPolicy
/// name: test_destination_policy
/// properties:
/// destinationName: ${testDestination.name}
/// accessPolicy: ${testDestinationPolicy.json}
/// variables:
/// testDestinationPolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: AWS
/// identifiers:
/// - '123456789012'
/// actions:
/// - logs:PutSubscriptionFilter
/// resources:
/// - ${testDestination.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs destination policies using the <span pulumi-lang-nodejs="`destinationName`" pulumi-lang-dotnet="`DestinationName`" pulumi-lang-go="`destinationName`" pulumi-lang-python="`destination_name`" pulumi-lang-yaml="`destinationName`" pulumi-lang-java="`destinationName`">`destination_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDestinationPolicy:LogDestinationPolicy test_destination_policy test_destination
/// ```
class LogDestinationPolicy extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final Output<String> accessPolicy;

  /// A name for the subscription filter
  late final Output<String> destinationName;

  /// Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  late final Output<bool?> forceUpdate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogDestinationPolicy(
    String name, {
    LogDestinationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDestinationPolicy:LogDestinationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicy = Output.createUnknown<String>();
    this.destinationName = Output.createUnknown<String>();
    this.forceUpdate = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
  }
}
