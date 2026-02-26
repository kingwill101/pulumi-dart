import 'package:pulumi/pulumi.dart';
import 'key_args.dart';

/// Manages a single-Region or multi-Region primary KMS key.
///
/// > **NOTE on KMS Key Policy:** KMS Key Policy can be configured in either the standalone resource <span pulumi-lang-nodejs="`aws.kms.KeyPolicy`" pulumi-lang-dotnet="`aws.kms.KeyPolicy`" pulumi-lang-go="`kms.KeyPolicy`" pulumi-lang-python="`kms.KeyPolicy`" pulumi-lang-yaml="`aws.kms.KeyPolicy`" pulumi-lang-java="`aws.kms.KeyPolicy`">`aws.kms.KeyPolicy`</span>
/// or with the parameter <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> in this resource.
/// Configuring with both will cause inconsistencies and may overwrite configuration.
///
/// ## Example Usage
///
/// ### Symmetric Encryption KMS Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
/// description: "An example symmetric encryption KMS key",
/// enableKeyRotation: true,
/// deletionWindowInDays: 20,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Id: "key-default-1",
/// Statement: [
/// {
/// Sid: "Enable IAM User Permissions",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
/// },
/// Action: "kms:*",
/// Resource: "*",
/// },
/// {
/// Sid: "Allow administration of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:user/Alice`),
/// },
/// Action: [
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// Resource: "*",
/// },
/// {
/// Sid: "Allow use of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:user/Bob`),
/// },
/// Action: [
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// ],
/// Resource: "*",
/// },
/// ],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
/// description="An example symmetric encryption KMS key",
/// enable_key_rotation=True,
/// deletion_window_in_days=20,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Id": "key-default-1",
/// "Statement": [
/// {
/// "Sid": "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:root",
/// },
/// "Action": "kms:*",
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:user/Alice",
/// },
/// "Action": [
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:user/Bob",
/// },
/// "Action": [
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// ],
/// "Resource": "*",
/// },
/// ],
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "An example symmetric encryption KMS key",
/// EnableKeyRotation = true,
/// DeletionWindowInDays = 20,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Id"] = "key-default-1",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Enable IAM User Permissions",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
/// },
/// ["Action"] = "kms:*",
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow administration of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:user/Alice",
/// },
/// ["Action"] = new[]
/// {
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow use of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:user/Bob",
/// },
/// ["Action"] = new[]
/// {
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// },
/// ["Resource"] = "*",
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
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Id":      "key-default-1",
/// "Statement": []interface{}{
/// map[string]interface{}{
/// "Sid":    "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// },
/// "Action":   "kms:*",
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:user/Alice", current.AccountId),
/// },
/// "Action": []string{
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:user/Bob", current.AccountId),
/// },
/// "Action": []string{
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// },
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("An example symmetric encryption KMS key"),
/// EnableKeyRotation:    pulumi.Bool(true),
/// DeletionWindowInDays: pulumi.Int(20),
/// Policy:               pulumi.String(json0),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("An example symmetric encryption KMS key")
/// .enableKeyRotation(true)
/// .deletionWindowInDays(20)
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Id", "key-default-1"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Sid", "Enable IAM User Permissions"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
/// )),
/// jsonProperty("Action", "kms:*"),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow administration of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:user/Alice", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion"
/// )),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow use of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:user/Bob", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext"
/// )),
/// jsonProperty("Resource", "*")
/// )
/// ))
/// )))
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
/// description: An example symmetric encryption KMS key
/// enableKeyRotation: true
/// deletionWindowInDays: 20
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Id: key-default-1
/// Statement:
/// - Sid: Enable IAM User Permissions
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:root
/// Action: kms:*
/// Resource: '*'
/// - Sid: Allow administration of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:user/Alice
/// Action:
/// - kms:ReplicateKey
/// - kms:Create*
/// - kms:Describe*
/// - kms:Enable*
/// - kms:List*
/// - kms:Put*
/// - kms:Update*
/// - kms:Revoke*
/// - kms:Disable*
/// - kms:Get*
/// - kms:Delete*
/// - kms:ScheduleKeyDeletion
/// - kms:CancelKeyDeletion
/// Resource: '*'
/// - Sid: Allow use of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:user/Bob
/// Action:
/// - kms:DescribeKey
/// - kms:Encrypt
/// - kms:Decrypt
/// - kms:ReEncrypt*
/// - kms:GenerateDataKey
/// - kms:GenerateDataKeyWithoutPlaintext
/// Resource: '*'
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Symmetric Encryption KMS Key With Standalone Policy Resource
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
/// description: "An example symmetric encryption KMS key",
/// enableKeyRotation: true,
/// deletionWindowInDays: 20,
/// });
/// const exampleKeyPolicy = new aws.kms.KeyPolicy("example", {
/// keyId: example.id,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Id: "key-default-1",
/// Statement: [{
/// Sid: "Enable IAM User Permissions",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
/// },
/// Action: "kms:*",
/// Resource: "*",
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
/// description="An example symmetric encryption KMS key",
/// enable_key_rotation=True,
/// deletion_window_in_days=20)
/// example_key_policy = aws.kms.KeyPolicy("example",
/// key_id=example.id,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Id": "key-default-1",
/// "Statement": [{
/// "Sid": "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:root",
/// },
/// "Action": "kms:*",
/// "Resource": "*",
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "An example symmetric encryption KMS key",
/// EnableKeyRotation = true,
/// DeletionWindowInDays = 20,
/// });
///
/// var exampleKeyPolicy = new Aws.Kms.KeyPolicy("example", new()
/// {
/// KeyId = example.Id,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Id"] = "key-default-1",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Enable IAM User Permissions",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
/// },
/// ["Action"] = "kms:*",
/// ["Resource"] = "*",
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
/// Description:          pulumi.String("An example symmetric encryption KMS key"),
/// EnableKeyRotation:    pulumi.Bool(true),
/// DeletionWindowInDays: pulumi.Int(20),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Id":      "key-default-1",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Sid":    "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// },
/// "Action":   "kms:*",
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = kms.NewKeyPolicy(ctx, "example", &kms.KeyPolicyArgs{
/// KeyId:  example.ID(),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.kms.KeyPolicy;
/// import com.pulumi.aws.kms.KeyPolicyArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("An example symmetric encryption KMS key")
/// .enableKeyRotation(true)
/// .deletionWindowInDays(20)
/// .build());
///
/// var exampleKeyPolicy = new KeyPolicy("exampleKeyPolicy", KeyPolicyArgs.builder()
/// .keyId(example.id())
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Id", "key-default-1"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Sid", "Enable IAM User Permissions"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
/// )),
/// jsonProperty("Action", "kms:*"),
/// jsonProperty("Resource", "*")
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
/// type: aws:kms:Key
/// properties:
/// description: An example symmetric encryption KMS key
/// enableKeyRotation: true
/// deletionWindowInDays: 20
/// exampleKeyPolicy:
/// type: aws:kms:KeyPolicy
/// name: example
/// properties:
/// keyId: ${example.id}
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Id: key-default-1
/// Statement:
/// - Sid: Enable IAM User Permissions
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:root
/// Action: kms:*
/// Resource: '*'
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Asymmetric KMS Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
/// description: "RSA-3072 asymmetric KMS key for signing and verification",
/// customerMasterKeySpec: "RSA_3072",
/// keyUsage: "SIGN_VERIFY",
/// enableKeyRotation: false,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Id: "key-default-1",
/// Statement: [
/// {
/// Sid: "Enable IAM User Permissions",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
/// },
/// Action: "kms:*",
/// Resource: "*",
/// },
/// {
/// Sid: "Allow administration of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:role/Admin`),
/// },
/// Action: [
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// Resource: "*",
/// },
/// {
/// Sid: "Allow use of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:role/Developer`),
/// },
/// Action: [
/// "kms:Sign",
/// "kms:Verify",
/// "kms:DescribeKey",
/// ],
/// Resource: "*",
/// },
/// ],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
/// description="RSA-3072 asymmetric KMS key for signing and verification",
/// customer_master_key_spec="RSA_3072",
/// key_usage="SIGN_VERIFY",
/// enable_key_rotation=False,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Id": "key-default-1",
/// "Statement": [
/// {
/// "Sid": "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:root",
/// },
/// "Action": "kms:*",
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:role/Admin",
/// },
/// "Action": [
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:role/Developer",
/// },
/// "Action": [
/// "kms:Sign",
/// "kms:Verify",
/// "kms:DescribeKey",
/// ],
/// "Resource": "*",
/// },
/// ],
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "RSA-3072 asymmetric KMS key for signing and verification",
/// CustomerMasterKeySpec = "RSA_3072",
/// KeyUsage = "SIGN_VERIFY",
/// EnableKeyRotation = false,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Id"] = "key-default-1",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Enable IAM User Permissions",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
/// },
/// ["Action"] = "kms:*",
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow administration of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:role/Admin",
/// },
/// ["Action"] = new[]
/// {
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow use of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:role/Developer",
/// },
/// ["Action"] = new[]
/// {
/// "kms:Sign",
/// "kms:Verify",
/// "kms:DescribeKey",
/// },
/// ["Resource"] = "*",
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
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Id":      "key-default-1",
/// "Statement": []interface{}{
/// map[string]interface{}{
/// "Sid":    "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// },
/// "Action":   "kms:*",
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:role/Admin", current.AccountId),
/// },
/// "Action": []string{
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:role/Developer", current.AccountId),
/// },
/// "Action": []string{
/// "kms:Sign",
/// "kms:Verify",
/// "kms:DescribeKey",
/// },
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:           pulumi.String("RSA-3072 asymmetric KMS key for signing and verification"),
/// CustomerMasterKeySpec: pulumi.String("RSA_3072"),
/// KeyUsage:              pulumi.String("SIGN_VERIFY"),
/// EnableKeyRotation:     pulumi.Bool(false),
/// Policy:                pulumi.String(json0),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("RSA-3072 asymmetric KMS key for signing and verification")
/// .customerMasterKeySpec("RSA_3072")
/// .keyUsage("SIGN_VERIFY")
/// .enableKeyRotation(false)
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Id", "key-default-1"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Sid", "Enable IAM User Permissions"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
/// )),
/// jsonProperty("Action", "kms:*"),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow administration of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:role/Admin", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion"
/// )),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow use of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:role/Developer", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:Sign",
/// "kms:Verify",
/// "kms:DescribeKey"
/// )),
/// jsonProperty("Resource", "*")
/// )
/// ))
/// )))
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
/// description: RSA-3072 asymmetric KMS key for signing and verification
/// customerMasterKeySpec: RSA_3072
/// keyUsage: SIGN_VERIFY
/// enableKeyRotation: false
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Id: key-default-1
/// Statement:
/// - Sid: Enable IAM User Permissions
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:root
/// Action: kms:*
/// Resource: '*'
/// - Sid: Allow administration of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:role/Admin
/// Action:
/// - kms:Create*
/// - kms:Describe*
/// - kms:Enable*
/// - kms:List*
/// - kms:Put*
/// - kms:Update*
/// - kms:Revoke*
/// - kms:Disable*
/// - kms:Get*
/// - kms:Delete*
/// - kms:ScheduleKeyDeletion
/// - kms:CancelKeyDeletion
/// Resource: '*'
/// - Sid: Allow use of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:role/Developer
/// Action:
/// - kms:Sign
/// - kms:Verify
/// - kms:DescribeKey
/// Resource: '*'
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### HMAC KMS key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
/// description: "HMAC_384 key for tokens",
/// customerMasterKeySpec: "HMAC_384",
/// keyUsage: "GENERATE_VERIFY_MAC",
/// enableKeyRotation: false,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Id: "key-default-1",
/// Statement: [
/// {
/// Sid: "Enable IAM User Permissions",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
/// },
/// Action: "kms:*",
/// Resource: "*",
/// },
/// {
/// Sid: "Allow administration of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:role/Admin`),
/// },
/// Action: [
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// Resource: "*",
/// },
/// {
/// Sid: "Allow use of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:role/Developer`),
/// },
/// Action: [
/// "kms:GenerateMac",
/// "kms:VerifyMac",
/// "kms:DescribeKey",
/// ],
/// Resource: "*",
/// },
/// ],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
/// description="HMAC_384 key for tokens",
/// customer_master_key_spec="HMAC_384",
/// key_usage="GENERATE_VERIFY_MAC",
/// enable_key_rotation=False,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Id": "key-default-1",
/// "Statement": [
/// {
/// "Sid": "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:root",
/// },
/// "Action": "kms:*",
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:role/Admin",
/// },
/// "Action": [
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:role/Developer",
/// },
/// "Action": [
/// "kms:GenerateMac",
/// "kms:VerifyMac",
/// "kms:DescribeKey",
/// ],
/// "Resource": "*",
/// },
/// ],
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "HMAC_384 key for tokens",
/// CustomerMasterKeySpec = "HMAC_384",
/// KeyUsage = "GENERATE_VERIFY_MAC",
/// EnableKeyRotation = false,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Id"] = "key-default-1",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Enable IAM User Permissions",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
/// },
/// ["Action"] = "kms:*",
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow administration of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:role/Admin",
/// },
/// ["Action"] = new[]
/// {
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow use of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:role/Developer",
/// },
/// ["Action"] = new[]
/// {
/// "kms:GenerateMac",
/// "kms:VerifyMac",
/// "kms:DescribeKey",
/// },
/// ["Resource"] = "*",
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
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Id":      "key-default-1",
/// "Statement": []interface{}{
/// map[string]interface{}{
/// "Sid":    "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// },
/// "Action":   "kms:*",
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:role/Admin", current.AccountId),
/// },
/// "Action": []string{
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:role/Developer", current.AccountId),
/// },
/// "Action": []string{
/// "kms:GenerateMac",
/// "kms:VerifyMac",
/// "kms:DescribeKey",
/// },
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:           pulumi.String("HMAC_384 key for tokens"),
/// CustomerMasterKeySpec: pulumi.String("HMAC_384"),
/// KeyUsage:              pulumi.String("GENERATE_VERIFY_MAC"),
/// EnableKeyRotation:     pulumi.Bool(false),
/// Policy:                pulumi.String(json0),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("HMAC_384 key for tokens")
/// .customerMasterKeySpec("HMAC_384")
/// .keyUsage("GENERATE_VERIFY_MAC")
/// .enableKeyRotation(false)
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Id", "key-default-1"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Sid", "Enable IAM User Permissions"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
/// )),
/// jsonProperty("Action", "kms:*"),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow administration of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:role/Admin", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion"
/// )),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow use of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:role/Developer", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:GenerateMac",
/// "kms:VerifyMac",
/// "kms:DescribeKey"
/// )),
/// jsonProperty("Resource", "*")
/// )
/// ))
/// )))
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
/// description: HMAC_384 key for tokens
/// customerMasterKeySpec: HMAC_384
/// keyUsage: GENERATE_VERIFY_MAC
/// enableKeyRotation: false
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Id: key-default-1
/// Statement:
/// - Sid: Enable IAM User Permissions
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:root
/// Action: kms:*
/// Resource: '*'
/// - Sid: Allow administration of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:role/Admin
/// Action:
/// - kms:Create*
/// - kms:Describe*
/// - kms:Enable*
/// - kms:List*
/// - kms:Put*
/// - kms:Update*
/// - kms:Revoke*
/// - kms:Disable*
/// - kms:Get*
/// - kms:Delete*
/// - kms:ScheduleKeyDeletion
/// - kms:CancelKeyDeletion
/// Resource: '*'
/// - Sid: Allow use of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:role/Developer
/// Action:
/// - kms:GenerateMac
/// - kms:VerifyMac
/// - kms:DescribeKey
/// Resource: '*'
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getCallerIdentity
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Multi-Region Primary Key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const example = new aws.kms.Key("example", {
/// description: "An example multi-Region primary key",
/// multiRegion: true,
/// enableKeyRotation: true,
/// deletionWindowInDays: 10,
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Id: "key-default-1",
/// Statement: [
/// {
/// Sid: "Enable IAM User Permissions",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:root`),
/// },
/// Action: "kms:*",
/// Resource: "*",
/// },
/// {
/// Sid: "Allow administration of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:user/Alice`),
/// },
/// Action: [
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// Resource: "*",
/// },
/// {
/// Sid: "Allow use of the key",
/// Effect: "Allow",
/// Principal: {
/// AWS: current.then(current => `arn:aws:iam::${current.accountId}:user/Bob`),
/// },
/// Action: [
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// ],
/// Resource: "*",
/// },
/// ],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// example = aws.kms.Key("example",
/// description="An example multi-Region primary key",
/// multi_region=True,
/// enable_key_rotation=True,
/// deletion_window_in_days=10,
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Id": "key-default-1",
/// "Statement": [
/// {
/// "Sid": "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:root",
/// },
/// "Action": "kms:*",
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:user/Alice",
/// },
/// "Action": [
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// ],
/// "Resource": "*",
/// },
/// {
/// "Sid": "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": {
/// "AWS": f"arn:aws:iam::{current.account_id}:user/Bob",
/// },
/// "Action": [
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// ],
/// "Resource": "*",
/// },
/// ],
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "An example multi-Region primary key",
/// MultiRegion = true,
/// EnableKeyRotation = true,
/// DeletionWindowInDays = 10,
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Id"] = "key-default-1",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Enable IAM User Permissions",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
/// },
/// ["Action"] = "kms:*",
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow administration of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:user/Alice",
/// },
/// ["Action"] = new[]
/// {
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// ["Resource"] = "*",
/// },
/// new Dictionary<string, object?>
/// {
/// ["Sid"] = "Allow use of the key",
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["AWS"] = $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:user/Bob",
/// },
/// ["Action"] = new[]
/// {
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// },
/// ["Resource"] = "*",
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
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Id":      "key-default-1",
/// "Statement": []interface{}{
/// map[string]interface{}{
/// "Sid":    "Enable IAM User Permissions",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// },
/// "Action":   "kms:*",
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow administration of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:user/Alice", current.AccountId),
/// },
/// "Action": []string{
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion",
/// },
/// "Resource": "*",
/// },
/// map[string]interface{}{
/// "Sid":    "Allow use of the key",
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "AWS": fmt.Sprintf("arn:aws:iam::%v:user/Bob", current.AccountId),
/// },
/// "Action": []string{
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext",
/// },
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("An example multi-Region primary key"),
/// MultiRegion:          pulumi.Bool(true),
/// EnableKeyRotation:    pulumi.Bool(true),
/// DeletionWindowInDays: pulumi.Int(10),
/// Policy:               pulumi.String(json0),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("An example multi-Region primary key")
/// .multiRegion(true)
/// .enableKeyRotation(true)
/// .deletionWindowInDays(10)
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Id", "key-default-1"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Sid", "Enable IAM User Permissions"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:root", current.accountId()))
/// )),
/// jsonProperty("Action", "kms:*"),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow administration of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:user/Alice", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:ReplicateKey",
/// "kms:Create*",
/// "kms:Describe*",
/// "kms:Enable*",
/// "kms:List*",
/// "kms:Put*",
/// "kms:Update*",
/// "kms:Revoke*",
/// "kms:Disable*",
/// "kms:Get*",
/// "kms:Delete*",
/// "kms:ScheduleKeyDeletion",
/// "kms:CancelKeyDeletion"
/// )),
/// jsonProperty("Resource", "*")
/// ),
/// jsonObject(
/// jsonProperty("Sid", "Allow use of the key"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("AWS", String.format("arn:aws:iam::%s:user/Bob", current.accountId()))
/// )),
/// jsonProperty("Action", jsonArray(
/// "kms:DescribeKey",
/// "kms:Encrypt",
/// "kms:Decrypt",
/// "kms:ReEncrypt*",
/// "kms:GenerateDataKey",
/// "kms:GenerateDataKeyWithoutPlaintext"
/// )),
/// jsonProperty("Resource", "*")
/// )
/// ))
/// )))
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
/// description: An example multi-Region primary key
/// multiRegion: true
/// enableKeyRotation: true
/// deletionWindowInDays: 10
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Id: key-default-1
/// Statement:
/// - Sid: Enable IAM User Permissions
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:root
/// Action: kms:*
/// Resource: '*'
/// - Sid: Allow administration of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:user/Alice
/// Action:
/// - kms:ReplicateKey
/// - kms:Create*
/// - kms:Describe*
/// - kms:Enable*
/// - kms:List*
/// - kms:Put*
/// - kms:Update*
/// - kms:Revoke*
/// - kms:Disable*
/// - kms:Get*
/// - kms:Delete*
/// - kms:ScheduleKeyDeletion
/// - kms:CancelKeyDeletion
/// Resource: '*'
/// - Sid: Allow use of the key
/// Effect: Allow
/// Principal:
/// AWS: arn:aws:iam::${current.accountId}:user/Bob
/// Action:
/// - kms:DescribeKey
/// - kms:Encrypt
/// - kms:Decrypt
/// - kms:ReEncrypt*
/// - kms:GenerateDataKey
/// - kms:GenerateDataKeyWithoutPlaintext
/// Resource: '*'
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
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the KMS key.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import KMS Keys using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:kms/key:Key a 1234abcd-12ab-34cd-56ef-1234567890ab
/// ```
class Key extends CustomResource {
  /// The Amazon Resource Name (ARN) of the key.
  late final Output<String> arn;

  /// A flag to indicate whether to bypass the key policy lockout safety check.
  /// Setting this value to true increases the risk that the KMS key becomes unmanageable. Do not set this value to true indiscriminately.
  /// For more information, refer to the scenario in the [Default Key Policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam) section in the _AWS Key Management Service Developer Guide_.
  /// The default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> bypassPolicyLockoutSafetyCheck;

  /// ID of the KMS [Custom Key Store](https://docs.aws.amazon.com/kms/latest/developerguide/create-cmk-keystore.html) where the key will be stored instead of KMS (eg CloudHSM).
  late final Output<String?> customKeyStoreId;

  /// Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports.
  /// Valid values: `SYMMETRIC_DEFAULT`, `RSA_2048`, `RSA_3072`, `RSA_4096`, `HMAC_224`, `HMAC_256`, `HMAC_384`, `HMAC_512`, `ECC_NIST_P256`, `ECC_NIST_P384`, `ECC_NIST_P521`, `ECC_SECG_P256K1`, `ML_DSA_44`, `ML_DSA_65`, `ML_DSA_87`, `SM2` (China Regions only), or `ECC_NIST_EDWARDS25519`. Defaults to `SYMMETRIC_DEFAULT`. For help with choosing a key spec, see the [AWS KMS Developer Guide](https://docs.aws.amazon.com/kms/latest/developerguide/symm-asymm-choose.html).
  late final Output<String?> customerMasterKeySpec;

  /// The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key.
  /// If you specify a value, it must be between <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span> and <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>, inclusive. If you do not specify a value, it defaults to <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>.
  /// If the KMS key is a multi-Region primary key with replicas, the waiting period begins when the last of its replica keys is deleted. Otherwise, the waiting period begins immediately.
  late final Output<int?> deletionWindowInDays;

  /// The description of the key as viewed in AWS console.
  late final Output<String> description;

  /// Specifies whether [key rotation](http://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html) is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableKeyRotation;

  /// Specifies whether the key is enabled. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> isEnabled;

  /// The globally unique identifier for the key.
  late final Output<String> keyId;

  /// Specifies the intended use of the key. Valid values: `ENCRYPT_DECRYPT`, `SIGN_VERIFY`, or `GENERATE_VERIFY_MAC`.
  /// Defaults to `ENCRYPT_DECRYPT`.
  late final Output<String?> keyUsage;

  /// Indicates whether the KMS key is a multi-Region (<span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>) or regional (<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>) key. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> multiRegion;

  /// A valid policy JSON document. Although this is a key policy, not an IAM policy, an <span pulumi-lang-nodejs="`aws.iam.getPolicyDocument`" pulumi-lang-dotnet="`aws.iam.getPolicyDocument`" pulumi-lang-go="`iam.getPolicyDocument`" pulumi-lang-python="`iam_get_policy_document`" pulumi-lang-yaml="`aws.iam.getPolicyDocument`" pulumi-lang-java="`aws.iam.getPolicyDocument`">`aws.iam.getPolicyDocument`</span>, in the form that designates a principal, can be used.
  ///
  /// > **NOTE:** Note: All KMS keys must have a key policy. If a key policy is not specified, AWS gives the KMS key a [default key policy](https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default) that gives all principals in the owning account unlimited access to all KMS operations for the key. This default key policy effectively delegates all access control to IAM policies and KMS grants.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Custom period of time between each rotation date. Must be a number between 90 and 2560 (inclusive).
  late final Output<int> rotationPeriodInDays;

  /// A map of tags to assign to the object. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifies the external key that serves as key material for the KMS key in an external key store.
  late final Output<String?> xksKeyId;

  Key(
    String name, {
    KeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:kms/key:Key',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bypassPolicyLockoutSafetyCheck =
        registerOutput<bool?>('bypassPolicyLockoutSafetyCheck');
    this.customKeyStoreId = registerOutput<String?>('customKeyStoreId');
    this.customerMasterKeySpec =
        registerOutput<String?>('customerMasterKeySpec');
    this.deletionWindowInDays = registerOutput<int?>('deletionWindowInDays');
    this.description = registerOutput<String>('description');
    this.enableKeyRotation = registerOutput<bool?>('enableKeyRotation');
    this.isEnabled = registerOutput<bool?>('isEnabled');
    this.keyId = registerOutput<String>('keyId');
    this.keyUsage = registerOutput<String?>('keyUsage');
    this.multiRegion = registerOutput<bool>('multiRegion');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.rotationPeriodInDays = registerOutput<int>('rotationPeriodInDays');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.xksKeyId = registerOutput<String?>('xksKeyId');
  }
}
