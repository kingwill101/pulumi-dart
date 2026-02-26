import 'package:pulumi/pulumi.dart';
import 'policy_args5.dart';

/// Provides an IAM policy.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span>. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const policy = new aws.iam.Policy("policy", {
/// name: "test_policy",
/// path: "/",
/// description: "My test policy",
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: ["ec2:Describe*"],
/// Effect: "Allow",
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
/// policy = aws.iam.Policy("policy",
/// name="test_policy",
/// path="/",
/// description="My test policy",
/// policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": ["ec2:Describe*"],
/// "Effect": "Allow",
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
/// var policy = new Aws.Iam.Policy("policy", new()
/// {
/// Name = "test_policy",
/// Path = "/",
/// Description = "My test policy",
/// PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "ec2:Describe*",
/// },
/// ["Effect"] = "Allow",
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
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "ec2:Describe*",
/// },
/// "Effect":   "Allow",
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = iam.NewPolicy(ctx, "policy", &iam.PolicyArgs{
/// Name:        pulumi.String("test_policy"),
/// Path:        pulumi.String("/"),
/// Description: pulumi.String("My test policy"),
/// Policy:      pulumi.String(json0),
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
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
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
/// var policy = new Policy("policy", PolicyArgs.builder()
/// .name("test_policy")
/// .path("/")
/// .description("My test policy")
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", jsonArray("ec2:Describe*")),
/// jsonProperty("Effect", "Allow"),
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
/// policy:
/// type: aws:iam:Policy
/// properties:
/// name: test_policy
/// path: /
/// description: My test policy
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - ec2:Describe*
/// Effect: Allow
/// Resource: '*'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the IAM policy.
///
///
/// Using `pulumi import`, import IAM Policies using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/policy:Policy administrator arn:aws:iam::123456789012:policy/UsersManageOwnCredentials
/// ```
class Policy5 extends CustomResource {
  /// ARN assigned by AWS to this policy.
  late final Output<String> arn;

  /// Number of entities (users, groups, and roles) that the policy is attached to.
  late final Output<int> attachmentCount;

  /// Number of ms to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads.
  late final Output<int?> delayAfterPolicyCreationInMs;

  /// Description of the IAM policy.
  late final Output<String?> description;

  /// Name of the policy. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Path in which to create the policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  late final Output<String?> path;

  /// Policy document. This is a JSON formatted string. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide
  late final Output<String> policy;

  /// Policy's ID.
  late final Output<String> policyId;

  /// Map of resource tags for the IAM Policy. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Policy5(
    String name, {
    PolicyArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.attachmentCount = Output.createUnknown<int>();
    this.delayAfterPolicyCreationInMs = Output.createUnknown<int?>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.path = Output.createUnknown<String?>();
    this.policy = Output.createUnknown<String>();
    this.policyId = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
