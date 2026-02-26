import 'package:pulumi/pulumi.dart';
import 'get_log_data_protection_policy_document_args.dart';
import 'get_log_data_protection_policy_document_result.dart';

/// Generates a CloudWatch Log Group Data Protection Policy document in JSON format for use with the <span pulumi-lang-nodejs="`aws.cloudwatch.LogDataProtectionPolicy`" pulumi-lang-dotnet="`aws.cloudwatch.LogDataProtectionPolicy`" pulumi-lang-go="`cloudwatch.LogDataProtectionPolicy`" pulumi-lang-python="`cloudwatch.LogDataProtectionPolicy`" pulumi-lang-yaml="`aws.cloudwatch.LogDataProtectionPolicy`" pulumi-lang-java="`aws.cloudwatch.LogDataProtectionPolicy`">`aws.cloudwatch.LogDataProtectionPolicy`</span> resource.
///
/// > For more information about data protection policies, see the [Help protect sensitive log data with masking](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/mask-sensitive-log-data.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.cloudwatch.getLogDataProtectionPolicyDocument({
/// name: "Example",
/// statements: [
/// {
/// sid: "Audit",
/// dataIdentifiers: [
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// ],
/// operation: {
/// audit: {
/// findingsDestination: {
/// cloudwatchLogs: {
/// logGroup: audit.name,
/// },
/// firehose: {
/// deliveryStream: auditAwsKinesisFirehoseDeliveryStream.name,
/// },
/// s3: {
/// bucket: auditAwsS3Bucket.bucket,
/// },
/// },
/// },
/// },
/// },
/// {
/// sid: "Deidentify",
/// dataIdentifiers: [
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// ],
/// operation: {
/// deidentify: {
/// maskConfig: {},
/// },
/// },
/// },
/// ],
/// });
/// const exampleLogDataProtectionPolicy = new aws.cloudwatch.LogDataProtectionPolicy("example", {
/// logGroupName: exampleAwsCloudwatchLogGroup.name,
/// policyDocument: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.get_log_data_protection_policy_document(name="Example",
/// statements=[
/// {
/// "sid": "Audit",
/// "data_identifiers": [
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// ],
/// "operation": {
/// "audit": {
/// "findings_destination": {
/// "cloudwatch_logs": {
/// "log_group": audit["name"],
/// },
/// "firehose": {
/// "delivery_stream": audit_aws_kinesis_firehose_delivery_stream["name"],
/// },
/// "s3": {
/// "bucket": audit_aws_s3_bucket["bucket"],
/// },
/// },
/// },
/// },
/// },
/// {
/// "sid": "Deidentify",
/// "data_identifiers": [
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// ],
/// "operation": {
/// "deidentify": {
/// "mask_config": {},
/// },
/// },
/// },
/// ])
/// example_log_data_protection_policy = aws.cloudwatch.LogDataProtectionPolicy("example",
/// log_group_name=example_aws_cloudwatch_log_group["name"],
/// policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.CloudWatch.GetLogDataProtectionPolicyDocument.Invoke(new()
/// {
/// Name = "Example",
/// Statements = new[]
/// {
/// new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementInputArgs
/// {
/// Sid = "Audit",
/// DataIdentifiers = new[]
/// {
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// },
/// Operation = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationInputArgs
/// {
/// Audit = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditInputArgs
/// {
/// FindingsDestination = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationInputArgs
/// {
/// CloudwatchLogs = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogsInputArgs
/// {
/// LogGroup = audit.Name,
/// },
/// Firehose = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehoseInputArgs
/// {
/// DeliveryStream = auditAwsKinesisFirehoseDeliveryStream.Name,
/// },
/// S3 = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3InputArgs
/// {
/// Bucket = auditAwsS3Bucket.Bucket,
/// },
/// },
/// },
/// },
/// },
/// new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementInputArgs
/// {
/// Sid = "Deidentify",
/// DataIdentifiers = new[]
/// {
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// },
/// Operation = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationInputArgs
/// {
/// Deidentify = new Aws.CloudWatch.Inputs.GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyInputArgs
/// {
/// MaskConfig = null,
/// },
/// },
/// },
/// },
/// });
///
/// var exampleLogDataProtectionPolicy = new Aws.CloudWatch.LogDataProtectionPolicy("example", new()
/// {
/// LogGroupName = exampleAwsCloudwatchLogGroup.Name,
/// PolicyDocument = example.Apply(getLogDataProtectionPolicyDocumentResult => getLogDataProtectionPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cloudwatch.GetLogDataProtectionPolicyDocument(ctx, &cloudwatch.GetLogDataProtectionPolicyDocumentArgs{
/// Name: "Example",
/// Statements: []cloudwatch.GetLogDataProtectionPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("Audit"),
/// DataIdentifiers: []string{
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// },
/// Operation: {
/// Audit: {
/// FindingsDestination: {
/// CloudwatchLogs: {
/// LogGroup: audit.Name,
/// },
/// Firehose: {
/// DeliveryStream: auditAwsKinesisFirehoseDeliveryStream.Name,
/// },
/// S3: {
/// Bucket: auditAwsS3Bucket.Bucket,
/// },
/// },
/// },
/// },
/// },
/// {
/// Sid: pulumi.StringRef("Deidentify"),
/// DataIdentifiers: []string{
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US",
/// },
/// Operation: {
/// Deidentify: {
/// MaskConfig: {},
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewLogDataProtectionPolicy(ctx, "example", &cloudwatch.LogDataProtectionPolicyArgs{
/// LogGroupName:   pulumi.Any(exampleAwsCloudwatchLogGroup.Name),
/// PolicyDocument: pulumi.String(example.Json),
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
/// import com.pulumi.aws.cloudwatch.CloudwatchFunctions;
/// import com.pulumi.aws.cloudwatch.inputs.GetLogDataProtectionPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.LogDataProtectionPolicy;
/// import com.pulumi.aws.cloudwatch.LogDataProtectionPolicyArgs;
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
/// final var example = CloudwatchFunctions.getLogDataProtectionPolicyDocument(GetLogDataProtectionPolicyDocumentArgs.builder()
/// .name("Example")
/// .statements(
/// GetLogDataProtectionPolicyDocumentStatementArgs.builder()
/// .sid("Audit")
/// .dataIdentifiers(
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US")
/// .operation(GetLogDataProtectionPolicyDocumentStatementOperationArgs.builder()
/// .audit(GetLogDataProtectionPolicyDocumentStatementOperationAuditArgs.builder()
/// .findingsDestination(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationArgs.builder()
/// .cloudwatchLogs(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationCloudwatchLogsArgs.builder()
/// .logGroup(audit.name())
/// .build())
/// .firehose(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationFirehoseArgs.builder()
/// .deliveryStream(auditAwsKinesisFirehoseDeliveryStream.name())
/// .build())
/// .s3(GetLogDataProtectionPolicyDocumentStatementOperationAuditFindingsDestinationS3Args.builder()
/// .bucket(auditAwsS3Bucket.bucket())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build(),
/// GetLogDataProtectionPolicyDocumentStatementArgs.builder()
/// .sid("Deidentify")
/// .dataIdentifiers(
/// "arn:aws:dataprotection::aws:data-identifier/EmailAddress",
/// "arn:aws:dataprotection::aws:data-identifier/DriversLicense-US")
/// .operation(GetLogDataProtectionPolicyDocumentStatementOperationArgs.builder()
/// .deidentify(GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyArgs.builder()
/// .maskConfig(GetLogDataProtectionPolicyDocumentStatementOperationDeidentifyMaskConfigArgs.builder()
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var exampleLogDataProtectionPolicy = new LogDataProtectionPolicy("exampleLogDataProtectionPolicy", LogDataProtectionPolicyArgs.builder()
/// .logGroupName(exampleAwsCloudwatchLogGroup.name())
/// .policyDocument(example.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleLogDataProtectionPolicy:
/// type: aws:cloudwatch:LogDataProtectionPolicy
/// name: example
/// properties:
/// logGroupName: ${exampleAwsCloudwatchLogGroup.name}
/// policyDocument: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:cloudwatch:getLogDataProtectionPolicyDocument
/// arguments:
/// name: Example
/// statements:
/// - sid: Audit
/// dataIdentifiers:
/// - arn:aws:dataprotection::aws:data-identifier/EmailAddress
/// - arn:aws:dataprotection::aws:data-identifier/DriversLicense-US
/// operation:
/// audit:
/// findingsDestination:
/// cloudwatchLogs:
/// logGroup: ${audit.name}
/// firehose:
/// deliveryStream: ${auditAwsKinesisFirehoseDeliveryStream.name}
/// s3:
/// bucket: ${auditAwsS3Bucket.bucket}
/// - sid: Deidentify
/// dataIdentifiers:
/// - arn:aws:dataprotection::aws:data-identifier/EmailAddress
/// - arn:aws:dataprotection::aws:data-identifier/DriversLicense-US
/// operation:
/// deidentify:
/// maskConfig: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLogDataProtectionPolicyDocumentResult>
    getLogDataProtectionPolicyDocument(
  GetLogDataProtectionPolicyDocumentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:cloudwatch/getLogDataProtectionPolicyDocument:getLogDataProtectionPolicyDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLogDataProtectionPolicyDocumentResult.fromMap(result);
}
