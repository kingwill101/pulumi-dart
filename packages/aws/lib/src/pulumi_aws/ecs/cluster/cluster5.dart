import 'package:pulumi/pulumi.dart';
import '../cluster_configuration/cluster_configuration.dart';
import '../cluster_service_connect_defaults/cluster_service_connect_defaults.dart';
import '../cluster_setting/cluster_setting.dart';
import 'cluster_args5.dart';

/// Provides an ECS cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ecs.Cluster("foo", {
/// name: "white-hart",
/// settings: [{
/// name: "containerInsights",
/// value: "enabled",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ecs.Cluster("foo",
/// name="white-hart",
/// settings=[{
/// "name": "containerInsights",
/// "value": "enabled",
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
/// var foo = new Aws.Ecs.Cluster("foo", new()
/// {
/// Name = "white-hart",
/// Settings = new[]
/// {
/// new Aws.Ecs.Inputs.ClusterSettingArgs
/// {
/// Name = "containerInsights",
/// Value = "enabled",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ecs.NewCluster(ctx, "foo", &ecs.ClusterArgs{
/// Name: pulumi.String("white-hart"),
/// Settings: ecs.ClusterSettingArray{
/// &ecs.ClusterSettingArgs{
/// Name:  pulumi.String("containerInsights"),
/// Value: pulumi.String("enabled"),
/// },
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
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.aws.ecs.ClusterArgs;
/// import com.pulumi.aws.ecs.inputs.ClusterSettingArgs;
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
/// var foo = new Cluster("foo", ClusterArgs.builder()
/// .name("white-hart")
/// .settings(ClusterSettingArgs.builder()
/// .name("containerInsights")
/// .value("enabled")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ecs:Cluster
/// properties:
/// name: white-hart
/// settings:
/// - name: containerInsights
/// value: enabled
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Execute Command Configuration with Override Logging
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
/// description: "example",
/// deletionWindowInDays: 7,
/// });
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {name: "example"});
/// const test = new aws.ecs.Cluster("test", {
/// name: "example",
/// configuration: {
/// executeCommandConfiguration: {
/// kmsKeyId: example.arn,
/// logging: "OVERRIDE",
/// logConfiguration: {
/// cloudWatchEncryptionEnabled: true,
/// cloudWatchLogGroupName: exampleLogGroup.name,
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
/// description="example",
/// deletion_window_in_days=7)
/// example_log_group = aws.cloudwatch.LogGroup("example", name="example")
/// test = aws.ecs.Cluster("test",
/// name="example",
/// configuration={
/// "execute_command_configuration": {
/// "kms_key_id": example.arn,
/// "logging": "OVERRIDE",
/// "log_configuration": {
/// "cloud_watch_encryption_enabled": True,
/// "cloud_watch_log_group_name": example_log_group.name,
/// },
/// },
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "example",
/// DeletionWindowInDays = 7,
/// });
///
/// var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = "example",
/// });
///
/// var test = new Aws.Ecs.Cluster("test", new()
/// {
/// Name = "example",
/// Configuration = new Aws.Ecs.Inputs.ClusterConfigurationArgs
/// {
/// ExecuteCommandConfiguration = new Aws.Ecs.Inputs.ClusterConfigurationExecuteCommandConfigurationArgs
/// {
/// KmsKeyId = example.Arn,
/// Logging = "OVERRIDE",
/// LogConfiguration = new Aws.Ecs.Inputs.ClusterConfigurationExecuteCommandConfigurationLogConfigurationArgs
/// {
/// CloudWatchEncryptionEnabled = true,
/// CloudWatchLogGroupName = exampleLogGroup.Name,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("example"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewCluster(ctx, "test", &ecs.ClusterArgs{
/// Name: pulumi.String("example"),
/// Configuration: &ecs.ClusterConfigurationArgs{
/// ExecuteCommandConfiguration: &ecs.ClusterConfigurationExecuteCommandConfigurationArgs{
/// KmsKeyId: example.Arn,
/// Logging:  pulumi.String("OVERRIDE"),
/// LogConfiguration: &ecs.ClusterConfigurationExecuteCommandConfigurationLogConfigurationArgs{
/// CloudWatchEncryptionEnabled: pulumi.Bool(true),
/// CloudWatchLogGroupName:      exampleLogGroup.Name,
/// },
/// },
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.aws.ecs.ClusterArgs;
/// import com.pulumi.aws.ecs.inputs.ClusterConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ClusterConfigurationExecuteCommandConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ClusterConfigurationExecuteCommandConfigurationLogConfigurationArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("example")
/// .deletionWindowInDays(7)
/// .build());
///
/// var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var test = new Cluster("test", ClusterArgs.builder()
/// .name("example")
/// .configuration(ClusterConfigurationArgs.builder()
/// .executeCommandConfiguration(ClusterConfigurationExecuteCommandConfigurationArgs.builder()
/// .kmsKeyId(example.arn())
/// .logging("OVERRIDE")
/// .logConfiguration(ClusterConfigurationExecuteCommandConfigurationLogConfigurationArgs.builder()
/// .cloudWatchEncryptionEnabled(true)
/// .cloudWatchLogGroupName(exampleLogGroup.name())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: example
/// deletionWindowInDays: 7
/// exampleLogGroup:
/// type: aws:cloudwatch:LogGroup
/// name: example
/// properties:
/// name: example
/// test:
/// type: aws:ecs:Cluster
/// properties:
/// name: example
/// configuration:
/// executeCommandConfiguration:
/// kmsKeyId: ${example.arn}
/// logging: OVERRIDE
/// logConfiguration:
/// cloudWatchEncryptionEnabled: true
/// cloudWatchLogGroupName: ${exampleLogGroup.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Fargate Ephemeral Storage Encryption with Customer-Managed KMS Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
/// description: "example",
/// deletionWindowInDays: 7,
/// });
/// const exampleKeyPolicy = new aws.kms.KeyPolicy("example", {
/// keyId: example.id,
/// policy: JSON.stringify({
/// Id: "ECSClusterFargatePolicy",
/// Statement: [
/// {
/// Sid: "Enable IAM User Permissions",
/// Effect: "Allow",
/// Principal: {
/// AWS: "*",
/// },
/// Action: "kms:*",
/// Resource: "*",
/// },
/// {
/// Sid: "Allow generate data key access for Fargate tasks.",
/// Effect: "Allow",
/// Principal: {
/// Service: "fargate.amazonaws.com",
/// },
/// Action: ["kms:GenerateDataKeyWithoutPlaintext"],
/// Condition: {
/// StringEquals: {
/// "kms:EncryptionContext:aws:ecs:clusterAccount": [current.then(current => current.accountId)],
/// "kms:EncryptionContext:aws:ecs:clusterName": ["example"],
/// },
/// },
/// Resource: "*",
/// },
/// {
/// Sid: "Allow grant creation permission for Fargate tasks.",
/// Effect: "Allow",
/// Principal: {
/// Service: "fargate.amazonaws.com",
/// },
/// Action: ["kms:CreateGrant"],
/// Condition: {
/// StringEquals: {
/// "kms:EncryptionContext:aws:ecs:clusterAccount": [current.then(current => current.accountId)],
/// "kms:EncryptionContext:aws:ecs:clusterName": ["example"],
/// },
/// "ForAllValues:StringEquals": {
/// "kms:GrantOperations": ["Decrypt"],
/// },
/// },
/// Resource: "*",
/// },
/// ],
/// Version: "2012-10-17",
/// }),
/// });
/// const test = new aws.ecs.Cluster("test", {
/// name: "example",
/// configuration: {
/// managedStorageConfiguration: {
/// fargateEphemeralStorageKmsKeyId: example.arn,
/// },
/// },
/// }, {
/// dependsOn: [exampleKeyPolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
/// description="example",
/// deletion_window_in_days=7)
/// example_key_policy = aws.kms.KeyPolicy("example",
/// key_id=example.id,
/// policy=json.dumps({
/// "Id": "ECSClusterFargatePolicy",
/// "Statement": [
/// {
/// "Sid": "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": "*",
/// },
/// "Action": "kms:*",
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow generate data key access for Fargate tasks.",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "fargate.amazonaws.com",
/// },
/// "Action": ["kms:GenerateDataKeyWithoutPlaintext"],
/// "Condition": {
/// "StringEquals": {
/// "kms:EncryptionContext:aws:ecs:clusterAccount": [current.account_id],
/// "kms:EncryptionContext:aws:ecs:clusterName": ["example"],
/// },
/// },
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow grant creation permission for Fargate tasks.",
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "fargate.amazonaws.com",
/// },
/// "Action": ["kms:CreateGrant"],
/// "Condition": {
/// "StringEquals": {
/// "kms:EncryptionContext:aws:ecs:clusterAccount": [current.account_id],
/// "kms:EncryptionContext:aws:ecs:clusterName": ["example"],
/// },
/// "ForAllValues:StringEquals": {
/// "kms:GrantOperations": ["Decrypt"],
/// },
/// },
/// "Resource": "*",
/// },
/// ],
/// "Version": "2012-10-17",
/// }))
/// test = aws.ecs.Cluster("test",
/// name="example",
/// configuration={
/// "managed_storage_configuration": {
/// "fargate_ephemeral_storage_kms_key_id": example.arn,
/// },
/// },
/// opts = pulumi.ResourceOptions(depends_on=[example_key_policy]))
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "example",
/// DeletionWindowInDays = 7,
/// });
///
/// var exampleKeyPolicy = new Aws.Kms.KeyPolicy("example", new()
/// {
/// KeyId = example.Id,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Id"] = "ECSClusterFargatePolicy",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Enable IAM User Permissions",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = "*",
/// },
/// ["Action"] = "kms:*",
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow generate data key access for Fargate tasks.",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "fargate.amazonaws.com",
/// },
/// ["Action"] = new[]
/// {
/// "kms:GenerateDataKeyWithoutPlaintext",
/// },
/// ["Condition"] = new Dictionary<string, object?>
/// {
/// ["StringEquals"] = new Dictionary<string, object?>
/// {
/// ["kms:EncryptionContext:aws:ecs:clusterAccount"] = new[]
/// {
/// current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// ["kms:EncryptionContext:aws:ecs:clusterName"] = new[]
/// {
/// "example",
/// },
/// },
/// },
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow grant creation permission for Fargate tasks.",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "fargate.amazonaws.com",
/// },
/// ["Action"] = new[]
/// {
/// "kms:CreateGrant",
/// },
/// ["Condition"] = new Dictionary<string, object?>
/// {
/// ["StringEquals"] = new Dictionary<string, object?>
/// {
/// ["kms:EncryptionContext:aws:ecs:clusterAccount"] = new[]
/// {
/// current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
/// },
/// ["kms:EncryptionContext:aws:ecs:clusterName"] = new[]
/// {
/// "example",
/// },
/// },
/// ["ForAllValues:StringEquals"] = new Dictionary<string, object?>
/// {
/// ["kms:GrantOperations"] = new[]
/// {
/// "Decrypt",
/// },
/// },
/// },
/// ["Resource"] = "*",
/// },
/// },
/// ["Version"] = "2012-10-17",
/// }),
/// });
///
/// var test = new Aws.Ecs.Cluster("test", new()
/// {
/// Name = "example",
/// Configuration = new Aws.Ecs.Inputs.ClusterConfigurationArgs
/// {
/// ManagedStorageConfiguration = new Aws.Ecs.Inputs.ClusterConfigurationManagedStorageConfigurationArgs
/// {
/// FargateEphemeralStorageKmsKeyId = example.Arn,
/// },
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleKeyPolicy,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("example"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Id": "ECSClusterFargatePolicy",
/// "Statement": []interface{}{
/// map[string]interface{}{
/// "Sid":    "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": "*",
/// },
/// "Action":   "kms:*",
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow generate data key access for Fargate tasks.",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": "fargate.amazonaws.com",
/// },
/// "Action": []string{
/// "kms:GenerateDataKeyWithoutPlaintext",
/// },
/// "Condition": map[string]interface{}{
/// "StringEquals": map[string]interface{}{
/// "kms:EncryptionContext:aws:ecs:clusterAccount": []*string{
/// current.AccountId,
/// },
/// "kms:EncryptionContext:aws:ecs:clusterName": []string{
/// "example",
/// },
/// },
/// },
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow grant creation permission for Fargate tasks.",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": "fargate.amazonaws.com",
/// },
/// "Action": []string{
/// "kms:CreateGrant",
/// },
/// "Condition": map[string]interface{}{
/// "StringEquals": map[string]interface{}{
/// "kms:EncryptionContext:aws:ecs:clusterAccount": []*string{
/// current.AccountId,
/// },
/// "kms:EncryptionContext:aws:ecs:clusterName": []string{
/// "example",
/// },
/// },
/// "ForAllValues:StringEquals": map[string]interface{}{
/// "kms:GrantOperations": []string{
/// "Decrypt",
/// },
/// },
/// },
/// "Resource": "*",
/// },
/// },
/// "Version": "2012-10-17",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleKeyPolicy, err := kms.NewKeyPolicy(ctx, "example", &kms.KeyPolicyArgs{
/// KeyId:  example.ID(),
/// Policy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewCluster(ctx, "test", &ecs.ClusterArgs{
/// Name: pulumi.String("example"),
/// Configuration: &ecs.ClusterConfigurationArgs{
/// ManagedStorageConfiguration: &ecs.ClusterConfigurationManagedStorageConfigurationArgs{
/// FargateEphemeralStorageKmsKeyId: example.Arn,
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleKeyPolicy,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.kms.KeyPolicy;
/// import com.pulumi.aws.kms.KeyPolicyArgs;
/// import com.pulumi.aws.ecs.Cluster;
/// import com.pulumi.aws.ecs.ClusterArgs;
/// import com.pulumi.aws.ecs.inputs.ClusterConfigurationArgs;
/// import com.pulumi.aws.ecs.inputs.ClusterConfigurationManagedStorageConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("example")
/// .deletionWindowInDays(7)
/// .build());
///
/// var exampleKeyPolicy = new KeyPolicy("exampleKeyPolicy", KeyPolicyArgs.builder()
/// .keyId(example.id())
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Id", "ECSClusterFargatePolicy"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Sid", "Enable IAM User Permissions"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", "*")
/// )),
/// jsonProperty("Action", "kms:*"),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow generate data key access for Fargate tasks."),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "fargate.amazonaws.com")
/// )),
/// jsonProperty("Action", jsonArray("kms:GenerateDataKeyWithoutPlaintext")),
/// jsonProperty("Condition", jsonObject(
/// jsonProperty("StringEquals", jsonObject(
/// jsonProperty("kms:EncryptionContext:aws:ecs:clusterAccount", jsonArray(current.accountId())),
/// jsonProperty("kms:EncryptionContext:aws:ecs:clusterName", jsonArray("example"))
/// ))
/// )),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow grant creation permission for Fargate tasks."),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "fargate.amazonaws.com")
/// )),
/// jsonProperty("Action", jsonArray("kms:CreateGrant")),
/// jsonProperty("Condition", jsonObject(
/// jsonProperty("StringEquals", jsonObject(
/// jsonProperty("kms:EncryptionContext:aws:ecs:clusterAccount", jsonArray(current.accountId())),
/// jsonProperty("kms:EncryptionContext:aws:ecs:clusterName", jsonArray("example"))
/// )),
/// jsonProperty("ForAllValues:StringEquals", jsonObject(
/// jsonProperty("kms:GrantOperations", jsonArray("Decrypt"))
/// ))
/// )),
/// jsonProperty("Resource", "*")
/// )
/// )),
/// jsonProperty("Version", "2012-10-17")
/// )))
/// .build());
///
/// var test = new Cluster("test", ClusterArgs.builder()
/// .name("example")
/// .configuration(ClusterConfigurationArgs.builder()
/// .managedStorageConfiguration(ClusterConfigurationManagedStorageConfigurationArgs.builder()
/// .fargateEphemeralStorageKmsKeyId(example.arn())
/// .build())
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleKeyPolicy)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// properties:
/// description: example
/// deletionWindowInDays: 7
/// exampleKeyPolicy:
/// type: aws:kms:KeyPolicy
/// name: example
/// properties:
/// keyId: ${example.id}
/// policy:
/// fn::toJSON:
/// Id: ECSClusterFargatePolicy
/// Statement:
/// - Sid: Enable IAM User Permissions
/// Effect: Allow
/// Principal:
/// AWS: '*'
/// Action: kms:*
/// Resource: '*'
/// - Sid: Allow generate data key access for Fargate tasks.
/// Effect: Allow
/// Principal:
/// Service: fargate.amazonaws.com
/// Action:
/// - kms:GenerateDataKeyWithoutPlaintext
/// Condition:
/// StringEquals:
/// kms:EncryptionContext:aws:ecs:clusterAccount:
/// - ${current.accountId}
/// kms:EncryptionContext:aws:ecs:clusterName:
/// - example
/// Resource: '*'
/// - Sid: Allow grant creation permission for Fargate tasks.
/// Effect: Allow
/// Principal:
/// Service: fargate.amazonaws.com
/// Action:
/// - kms:CreateGrant
/// Condition:
/// StringEquals:
/// kms:EncryptionContext:aws:ecs:clusterAccount:
/// - ${current.accountId}
/// kms:EncryptionContext:aws:ecs:clusterName:
/// - example
/// ForAllValues:StringEquals:
/// kms:GrantOperations:
/// - Decrypt
/// Resource: '*'
/// Version: 2012-10-17
/// test:
/// type: aws:ecs:Cluster
/// properties:
/// name: example
/// configuration:
/// managedStorageConfiguration:
/// fargateEphemeralStorageKmsKeyId: ${example.arn}
/// options:
/// dependsOn:
/// - ${exampleKeyPolicy}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ECS clusters using the cluster name. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/cluster:Cluster stateless stateless-app
/// ```
class Cluster5 extends CustomResource {
  /// ARN that identifies the cluster.
  late final Output<String> arn;

