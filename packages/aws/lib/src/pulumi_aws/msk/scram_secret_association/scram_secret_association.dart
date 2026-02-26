import 'package:pulumi/pulumi.dart';
import 'scram_secret_association_args.dart';

/// Associates SCRAM secrets stored in the Secrets Manager service with a Managed Streaming for Kafka (MSK) cluster.
///
/// !> This resource takes exclusive ownership over SCRAM secrets associated with a cluster. This includes removal of SCRAM secrets which are not explicitly configured. To prevent persistent drift, ensure any <span pulumi-lang-nodejs="`aws.msk.SingleScramSecretAssociation`" pulumi-lang-dotnet="`aws.msk.SingleScramSecretAssociation`" pulumi-lang-go="`msk.SingleScramSecretAssociation`" pulumi-lang-python="`msk.SingleScramSecretAssociation`" pulumi-lang-yaml="`aws.msk.SingleScramSecretAssociation`" pulumi-lang-java="`aws.msk.SingleScramSecretAssociation`">`aws.msk.SingleScramSecretAssociation`</span> resources managed alongside this resource are included in the <span pulumi-lang-nodejs="`secretArnList`" pulumi-lang-dotnet="`SecretArnList`" pulumi-lang-go="`secretArnList`" pulumi-lang-python="`secret_arn_list`" pulumi-lang-yaml="`secretArnList`" pulumi-lang-java="`secretArnList`">`secret_arn_list`</span> argument.
///
/// > **Note:** The following assumes the MSK cluster has SASL/SCRAM authentication enabled. See below for example usage or refer to the [Username/Password Authentication](https://docs.aws.amazon.com/msk/latest/developerguide/msk-password.html) section of the MSK Developer Guide for more details.
///
/// To set up username and password authentication for a cluster, create an <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> resource and associate
/// a username and password with the secret with an <span pulumi-lang-nodejs="`aws.secretsmanager.SecretVersion`" pulumi-lang-dotnet="`aws.secretsmanager.SecretVersion`" pulumi-lang-go="`secretsmanager.SecretVersion`" pulumi-lang-python="`secretsmanager.SecretVersion`" pulumi-lang-yaml="`aws.secretsmanager.SecretVersion`" pulumi-lang-java="`aws.secretsmanager.SecretVersion`">`aws.secretsmanager.SecretVersion`</span> resource. When creating a secret for the cluster,
/// the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> must have the prefix `AmazonMSK_` and you must either use an existing custom AWS KMS key or create a new
/// custom AWS KMS key for your secret with the <span pulumi-lang-nodejs="`aws.kms.Key`" pulumi-lang-dotnet="`aws.kms.Key`" pulumi-lang-go="`kms.Key`" pulumi-lang-python="`kms.Key`" pulumi-lang-yaml="`aws.kms.Key`" pulumi-lang-java="`aws.kms.Key`">`aws.kms.Key`</span> resource. It is important to note that a policy is required for the <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span>
/// resource in order for Kafka to be able to read it. This policy is attached automatically when the <span pulumi-lang-nodejs="`aws.msk.ScramSecretAssociation`" pulumi-lang-dotnet="`aws.msk.ScramSecretAssociation`" pulumi-lang-go="`msk.ScramSecretAssociation`" pulumi-lang-python="`msk.ScramSecretAssociation`" pulumi-lang-yaml="`aws.msk.ScramSecretAssociation`" pulumi-lang-java="`aws.msk.ScramSecretAssociation`">`aws.msk.ScramSecretAssociation`</span> is used,
/// however, this policy will not be in the state and as such, will present a diff on plan/apply. For that reason, you must use the <span pulumi-lang-nodejs="`aws.secretsmanager.SecretPolicy`" pulumi-lang-dotnet="`aws.secretsmanager.SecretPolicy`" pulumi-lang-go="`secretsmanager.SecretPolicy`" pulumi-lang-python="`secretsmanager.SecretPolicy`" pulumi-lang-yaml="`aws.secretsmanager.SecretPolicy`" pulumi-lang-java="`aws.secretsmanager.SecretPolicy`">`aws.secretsmanager.SecretPolicy`</span>
/// resource](/docs/providers/aws/r/secretsmanager_secret_policy.html) as shown below in order to ensure that the state is in a clean state after the creation of secret and the association to the cluster.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleCluster = new aws.msk.Cluster("example", {
/// clusterName: "example",
/// clientAuthentication: {
/// sasl: {
/// scram: true,
/// },
/// },
/// });
/// const exampleKey = new aws.kms.Key("example", {description: "Example Key for MSK Cluster Scram Secret Association"});
/// const exampleSecret = new aws.secretsmanager.Secret("example", {
/// name: "AmazonMSK_example",
/// kmsKeyId: exampleKey.keyId,
/// });
/// const exampleSecretVersion = new aws.secretsmanager.SecretVersion("example", {
/// secretId: exampleSecret.id,
/// secretString: JSON.stringify({
/// username: "user",
/// password: "pass",
/// }),
/// });
/// const exampleScramSecretAssociation = new aws.msk.ScramSecretAssociation("example", {
/// clusterArn: exampleCluster.arn,
/// secretArnLists: [exampleSecret.arn],
/// }, {
/// dependsOn: [exampleSecretVersion],
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// sid: "AWSKafkaResourcePolicy",
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["kafka.amazonaws.com"],
/// }],
/// actions: ["secretsmanager:getSecretValue"],
/// resources: [exampleSecret.arn],
/// }],
/// });
/// const exampleSecretPolicy = new aws.secretsmanager.SecretPolicy("example", {
/// secretArn: exampleSecret.arn,
/// policy: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example_cluster = aws.msk.Cluster("example",
/// cluster_name="example",
/// client_authentication={
/// "sasl": {
/// "scram": True,
/// },
/// })
/// example_key = aws.kms.Key("example", description="Example Key for MSK Cluster Scram Secret Association")
/// example_secret = aws.secretsmanager.Secret("example",
/// name="AmazonMSK_example",
/// kms_key_id=example_key.key_id)
/// example_secret_version = aws.secretsmanager.SecretVersion("example",
/// secret_id=example_secret.id,
/// secret_string=json.dumps({
/// "username": "user",
/// "password": "pass",
/// }))
/// example_scram_secret_association = aws.msk.ScramSecretAssociation("example",
/// cluster_arn=example_cluster.arn,
/// secret_arn_lists=[example_secret.arn],
/// opts = pulumi.ResourceOptions(depends_on=[example_secret_version]))
/// example = aws.iam.get_policy_document_output(statements=[{
/// "sid": "AWSKafkaResourcePolicy",
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["kafka.amazonaws.com"],
/// }],
/// "actions": ["secretsmanager:getSecretValue"],
/// "resources": [example_secret.arn],
/// }])
/// example_secret_policy = aws.secretsmanager.SecretPolicy("example",
/// secret_arn=example_secret.arn,
/// policy=example.json)
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
/// var exampleCluster = new Aws.Msk.Cluster("example", new()
/// {
/// ClusterName = "example",
/// ClientAuthentication = new Aws.Msk.Inputs.ClusterClientAuthenticationArgs
/// {
/// Sasl = new Aws.Msk.Inputs.ClusterClientAuthenticationSaslArgs
/// {
/// Scram = true,
/// },
/// },
/// });
///
/// var exampleKey = new Aws.Kms.Key("example", new()
/// {
/// Description = "Example Key for MSK Cluster Scram Secret Association",
/// });
///
/// var exampleSecret = new Aws.SecretsManager.Secret("example", new()
/// {
/// Name = "AmazonMSK_example",
/// KmsKeyId = exampleKey.KeyId,
/// });
///
/// var exampleSecretVersion = new Aws.SecretsManager.SecretVersion("example", new()
/// {
/// SecretId = exampleSecret.Id,
/// SecretString = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["username"] = "user",
/// ["password"] = "pass",
/// }),
/// });
///
/// var exampleScramSecretAssociation = new Aws.Msk.ScramSecretAssociation("example", new()
/// {
/// ClusterArn = exampleCluster.Arn,
/// SecretArnLists = new[]
/// {
/// exampleSecret.Arn,
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleSecretVersion,
/// },
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "AWSKafkaResourcePolicy",
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "kafka.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "secretsmanager:getSecretValue",
/// },
/// Resources = new[]
/// {
/// exampleSecret.Arn,
/// },
/// },
/// },
/// });
///
/// var exampleSecretPolicy = new Aws.SecretsManager.SecretPolicy("example", new()
/// {
/// SecretArn = exampleSecret.Arn,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleCluster, err := msk.NewCluster(ctx, "example", &msk.ClusterArgs{
/// ClusterName: pulumi.String("example"),
/// ClientAuthentication: &msk.ClusterClientAuthenticationArgs{
/// Sasl: &msk.ClusterClientAuthenticationSaslArgs{
/// Scram: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description: pulumi.String("Example Key for MSK Cluster Scram Secret Association"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleSecret, err := secretsmanager.NewSecret(ctx, "example", &secretsmanager.SecretArgs{
/// Name:     pulumi.String("AmazonMSK_example"),
/// KmsKeyId: exampleKey.KeyId,
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "username": "user",
/// "password": "pass",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// exampleSecretVersion, err := secretsmanager.NewSecretVersion(ctx, "example", &secretsmanager.SecretVersionArgs{
/// SecretId:     exampleSecret.ID(),
/// SecretString: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = msk.NewScramSecretAssociation(ctx, "example", &msk.ScramSecretAssociationArgs{
/// ClusterArn: exampleCluster.Arn,
/// SecretArnLists: pulumi.StringArray{
/// exampleSecret.Arn,
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleSecretVersion,
/// }))
/// if err != nil {
/// return err
/// }
/// example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Sid:    pulumi.String("AWSKafkaResourcePolicy"),
/// Effect: pulumi.String("Allow"),
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("kafka.amazonaws.com"),
/// },
/// },
/// },
/// Actions: pulumi.StringArray{
/// pulumi.String("secretsmanager:getSecretValue"),
/// },
/// Resources: pulumi.StringArray{
/// exampleSecret.Arn,
/// },
/// },
/// },
/// }, nil)
/// _, err = secretsmanager.NewSecretPolicy(ctx, "example", &secretsmanager.SecretPolicyArgs{
/// SecretArn: exampleSecret.Arn,
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
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
/// import com.pulumi.aws.msk.Cluster;
/// import com.pulumi.aws.msk.ClusterArgs;
/// import com.pulumi.aws.msk.inputs.ClusterClientAuthenticationArgs;
/// import com.pulumi.aws.msk.inputs.ClusterClientAuthenticationSaslArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.SecretVersion;
/// import com.pulumi.aws.secretsmanager.SecretVersionArgs;
/// import com.pulumi.aws.msk.ScramSecretAssociation;
/// import com.pulumi.aws.msk.ScramSecretAssociationArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.secretsmanager.SecretPolicy;
/// import com.pulumi.aws.secretsmanager.SecretPolicyArgs;
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
/// var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
/// .clusterName("example")
/// .clientAuthentication(ClusterClientAuthenticationArgs.builder()
/// .sasl(ClusterClientAuthenticationSaslArgs.builder()
/// .scram(true)
/// .build())
/// .build())
/// .build());
///
/// var exampleKey = new Key("exampleKey", KeyArgs.builder()
/// .description("Example Key for MSK Cluster Scram Secret Association")
/// .build());
///
/// var exampleSecret = new Secret("exampleSecret", SecretArgs.builder()
/// .name("AmazonMSK_example")
/// .kmsKeyId(exampleKey.keyId())
/// .build());
///
/// var exampleSecretVersion = new SecretVersion("exampleSecretVersion", SecretVersionArgs.builder()
/// .secretId(exampleSecret.id())
/// .secretString(serializeJson(
/// jsonObject(
/// jsonProperty("username", "user"),
/// jsonProperty("password", "pass")
/// )))
/// .build());
///
/// var exampleScramSecretAssociation = new ScramSecretAssociation("exampleScramSecretAssociation", ScramSecretAssociationArgs.builder()
/// .clusterArn(exampleCluster.arn())
/// .secretArnLists(exampleSecret.arn())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleSecretVersion)
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("AWSKafkaResourcePolicy")
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("kafka.amazonaws.com")
/// .build())
/// .actions("secretsmanager:getSecretValue")
/// .resources(exampleSecret.arn())
/// .build())
/// .build());
///
/// var exampleSecretPolicy = new SecretPolicy("exampleSecretPolicy", SecretPolicyArgs.builder()
/// .secretArn(exampleSecret.arn())
/// .policy(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleScramSecretAssociation:
/// type: aws:msk:ScramSecretAssociation
/// name: example
/// properties:
/// clusterArn: ${exampleCluster.arn}
/// secretArnLists:
/// - ${exampleSecret.arn}
/// options:
/// dependsOn:
/// - ${exampleSecretVersion}
/// exampleCluster:
/// type: aws:msk:Cluster
/// name: example
/// properties:
/// clusterName: example
/// clientAuthentication:
/// sasl:
/// scram: true
/// exampleSecret:
/// type: aws:secretsmanager:Secret
/// name: example
/// properties:
/// name: AmazonMSK_example
/// kmsKeyId: ${exampleKey.keyId}
/// exampleKey:
/// type: aws:kms:Key
/// name: example
/// properties:
/// description: Example Key for MSK Cluster Scram Secret Association
/// exampleSecretVersion:
/// type: aws:secretsmanager:SecretVersion
/// name: example
/// properties:
/// secretId: ${exampleSecret.id}
/// secretString:
/// fn::toJSON:
/// username: user
/// password: pass
/// exampleSecretPolicy:
/// type: aws:secretsmanager:SecretPolicy
/// name: example
/// properties:
/// secretArn: ${exampleSecret.arn}
/// policy: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: AWSKafkaResourcePolicy
/// effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - kafka.amazonaws.com
/// actions:
/// - secretsmanager:getSecretValue
/// resources:
/// - ${exampleSecret.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import MSK SCRAM Secret Associations using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:msk/scramSecretAssociation:ScramSecretAssociation example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class ScramSecretAssociation extends CustomResource {
  /// Amazon Resource Name (ARN) of the MSK cluster.
  late final Output<String> clusterArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of AWS Secrets Manager secret ARNs.
  late final Output<List<String>> secretArnLists;

  ScramSecretAssociation(
    String name, {
    ScramSecretAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/scramSecretAssociation:ScramSecretAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secretArnLists = Output.createUnknown<List<String>>();
  }
}
