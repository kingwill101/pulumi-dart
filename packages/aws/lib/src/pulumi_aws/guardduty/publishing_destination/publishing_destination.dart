import 'package:pulumi/pulumi.dart';
import 'publishing_destination_args.dart';

/// Provides a resource to manage a GuardDuty PublishingDestination. Requires an existing GuardDuty Detector.
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
/// const gdBucket = new aws.s3.Bucket("gd_bucket", {
/// bucket: "example",
/// forceDestroy: true,
/// });
/// const bucketPol = aws.iam.getPolicyDocumentOutput({
/// statements: [
/// {
/// sid: "Allow PutObject",
/// actions: ["s3:PutObject"],
/// resources: [pulumi.interpolate`${gdBucket.arn}/*`],
/// principals: [{
/// type: "Service",
/// identifiers: ["guardduty.amazonaws.com"],
/// }],
/// },
/// {
/// sid: "Allow GetBucketLocation",
/// actions: ["s3:GetBucketLocation"],
/// resources: [gdBucket.arn],
/// principals: [{
/// type: "Service",
/// identifiers: ["guardduty.amazonaws.com"],
/// }],
/// },
/// ],
/// });
/// const kmsPol = Promise.all([currentGetRegion, current, currentGetRegion, current, current]).then(([currentGetRegion, current, currentGetRegion1, current1, current2]) => aws.iam.getPolicyDocument({
/// statements: [
/// {
/// sid: "Allow GuardDuty to encrypt findings",
/// actions: ["kms:GenerateDataKey"],
/// resources: [`arn:aws:kms:${currentGetRegion.region}:${current.accountId}:key/*`],
/// principals: [{
/// type: "Service",
/// identifiers: ["guardduty.amazonaws.com"],
/// }],
/// },
/// {
/// sid: "Allow all users to modify/delete key (test only)",
/// actions: ["kms:*"],
/// resources: [`arn:aws:kms:${currentGetRegion1.region}:${current1.accountId}:key/*`],
/// principals: [{
/// type: "AWS",
/// identifiers: [`arn:aws:iam::${current2.accountId}:root`],
/// }],
/// },
/// ],
/// }));
/// const testGd = new aws.guardduty.Detector("test_gd", {enable: true});
/// const gdBucketAcl = new aws.s3.BucketAcl("gd_bucket_acl", {
/// bucket: gdBucket.id,
/// acl: "private",
/// });
/// const gdBucketPolicy = new aws.s3.BucketPolicy("gd_bucket_policy", {
/// bucket: gdBucket.id,
/// policy: bucketPol.apply(bucketPol => bucketPol.json),
/// });
/// const gdKey = new aws.kms.Key("gd_key", {
/// description: "Temporary key for AccTest of TF",
/// deletionWindowInDays: 7,
/// policy: kmsPol.then(kmsPol => kmsPol.json),
/// });
/// const test = new aws.guardduty.PublishingDestination("test", {
/// detectorId: testGd.id,
/// destinationArn: gdBucket.arn,
/// kmsKeyArn: gdKey.arn,
/// }, {
/// dependsOn: [gdBucketPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_region = aws.get_region()
/// gd_bucket = aws.s3.Bucket("gd_bucket",
/// bucket="example",
/// force_destroy=True)
/// bucket_pol = aws.iam.get_policy_document_output(statements=[
/// {
/// "sid": "Allow PutObject",
/// "actions": ["s3:PutObject"],
/// "resources": [gd_bucket.arn.apply(lambda arn: f"{arn}/*")],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["guardduty.amazonaws.com"],
/// }],
/// },
/// {
/// "sid": "Allow GetBucketLocation",
/// "actions": ["s3:GetBucketLocation"],
/// "resources": [gd_bucket.arn],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["guardduty.amazonaws.com"],
/// }],
/// },
/// ])
/// kms_pol = aws.iam.get_policy_document(statements=[
/// {
/// "sid": "Allow GuardDuty to encrypt findings",
/// "actions": ["kms:GenerateDataKey"],
/// "resources": [f"arn:aws:kms:{current_get_region.region}:{current.account_id}:key/*"],
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["guardduty.amazonaws.com"],
/// }],
/// },
/// {
/// "sid": "Allow all users to modify/delete key (test only)",
/// "actions": ["kms:*"],
/// "resources": [f"arn:aws:kms:{current_get_region.region}:{current.account_id}:key/*"],
/// "principals": [{
/// "type": "AWS",
/// "identifiers": [f"arn:aws:iam::{current.account_id}:root"],
/// }],
/// },
/// ])
/// test_gd = aws.guardduty.Detector("test_gd", enable=True)
/// gd_bucket_acl = aws.s3.BucketAcl("gd_bucket_acl",
/// bucket=gd_bucket.id,
/// acl="private")
/// gd_bucket_policy = aws.s3.BucketPolicy("gd_bucket_policy",
/// bucket=gd_bucket.id,
/// policy=bucket_pol.json)
/// gd_key = aws.kms.Key("gd_key",
/// description="Temporary key for AccTest of TF",
/// deletion_window_in_days=7,
/// policy=kms_pol.json)
/// test = aws.guardduty.PublishingDestination("test",
/// detector_id=test_gd.id,
/// destination_arn=gd_bucket.arn,
/// kms_key_arn=gd_key.arn,
/// opts = pulumi.ResourceOptions(depends_on=[gd_bucket_policy]))
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
/// var currentGetRegion = Aws.GetRegion.Invoke();
///
/// var gdBucket = new Aws.S3.Bucket("gd_bucket", new()
/// {
/// BucketName = "example",
/// ForceDestroy = true,
/// });
///
/// var bucketPol = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "Allow PutObject",
/// Actions = new[]
/// {
/// "s3:PutObject",
/// },
/// Resources = new[]
/// {
/// $"{gdBucket.Arn}/*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "guardduty.amazonaws.com",
/// },
/// },
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "Allow GetBucketLocation",
/// Actions = new[]
/// {
/// "s3:GetBucketLocation",
/// },
/// Resources = new[]
/// {
/// gdBucket.Arn,
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "guardduty.amazonaws.com",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var kmsPol = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "Allow GuardDuty to encrypt findings",
/// Actions = new[]
/// {
/// "kms:GenerateDataKey",
/// },
/// Resources = new[]
/// {
/// $"arn:aws:kms:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:key/*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "guardduty.amazonaws.com",
/// },
/// },
/// },
/// },
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "Allow all users to modify/delete key (test only)",
/// Actions = new[]
/// {
/// "kms:*",
/// },
/// Resources = new[]
/// {
/// $"arn:aws:kms:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:key/*",
/// },
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var testGd = new Aws.GuardDuty.Detector("test_gd", new()
/// {
/// Enable = true,
/// });
///
/// var gdBucketAcl = new Aws.S3.BucketAcl("gd_bucket_acl", new()
/// {
/// Bucket = gdBucket.Id,
/// Acl = "private",
/// });
///
/// var gdBucketPolicy = new Aws.S3.BucketPolicy("gd_bucket_policy", new()
/// {
/// Bucket = gdBucket.Id,
/// Policy = bucketPol.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var gdKey = new Aws.Kms.Key("gd_key", new()
/// {
/// Description = "Temporary key for AccTest of TF",
/// DeletionWindowInDays = 7,
/// Policy = kmsPol.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var test = new Aws.GuardDuty.PublishingDestination("test", new()
/// {
/// DetectorId = testGd.Id,
/// DestinationArn = gdBucket.Arn,
/// KmsKeyArn = gdKey.Arn,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// gdBucketPolicy,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/guardduty"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
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
/// gdBucket, err := s3.NewBucket(ctx, "gd_bucket", &s3.BucketArgs{
/// Bucket:       pulumi.String("example"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// bucketPol := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Sid: pulumi.String("Allow PutObject"),
/// Actions: pulumi.StringArray{
/// pulumi.String("s3:PutObject"),
/// },
/// Resources: pulumi.StringArray{
/// gdBucket.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("guardduty.amazonaws.com"),
/// },
/// },
/// },
/// },
/// &iam.GetPolicyDocumentStatementArgs{
/// Sid: pulumi.String("Allow GetBucketLocation"),
/// Actions: pulumi.StringArray{
/// pulumi.String("s3:GetBucketLocation"),
/// },
/// Resources: pulumi.StringArray{
/// gdBucket.Arn,
/// },
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("guardduty.amazonaws.com"),
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// kmsPol, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef("Allow GuardDuty to encrypt findings"),
/// Actions: []string{
/// "kms:GenerateDataKey",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:aws:kms:%v:%v:key/*", currentGetRegion.Region, current.AccountId),
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "guardduty.amazonaws.com",
/// },
/// },
/// },
/// },
/// {
/// Sid: pulumi.StringRef("Allow all users to modify/delete key (test only)"),
/// Actions: []string{
/// "kms:*",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:aws:kms:%v:%v:key/*", currentGetRegion.Region, current.AccountId),
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// testGd, err := guardduty.NewDetector(ctx, "test_gd", &guardduty.DetectorArgs{
/// Enable: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = s3.NewBucketAcl(ctx, "gd_bucket_acl", &s3.BucketAclArgs{
/// Bucket: gdBucket.ID(),
/// Acl:    pulumi.String("private"),
/// })
/// if err != nil {
/// return err
/// }
/// gdBucketPolicy, err := s3.NewBucketPolicy(ctx, "gd_bucket_policy", &s3.BucketPolicyArgs{
/// Bucket: gdBucket.ID(),
/// Policy: pulumi.String(bucketPol.ApplyT(func(bucketPol iam.GetPolicyDocumentResult) (*string, error) {
/// return &bucketPol.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// gdKey, err := kms.NewKey(ctx, "gd_key", &kms.KeyArgs{
/// Description:          pulumi.String("Temporary key for AccTest of TF"),
/// DeletionWindowInDays: pulumi.Int(7),
/// Policy:               pulumi.String(kmsPol.Json),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = guardduty.NewPublishingDestination(ctx, "test", &guardduty.PublishingDestinationArgs{
/// DetectorId:     testGd.ID(),
/// DestinationArn: gdBucket.Arn,
/// KmsKeyArn:      gdKey.Arn,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// gdBucketPolicy,
/// }))
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.guardduty.Detector;
/// import com.pulumi.aws.guardduty.DetectorArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.guardduty.PublishingDestination;
/// import com.pulumi.aws.guardduty.PublishingDestinationArgs;
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
/// final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
/// .build());
///
/// final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var gdBucket = new Bucket("gdBucket", BucketArgs.builder()
/// .bucket("example")
/// .forceDestroy(true)
/// .build());
///
/// final var bucketPol = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("Allow PutObject")
/// .actions("s3:PutObject")
/// .resources(gdBucket.arn().applyValue(_arn -> String.format("%s/*", _arn)))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("guardduty.amazonaws.com")
/// .build())
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("Allow GetBucketLocation")
/// .actions("s3:GetBucketLocation")
/// .resources(gdBucket.arn())
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("guardduty.amazonaws.com")
/// .build())
/// .build())
/// .build());
///
/// final var kmsPol = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("Allow GuardDuty to encrypt findings")
/// .actions("kms:GenerateDataKey")
/// .resources(String.format("arn:aws:kms:%s:%s:key/*", currentGetRegion.region(),current.accountId()))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("guardduty.amazonaws.com")
/// .build())
/// .build(),
/// GetPolicyDocumentStatementArgs.builder()
/// .sid("Allow all users to modify/delete key (test only)")
/// .actions("kms:*")
/// .resources(String.format("arn:aws:kms:%s:%s:key/*", currentGetRegion.region(),current.accountId()))
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers(String.format("arn:aws:iam::%s:root", current.accountId()))
/// .build())
/// .build())
/// .build());
///
/// var testGd = new Detector("testGd", DetectorArgs.builder()
/// .enable(true)
/// .build());
///
/// var gdBucketAcl = new BucketAcl("gdBucketAcl", BucketAclArgs.builder()
/// .bucket(gdBucket.id())
/// .acl("private")
/// .build());
///
/// var gdBucketPolicy = new BucketPolicy("gdBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(gdBucket.id())
/// .policy(bucketPol.applyValue(_bucketPol -> _bucketPol.json()))
/// .build());
///
/// var gdKey = new Key("gdKey", KeyArgs.builder()
/// .description("Temporary key for AccTest of TF")
/// .deletionWindowInDays(7)
/// .policy(kmsPol.json())
/// .build());
///
/// var test = new PublishingDestination("test", PublishingDestinationArgs.builder()
/// .detectorId(testGd.id())
/// .destinationArn(gdBucket.arn())
/// .kmsKeyArn(gdKey.arn())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(gdBucketPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testGd:
/// type: aws:guardduty:Detector
/// name: test_gd
/// properties:
/// enable: true
/// gdBucket:
/// type: aws:s3:Bucket
/// name: gd_bucket
/// properties:
/// bucket: example
/// forceDestroy: true
/// gdBucketAcl:
/// type: aws:s3:BucketAcl
/// name: gd_bucket_acl
/// properties:
/// bucket: ${gdBucket.id}
/// acl: private
/// gdBucketPolicy:
/// type: aws:s3:BucketPolicy
/// name: gd_bucket_policy
/// properties:
/// bucket: ${gdBucket.id}
/// policy: ${bucketPol.json}
/// gdKey:
/// type: aws:kms:Key
/// name: gd_key
/// properties:
/// description: Temporary key for AccTest of TF
/// deletionWindowInDays: 7
/// policy: ${kmsPol.json}
/// test:
/// type: aws:guardduty:PublishingDestination
/// properties:
/// detectorId: ${testGd.id}
/// destinationArn: ${gdBucket.arn}
/// kmsKeyArn: ${gdKey.arn}
/// options:
/// dependsOn:
/// - ${gdBucketPolicy}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// currentGetRegion:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// bucketPol:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: Allow PutObject
/// actions:
/// - s3:PutObject
/// resources:
/// - ${gdBucket.arn}/*
/// principals:
/// - type: Service
/// identifiers:
/// - guardduty.amazonaws.com
/// - sid: Allow GetBucketLocation
/// actions:
/// - s3:GetBucketLocation
/// resources:
/// - ${gdBucket.arn}
/// principals:
/// - type: Service
/// identifiers:
/// - guardduty.amazonaws.com
/// kmsPol:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: Allow GuardDuty to encrypt findings
/// actions:
/// - kms:GenerateDataKey
/// resources:
/// - arn:aws:kms:${currentGetRegion.region}:${current.accountId}:key/*
/// principals:
/// - type: Service
/// identifiers:
/// - guardduty.amazonaws.com
/// - sid: Allow all users to modify/delete key (test only)
/// actions:
/// - kms:*
/// resources:
/// - arn:aws:kms:${currentGetRegion.region}:${current.accountId}:key/*
/// principals:
/// - type: AWS
/// identifiers:
/// - arn:aws:iam::${current.accountId}:root
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **Note:** Please do not use this simple example for Bucket-Policy and KMS Key Policy in a production environment. It is much too open for such a use-case. Refer to the AWS documentation here: https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_exportfindings.html
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty PublishingDestination using the master GuardDuty detector ID and PublishingDestinationID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/publishingDestination:PublishingDestination test a4b86f26fa42e7e7cf0d1c333ea77777:a4b86f27a0e464e4a7e0516d242f1234
/// ```
class PublishingDestination extends CustomResource {
  /// The bucket arn and prefix under which the findings get exported. Bucket-ARN is required, the prefix is optional and will be `AWSLogs/[Account-ID]/GuardDuty/[Region]/` if not provided
  late final Output<String> destinationArn;

  /// Currently there is only "S3" available as destination type which is also the default value
  ///
  /// > **Note:** In case of missing permissions (S3 Bucket Policy _or_ KMS Key permissions) the resource will fail to create. If the permissions are changed after resource creation, this can be asked from the AWS API via the "DescribePublishingDestination" call (https://docs.aws.amazon.com/cli/latest/reference/guardduty/describe-publishing-destination.html).
  late final Output<String?> destinationType;

  /// The detector ID of the GuardDuty.
  late final Output<String> detectorId;

  /// The ARN of the KMS key used to encrypt GuardDuty findings. GuardDuty enforces this to be encrypted.
  late final Output<String> kmsKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PublishingDestination(
    String name, {
    PublishingDestinationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/publishingDestination:PublishingDestination',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.destinationArn = registerOutput<String>('destinationArn');
    this.destinationType = registerOutput<String?>('destinationType');
    this.detectorId = registerOutput<String>('detectorId');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.region = registerOutput<String>('region');
  }
}