  /// Execute command configuration for the cluster. See <span pulumi-lang-nodejs="`configuration`" pulumi-lang-dotnet="`Configuration`" pulumi-lang-go="`configuration`" pulumi-lang-python="`configuration`" pulumi-lang-yaml="`configuration`" pulumi-lang-java="`configuration`">`configuration`</span> Block for details.
  late final Output<ClusterConfiguration?> configuration;

  /// Name of the cluster (up to 255 letters, numbers, hyphens, and underscores)
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Default Service Connect namespace. See <span pulumi-lang-nodejs="`serviceConnectDefaults`" pulumi-lang-dotnet="`ServiceConnectDefaults`" pulumi-lang-go="`serviceConnectDefaults`" pulumi-lang-python="`service_connect_defaults`" pulumi-lang-yaml="`serviceConnectDefaults`" pulumi-lang-java="`serviceConnectDefaults`">`service_connect_defaults`</span> Block for details.
  late final Output<ClusterServiceConnectDefaults?> serviceConnectDefaults;

  /// Configuration block(s) with cluster settings. For example, this can be used to enable CloudWatch Container Insights for a cluster. See <span pulumi-lang-nodejs="`setting`" pulumi-lang-dotnet="`Setting`" pulumi-lang-go="`setting`" pulumi-lang-python="`setting`" pulumi-lang-yaml="`setting`" pulumi-lang-java="`setting`">`setting`</span> Block for details.
  late final Output<List<ClusterSetting>> settings;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Cluster5(
    String name, {
    ClusterArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.configuration = Output.createUnknown<ClusterConfiguration?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serviceConnectDefaults =
        Output.createUnknown<ClusterServiceConnectDefaults?>();
    this.settings = Output.createUnknown<List<ClusterSetting>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
