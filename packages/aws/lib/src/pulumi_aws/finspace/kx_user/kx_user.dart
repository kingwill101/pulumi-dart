import 'package:pulumi/pulumi.dart';
import 'kx_user_args.dart';

/// Resource for managing an AWS FinSpace Kx User.
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
/// const example = new aws.kms.Key("example", {
/// description: "Example KMS Key",
/// deletionWindowInDays: 7,
/// });
/// const exampleKxEnvironment = new aws.finspace.KxEnvironment("example", {
/// name: "my-tf-kx-environment",
/// kmsKeyId: example.arn,
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example-role",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: "sts:AssumeRole",
/// Effect: "Allow",
/// Sid: "",
/// Principal: {
/// Service: "ec2.amazonaws.com",
/// },
/// }],
/// }),
/// });
/// const exampleKxUser = new aws.finspace.KxUser("example", {
/// name: "my-tf-kx-user",
/// environmentId: exampleKxEnvironment.id,
/// iamRole: exampleRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
/// description="Example KMS Key",
/// deletion_window_in_days=7)
/// example_kx_environment = aws.finspace.KxEnvironment("example",
/// name="my-tf-kx-environment",
/// kms_key_id=example.arn)
/// example_role = aws.iam.Role("example",
/// name="example-role",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid": "",
/// "Principal": {
/// "Service": "ec2.amazonaws.com",
/// },
/// }],
/// }))
/// example_kx_user = aws.finspace.KxUser("example",
/// name="my-tf-kx-user",
/// environment_id=example_kx_environment.id,
/// iam_role=example_role.arn)
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
/// var example = new Aws.Kms.Key("example", new()
/// {
/// Description = "Example KMS Key",
/// DeletionWindowInDays = 7,
/// });
///
/// var exampleKxEnvironment = new Aws.FinSpace.KxEnvironment("example", new()
/// {
/// Name = "my-tf-kx-environment",
/// KmsKeyId = example.Arn,
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example-role",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = "sts:AssumeRole",
/// ["Effect"] = "Allow",
/// ["Sid"] = "",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "ec2.amazonaws.com",
/// },
/// },
/// },
/// }),
/// });
///
/// var exampleKxUser = new Aws.FinSpace.KxUser("example", new()
/// {
/// Name = "my-tf-kx-user",
/// EnvironmentId = exampleKxEnvironment.Id,
/// IamRole = exampleRole.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description:          pulumi.String("Example KMS Key"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// exampleKxEnvironment, err := finspace.NewKxEnvironment(ctx, "example", &finspace.KxEnvironmentArgs{
/// Name:     pulumi.String("my-tf-kx-environment"),
/// KmsKeyId: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": "sts:AssumeRole",
/// "Effect": "Allow",
/// "Sid":    "",
/// "Principal": map[string]interface{}{
/// "Service": "ec2.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example-role"),
/// AssumeRolePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = finspace.NewKxUser(ctx, "example", &finspace.KxUserArgs{
/// Name:          pulumi.String("my-tf-kx-user"),
/// EnvironmentId: exampleKxEnvironment.ID(),
/// IamRole:       exampleRole.Arn,
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
/// import com.pulumi.aws.finspace.KxEnvironment;
/// import com.pulumi.aws.finspace.KxEnvironmentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.finspace.KxUser;
/// import com.pulumi.aws.finspace.KxUserArgs;
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
/// var example = new Key("example", KeyArgs.builder()
/// .description("Example KMS Key")
/// .deletionWindowInDays(7)
/// .build());
///
/// var exampleKxEnvironment = new KxEnvironment("exampleKxEnvironment", KxEnvironmentArgs.builder()
/// .name("my-tf-kx-environment")
/// .kmsKeyId(example.arn())
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example-role")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", "sts:AssumeRole"),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Sid", ""),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "ec2.amazonaws.com")
/// ))
/// )))
/// )))
/// .build());
///
/// var exampleKxUser = new KxUser("exampleKxUser", KxUserArgs.builder()
/// .name("my-tf-kx-user")
/// .environmentId(exampleKxEnvironment.id())
/// .iamRole(exampleRole.arn())
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
/// description: Example KMS Key
/// deletionWindowInDays: 7
/// exampleKxEnvironment:
/// type: aws:finspace:KxEnvironment
/// name: example
/// properties:
/// name: my-tf-kx-environment
/// kmsKeyId: ${example.arn}
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example-role
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action: sts:AssumeRole
/// Effect: Allow
/// Sid: ""
/// Principal:
/// Service: ec2.amazonaws.com
/// exampleKxUser:
/// type: aws:finspace:KxUser
/// name: example
/// properties:
/// name: my-tf-kx-user
/// environmentId: ${exampleKxEnvironment.id}
/// iamRole: ${exampleRole.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx User using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> (environment ID and user name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxUser:KxUser example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-user
/// ```
class KxUser extends CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX user.
  late final Output<String> arn;

  /// Unique identifier for the KX environment.
  late final Output<String> environmentId;

  /// IAM role ARN to be associated with the user.
  ///
  /// The following arguments are optional:
  late final Output<String> iamRole;

  /// A unique identifier for the user.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  KxUser(
    String name, {
    KxUserArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxUser:KxUser',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.iamRole = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
