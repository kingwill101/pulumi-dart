import 'package:pulumi/pulumi.dart';
import 'session_logger_association_args.dart';

/// Resource for managing an AWS WorkSpaces Web Session Logger Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const examplePortal = new aws.workspacesweb.Portal("example", {displayName: "example"});
/// const exampleBucket = new aws.s3.Bucket("example", {
/// bucket: "example-session-logs",
/// forceDestroy: true,
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["workspaces-web.amazonaws.com"],
/// }],
/// actions: ["s3:PutObject"],
/// resources: [pulumi.interpolate`${exampleBucket.arn}/*`],
/// }],
/// });
/// const exampleBucketPolicy = new aws.s3.BucketPolicy("example", {
/// bucket: exampleBucket.id,
/// policy: example.apply(example => example.json),
/// });
/// const exampleSessionLogger = new aws.workspacesweb.SessionLogger("example", {
/// displayName: "example",
/// eventFilter: {
/// all: {}[0],
/// },
/// logConfiguration: {
/// s3: {
/// bucket: exampleBucket.id,
/// folderStructure: "Flat",
/// logFileFormat: "Json",
/// },
/// },
/// }, {
/// dependsOn: [exampleBucketPolicy],
/// });
/// const exampleSessionLoggerAssociation = new aws.workspacesweb.SessionLoggerAssociation("example", {
/// portalArn: examplePortal.portalArn,
/// sessionLoggerArn: exampleSessionLogger.sessionLoggerArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_portal = aws.workspacesweb.Portal("example", display_name="example")
/// example_bucket = aws.s3.Bucket("example",
/// bucket="example-session-logs",
/// force_destroy=True)
/// example = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["workspaces-web.amazonaws.com"],
/// }],
/// "actions": ["s3:PutObject"],
/// "resources": [example_bucket.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// example_bucket_policy = aws.s3.BucketPolicy("example",
/// bucket=example_bucket.id,
/// policy=example.json)
/// example_session_logger = aws.workspacesweb.SessionLogger("example",
/// display_name="example",
/// event_filter={
/// "all": {}[0],
/// },
/// log_configuration={
/// "s3": {
/// "bucket": example_bucket.id,
/// "folder_structure": "Flat",
/// "log_file_format": "Json",
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_bucket_policy]))
/// example_session_logger_association = aws.workspacesweb.SessionLoggerAssociation("example",
/// portal_arn=example_portal.portal_arn,
/// session_logger_arn=example_session_logger.session_logger_arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var examplePortal = new Aws.WorkSpacesWeb.Portal("example", new()
/// {
/// DisplayName = "example",
/// });
///
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "example-session-logs",
/// ForceDestroy = true,
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
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
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "workspaces-web.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "s3:PutObject",
/// },
/// Resources = new[]
/// {
/// $"{exampleBucket.Arn}/*",
/// },
/// },
/// },
/// });
///
/// var exampleBucketPolicy = new Aws.S3.BucketPolicy("example", new()
/// {
/// Bucket = exampleBucket.Id,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var exampleSessionLogger = new Aws.WorkSpacesWeb.SessionLogger("example", new()
/// {
/// DisplayName = "example",
/// EventFilter = new Aws.WorkSpacesWeb.Inputs.SessionLoggerEventFilterArgs
/// {
/// All = null[0],
/// },
/// LogConfiguration = new Aws.WorkSpacesWeb.Inputs.SessionLoggerLogConfigurationArgs
/// {
/// S3 = new Aws.WorkSpacesWeb.Inputs.SessionLoggerLogConfigurationS3Args
/// {
/// Bucket = exampleBucket.Id,
/// FolderStructure = "Flat",
/// LogFileFormat = "Json",
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleBucketPolicy,
/// },
/// });
///
/// var exampleSessionLoggerAssociation = new Aws.WorkSpacesWeb.SessionLoggerAssociation("example", new()
/// {
/// PortalArn = examplePortal.PortalArn,
/// SessionLoggerArn = exampleSessionLogger.SessionLoggerArn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspacesweb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// examplePortal, err := workspacesweb.NewPortal(ctx, "example", &workspacesweb.PortalArgs{
/// DisplayName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket:       pulumi.String("example-session-logs"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("workspaces-web.amazonaws.com"),
/// },
/// },
/// },
/// Actions: pulumi.StringArray{
/// pulumi.String("s3:PutObject"),
/// },
/// Resources: pulumi.StringArray{
/// exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// },
/// },
/// }, nil)
/// exampleBucketPolicy, err := s3.NewBucketPolicy(ctx, "example", &s3.BucketPolicyArgs{
/// Bucket: exampleBucket.ID(),
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSessionLogger, err := workspacesweb.NewSessionLogger(ctx, "example", &workspacesweb.SessionLoggerArgs{
/// DisplayName: pulumi.String("example"),
/// EventFilter: &workspacesweb.SessionLoggerEventFilterArgs{
/// All: map[string]interface{}{}[0],
/// },
/// LogConfiguration: &workspacesweb.SessionLoggerLogConfigurationArgs{
/// S3: &workspacesweb.SessionLoggerLogConfigurationS3Args{
/// Bucket:          exampleBucket.ID(),
/// FolderStructure: pulumi.String("Flat"),
/// LogFileFormat:   pulumi.String("Json"),
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleBucketPolicy,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = workspacesweb.NewSessionLoggerAssociation(ctx, "example", &workspacesweb.SessionLoggerAssociationArgs{
/// PortalArn:        examplePortal.PortalArn,
/// SessionLoggerArn: exampleSessionLogger.SessionLoggerArn,
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
/// import com.pulumi.aws.workspacesweb.Portal;
/// import com.pulumi.aws.workspacesweb.PortalArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.workspacesweb.SessionLogger;
/// import com.pulumi.aws.workspacesweb.SessionLoggerArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerEventFilterArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerLogConfigurationArgs;
/// import com.pulumi.aws.workspacesweb.inputs.SessionLoggerLogConfigurationS3Args;
/// import com.pulumi.aws.workspacesweb.SessionLoggerAssociation;
/// import com.pulumi.aws.workspacesweb.SessionLoggerAssociationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var examplePortal = new Portal("examplePortal", PortalArgs.builder()
/// .displayName("example")
/// .build());
///
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("example-session-logs")
/// .forceDestroy(true)
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("workspaces-web.amazonaws.com")
/// .build())
/// .actions("s3:PutObject")
/// .resources(exampleBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
/// .build())
/// .build());
///
/// var exampleBucketPolicy = new BucketPolicy("exampleBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(exampleBucket.id())
/// .policy(example.applyValue(_example -> _example.json()))
/// .build());
///
/// var exampleSessionLogger = new SessionLogger("exampleSessionLogger", SessionLoggerArgs.builder()
/// .displayName("example")
/// .eventFilter(SessionLoggerEventFilterArgs.builder()
/// .all(SessionLoggerEventFilterAllArgs.builder()
/// .build()[0])
/// .build())
/// .logConfiguration(SessionLoggerLogConfigurationArgs.builder()
/// .s3(SessionLoggerLogConfigurationS3Args.builder()
/// .bucket(exampleBucket.id())
/// .folderStructure("Flat")
/// .logFileFormat("Json")
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleBucketPolicy)
/// .build());
///
/// var exampleSessionLoggerAssociation = new SessionLoggerAssociation("exampleSessionLoggerAssociation", SessionLoggerAssociationArgs.builder()
/// .portalArn(examplePortal.portalArn())
/// .sessionLoggerArn(exampleSessionLogger.sessionLoggerArn())
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Session Logger Association using the `session_logger_arn,portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/sessionLoggerAssociation:SessionLoggerAssociation example arn:aws:workspaces-web:us-west-2:123456789012:sessionLogger/session_logger-id-12345678,arn:aws:workspaces-web:us-west-2:123456789012:portal/portal-id-12345678
/// ```
class SessionLoggerAssociation extends CustomResource {
  /// ARN of the web portal.
  late final Output<String> portalArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the session logger.
  ///
  /// The following arguments are optional:
  late final Output<String> sessionLoggerArn;

  SessionLoggerAssociation(
    String name, {
    SessionLoggerAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/sessionLoggerAssociation:SessionLoggerAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.portalArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.sessionLoggerArn = Output.createUnknown<String>();
  }
}
