import 'package:pulumi/pulumi.dart';
import '../data_source_credentials/data_source_credentials.dart';
import '../data_source_parameters/data_source_parameters.dart';
import '../data_source_permission/data_source_permission.dart';
import '../data_source_ssl_properties/data_source_ssl_properties.dart';
import '../data_source_vpc_connection_properties/data_source_vpc_connection_properties.dart';
import 'data_source_args3.dart';

/// Resource for managing QuickSight Data Source
///
/// ## Example Usage
///
/// ### S3 Data Source
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.quicksight.DataSource("default", {
/// dataSourceId: "example-id",
/// name: "My Cool Data in S3",
/// parameters: {
/// s3: {
/// manifestFileLocation: {
/// bucket: "my-bucket",
/// key: "path/to/manifest.json",
/// },
/// },
/// },
/// type: "S3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.quicksight.DataSource("default",
/// data_source_id="example-id",
/// name="My Cool Data in S3",
/// parameters={
/// "s3": {
/// "manifest_file_location": {
/// "bucket": "my-bucket",
/// "key": "path/to/manifest.json",
/// },
/// },
/// },
/// type="S3")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Quicksight.DataSource("default", new()
/// {
/// DataSourceId = "example-id",
/// Name = "My Cool Data in S3",
/// Parameters = new Aws.Quicksight.Inputs.DataSourceParametersArgs
/// {
/// S3 = new Aws.Quicksight.Inputs.DataSourceParametersS3Args
/// {
/// ManifestFileLocation = new Aws.Quicksight.Inputs.DataSourceParametersS3ManifestFileLocationArgs
/// {
/// Bucket = "my-bucket",
/// Key = "path/to/manifest.json",
/// },
/// },
/// },
/// Type = "S3",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := quicksight.NewDataSource(ctx, "default", &quicksight.DataSourceArgs{
/// DataSourceId: pulumi.String("example-id"),
/// Name:         pulumi.String("My Cool Data in S3"),
/// Parameters: &quicksight.DataSourceParametersArgs{
/// S3: &quicksight.DataSourceParametersS3Args{
/// ManifestFileLocation: &quicksight.DataSourceParametersS3ManifestFileLocationArgs{
/// Bucket: pulumi.String("my-bucket"),
/// Key:    pulumi.String("path/to/manifest.json"),
/// },
/// },
/// },
/// Type: pulumi.String("S3"),
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
/// import com.pulumi.aws.quicksight.DataSource;
/// import com.pulumi.aws.quicksight.DataSourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSourceParametersArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSourceParametersS3Args;
/// import com.pulumi.aws.quicksight.inputs.DataSourceParametersS3ManifestFileLocationArgs;
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
/// var default_ = new DataSource("default", DataSourceArgs.builder()
/// .dataSourceId("example-id")
/// .name("My Cool Data in S3")
/// .parameters(DataSourceParametersArgs.builder()
/// .s3(DataSourceParametersS3Args.builder()
/// .manifestFileLocation(DataSourceParametersS3ManifestFileLocationArgs.builder()
/// .bucket("my-bucket")
/// .key("path/to/manifest.json")
/// .build())
/// .build())
/// .build())
/// .type("S3")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:quicksight:DataSource
/// properties:
/// dataSourceId: example-id
/// name: My Cool Data in S3
/// parameters:
/// s3:
/// manifestFileLocation:
/// bucket: my-bucket
/// key: path/to/manifest.json
/// type: S3
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Data Source with IAM Role ARN
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const example = new aws.s3.Bucket("example", {});
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
/// bucket: example.bucket,
/// key: "manifest.json",
/// content: pulumi.jsonStringify({
/// fileLocations: [{
/// URIPrefixes: [Promise.all([example.id, currentGetRegion, currentGetPartition]).then(([id, currentGetRegion, currentGetPartition]) => `https://${id}.s3-${currentGetRegion.region}.${currentGetPartition.dnsSuffix}`)],
/// }],
/// globalUploadSettings: {
/// format: "CSV",
/// delimiter: ",",
/// textqualifier: "\"",
/// containsHeader: true,
/// },
/// }),
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Principal: {
/// Service: "quicksight.amazonaws.com",
/// },
/// Condition: {
/// StringEquals: {
/// "aws:SourceAccount": current.then(current => current.accountId),
/// },
/// },
/// }],
/// }),
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
/// name: "example",
/// description: "Policy to allow QuickSight access to S3 bucket",
/// policy: pulumi.jsonStringify({
/// Version: "2012-10-17",
/// Statement: [
/// {
/// Action: ["s3:GetObject"],
/// Effect: "Allow",
/// Resource: pulumi.interpolate`${example.arn}/${exampleBucketObjectv2.key}`,
/// },
/// {
/// Action: ["s3:ListBucket"],
/// Effect: "Allow",
/// Resource: example.arn,
/// },
/// ],
/// }),
/// });
/// const exampleRolePolicyAttachment = new aws.iam.RolePolicyAttachment("example", {
/// policyArn: examplePolicy.arn,
/// role: exampleRole.name,
/// });
/// const exampleDataSource = new aws.quicksight.DataSource("example", {
/// dataSourceId: "example-id",
/// name: "manifest in S3",
/// parameters: {
/// s3: {
/// manifestFileLocation: {
/// bucket: example.bucket,
/// key: exampleBucketObjectv2.key,
/// },
/// roleArn: exampleRole.arn,
/// },
/// },
/// type: "S3",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// current_get_region = aws.get_region()
/// example = aws.s3.Bucket("example")
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
/// bucket=example.bucket,
/// key="manifest.json",
/// content=pulumi.Output.json_dumps({
/// "fileLocations": [{
/// "URIPrefixes": [example.id.apply(lambda id: f"https://{id}.s3-{current_get_region.region}.{current_get_partition.dns_suffix}")],
/// }],
/// "globalUploadSettings": {
/// "format": "CSV",
/// "delimiter": ",",
/// "textqualifier": "\"",
/// "containsHeader": True,
/// },
/// }))
/// example_role = aws.iam.Role("example",
/// name="example",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "quicksight.amazonaws.com",
/// },
/// "Condition": {
/// "StringEquals": {
/// "aws:SourceAccount": current.account_id,
/// },
/// },
/// }],
/// }))
/// example_policy = aws.iam.Policy("example",
/// name="example",
/// description="Policy to allow QuickSight access to S3 bucket",
/// policy=pulumi.Output.json_dumps({
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Action": ["s3:GetObject"],
/// "Effect": "Allow",
/// "Resource": pulumi.Output.all(
/// arn=example.arn,
/// key=example_bucket_objectv2.key
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['arn']}/{resolved_outputs['key']}")
/// ,
/// },
/// {
/// "Action": ["s3:ListBucket"],
/// "Effect": "Allow",
/// "Resource": example.arn,
/// },
/// ],
/// }))
/// example_role_policy_attachment = aws.iam.RolePolicyAttachment("example",
/// policy_arn=example_policy.arn,
/// role=example_role.name)
/// example_data_source = aws.quicksight.DataSource("example",
/// data_source_id="example-id",
/// name="manifest in S3",
/// parameters={
/// "s3": {
/// "manifest_file_location": {
/// "bucket": example.bucket,
/// "key": example_bucket_objectv2.key,
/// },
/// "role_arn": example_role.arn,
/// },
/// },
/// type="S3")
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
/// var currentGetPartition = Aws.GetPartition.Invoke();
///
/// var currentGetRegion = Aws.GetRegion.Invoke();
///
/// var example = new Aws.S3.Bucket("example");
///
/// var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
/// {
/// Bucket = example.BucketName,
/// Key = "manifest.json",
/// Content = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["fileLocations"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["URIPrefixes"] = new[]
/// {
/// Output.Tuple(example.Id, currentGetRegion, currentGetPartition).Apply(values =>
/// {
/// var id = values.Item1;
/// var currentGetRegion = values.Item2;
/// var currentGetPartition = values.Item3;
/// return $"https://{id}.s3-{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}.{currentGetPartition.Apply(getPartitionResult => getPartitionResult.DnsSuffix)}";
/// }),
/// },
/// },
/// },
/// ["globalUploadSettings"] = new Dictionary<string, object?>
/// {
/// ["format"] = "CSV",
/// ["delimiter"] = ",",
/// ["textqualifier"] = "\"",
/// ["containsHeader"] = true,
/// },
/// })),
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "quicksight.amazonaws.com",
/// },
/// ["Condition"] = new Dictionary<string, object?>
/// {
/// ["StringEquals"] = new Dictionary<string, object?>
/// {
/// ["aws:SourceAccount"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// },
/// },
/// },
/// }),
/// });
///
/// var examplePolicy = new Aws.Iam.Policy("example", new()
/// {
/// Name = "example",
/// Description = "Policy to allow QuickSight access to S3 bucket",
/// PolicyDocument = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "s3:GetObject",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = Output.Tuple(example.Arn, exampleBucketObjectv2.Key).Apply(values =>
/// {
/// var arn = values.Item1;
/// var key = values.Item2;
/// return $"{arn}/{key}";
/// }),
/// },
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "s3:ListBucket",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = example.Arn,
/// },
/// },
/// })),
/// });
///
/// var exampleRolePolicyAttachment = new Aws.Iam.RolePolicyAttachment("example", new()
/// {
/// PolicyArn = examplePolicy.Arn,
/// Role = exampleRole.Name,
/// });
///
/// var exampleDataSource = new Aws.Quicksight.DataSource("example", new()
/// {
/// DataSourceId = "example-id",
/// Name = "manifest in S3",
/// Parameters = new Aws.Quicksight.Inputs.DataSourceParametersArgs
/// {
/// S3 = new Aws.Quicksight.Inputs.DataSourceParametersS3Args
/// {
/// ManifestFileLocation = new Aws.Quicksight.Inputs.DataSourceParametersS3ManifestFileLocationArgs
/// {
/// Bucket = example.BucketName,
/// Key = exampleBucketObjectv2.Key,
/// },
/// RoleArn = exampleRole.Arn,
/// },
/// },
/// Type = "S3",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/quicksight"
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
/// currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := s3.NewBucket(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// Bucket: example.Bucket,
/// Key:    pulumi.String("manifest.json"),
/// Content: example.ID().ApplyT(func(id string) (pulumi.String, error) {
/// var _zero pulumi.String
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "fileLocations": []map[string]interface{}{
/// map[string]interface{}{
/// "URIPrefixes": []string{
/// fmt.Sprintf("https://%v.s3-%v.%v", id, currentGetRegion.Region, currentGetPartition.DnsSuffix),
/// },
/// },
/// },
/// "globalUploadSettings": map[string]interface{}{
/// "format":         "CSV",
/// "delimiter":      ",",
/// "textqualifier":  "\"",
/// "containsHeader": true,
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json0 := string(tmpJSON0)
/// return pulumi.String(json0), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": "quicksight.amazonaws.com",
/// },
/// "Condition": map[string]interface{}{
/// "StringEquals": map[string]interface{}{
/// "aws:SourceAccount": current.AccountId,
/// },
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(json1),
/// })
/// if err != nil {
/// return err
/// }
/// examplePolicy, err := iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("Policy to allow QuickSight access to S3 bucket"),
/// Policy: pulumi.All(example.Arn, exampleBucketObjectv2.Key, example.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// exampleArn := _args[0].(string)
/// key := _args[1].(string)
/// exampleArn1 := _args[2].(string)
/// var _zero string
/// tmpJSON2, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "s3:GetObject",
/// },
/// "Effect":   "Allow",
/// "Resource": fmt.Sprintf("%v/%v", exampleArn, key),
/// },
/// map[string]interface{}{
/// "Action": []string{
/// "s3:ListBucket",
/// },
/// "Effect":   "Allow",
/// "Resource": exampleArn1,
/// },
/// },
/// })
/// if err != nil {
/// return _zero, err
/// }
/// json2 := string(tmpJSON2)
/// return json2, nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = iam.NewRolePolicyAttachment(ctx, "example", &iam.RolePolicyAttachmentArgs{
/// PolicyArn: examplePolicy.Arn,
/// Role:      exampleRole.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = quicksight.NewDataSource(ctx, "example", &quicksight.DataSourceArgs{
/// DataSourceId: pulumi.String("example-id"),
/// Name:         pulumi.String("manifest in S3"),
/// Parameters: &quicksight.DataSourceParametersArgs{
/// S3: &quicksight.DataSourceParametersS3Args{
/// ManifestFileLocation: &quicksight.DataSourceParametersS3ManifestFileLocationArgs{
/// Bucket: example.Bucket,
/// Key:    exampleBucketObjectv2.Key,
/// },
/// RoleArn: exampleRole.Arn,
/// },
/// },
/// Type: pulumi.String("S3"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.quicksight.DataSource;
/// import com.pulumi.aws.quicksight.DataSourceArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSourceParametersArgs;
/// import com.pulumi.aws.quicksight.inputs.DataSourceParametersS3Args;
/// import com.pulumi.aws.quicksight.inputs.DataSourceParametersS3ManifestFileLocationArgs;
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
/// final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
/// .build());
///
/// final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var example = new Bucket("example");
///
/// var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
/// .bucket(example.bucket())
/// .key("manifest.json")
/// .content(example.id().applyValue(_id -> serializeJson(
/// jsonObject(
/// jsonProperty("fileLocations", jsonArray(jsonObject(
/// jsonProperty("URIPrefixes", jsonArray(String.format("https://%s.s3-%s.%s", _id,currentGetRegion.region(),currentGetPartition.dnsSuffix())))
/// ))),
/// jsonProperty("globalUploadSettings", jsonObject(
/// jsonProperty("format", "CSV"),
/// jsonProperty("delimiter", ","),
/// jsonProperty("textqualifier", "\""),
/// jsonProperty("containsHeader", true)
/// ))
/// ))))
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "quicksight.amazonaws.com")
/// )),
/// jsonProperty("Condition", jsonObject(
/// jsonProperty("StringEquals", jsonObject(
/// jsonProperty("aws:SourceAccount", current.accountId())
/// ))
/// ))
/// )))
/// )))
/// .build());
///
/// var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
/// .name("example")
/// .description("Policy to allow QuickSight access to S3 bucket")
/// .policy(Output.tuple(example.arn(), exampleBucketObjectv2.key(), example.arn()).applyValue(values -> {
/// var exampleArn = values.t1;
/// var key = values.t2;
/// var exampleArn1 = values.t3;
/// return serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Action", jsonArray("s3:GetObject")),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", String.format("%s/%s", exampleArn,key))
/// ),
/// jsonObject(
/// jsonProperty("Action", jsonArray("s3:ListBucket")),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", exampleArn1)
/// )
/// ))
/// ));
/// }))
/// .build());
///
/// var exampleRolePolicyAttachment = new RolePolicyAttachment("exampleRolePolicyAttachment", RolePolicyAttachmentArgs.builder()
/// .policyArn(examplePolicy.arn())
/// .role(exampleRole.name())
/// .build());
///
/// var exampleDataSource = new DataSource("exampleDataSource", DataSourceArgs.builder()
/// .dataSourceId("example-id")
/// .name("manifest in S3")
/// .parameters(DataSourceParametersArgs.builder()
/// .s3(DataSourceParametersS3Args.builder()
/// .manifestFileLocation(DataSourceParametersS3ManifestFileLocationArgs.builder()
/// .bucket(example.bucket())
/// .key(exampleBucketObjectv2.key())
/// .build())
/// .roleArn(exampleRole.arn())
/// .build())
/// .build())
/// .type("S3")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:Bucket
/// exampleBucketObjectv2:
/// type: aws:s3:BucketObjectv2
/// name: example
/// properties:
/// bucket: ${example.bucket}
/// key: manifest.json
/// content:
/// fn::toJSON:
/// fileLocations:
/// - URIPrefixes:
/// - https://${example.id}.s3-${currentGetRegion.region}.${currentGetPartition.dnsSuffix}
/// globalUploadSettings:
/// format: CSV
/// delimiter: ','
/// textqualifier: '"'
/// containsHeader: true
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Principal:
/// Service: quicksight.amazonaws.com
/// Condition:
/// StringEquals:
/// aws:SourceAccount: ${current.accountId}
/// examplePolicy:
/// type: aws:iam:Policy
/// name: example
/// properties:
/// name: example
/// description: Policy to allow QuickSight access to S3 bucket
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - s3:GetObject
/// Effect: Allow
/// Resource: ${example.arn}/${exampleBucketObjectv2.key}
/// - Action:
/// - s3:ListBucket
/// Effect: Allow
/// Resource: ${example.arn}
/// exampleRolePolicyAttachment:
/// type: aws:iam:RolePolicyAttachment
/// name: example
/// properties:
/// policyArn: ${examplePolicy.arn}
/// role: ${exampleRole.name}
/// exampleDataSource:
/// type: aws:quicksight:DataSource
/// name: example
/// properties:
/// dataSourceId: example-id
/// name: manifest in S3
/// parameters:
/// s3:
/// manifestFileLocation:
/// bucket: ${example.bucket}
/// key: ${exampleBucketObjectv2.key}
/// roleArn: ${exampleRole.arn}
/// type: S3
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
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight data source using the AWS account ID, and data source ID separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/dataSource:DataSource example 123456789123/my-data-source-id
/// ```
class DataSource3 extends CustomResource {
  /// Amazon Resource Name (ARN) of the data source
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The credentials Amazon QuickSight uses to connect to your underlying source. See Credentials below for more details.
  late final Output<DataSourceCredentials?> credentials;

  /// An identifier for the data source.
  late final Output<String> dataSourceId;

  /// A name for the data source, maximum of 128 characters.
  late final Output<String> name;

  /// The parameters used to connect to this data source (exactly one).
  late final Output<DataSourceParameters> parameters;

  /// A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details.
  late final Output<List<DataSourcePermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details.
  late final Output<DataSourceSslProperties> sslProperties;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of the data source. See the [AWS Documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSource.html#QS-CreateDataSource-request-Type) for the complete list of valid values.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  /// Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.
  late final Output<DataSourceVpcConnectionProperties?> vpcConnectionProperties;

  DataSource3(
    String name, {
    DataSourceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/dataSource:DataSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsAccountId = Output.createUnknown<String>();
    this.credentials = Output.createUnknown<DataSourceCredentials?>();
    this.dataSourceId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.parameters = Output.createUnknown<DataSourceParameters>();
    this.permissions = Output.createUnknown<List<DataSourcePermission>?>();
    this.region = Output.createUnknown<String>();
    this.sslProperties = Output.createUnknown<DataSourceSslProperties>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String>();
    this.vpcConnectionProperties =
        Output.createUnknown<DataSourceVpcConnectionProperties?>();
  }
}
