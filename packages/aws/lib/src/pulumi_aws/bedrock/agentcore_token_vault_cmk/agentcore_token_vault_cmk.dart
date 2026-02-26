import 'package:pulumi/pulumi.dart';
import '../agentcore_token_vault_cmk_kms_configuration/agentcore_token_vault_cmk_kms_configuration.dart';
import 'agentcore_token_vault_cmk_args.dart';

/// Manages the AWS KMS customer master key (CMK) for a token vault.
///
/// > Deletion of this resource will not modify the CMK, only remove the resource from state.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreTokenVaultCmk("example", {kmsConfiguration: {
/// keyType: "CustomerManagedKey",
/// kmsKeyArn: exampleAwsKmsKey.arn,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreTokenVaultCmk("example", kms_configuration={
/// "key_type": "CustomerManagedKey",
/// "kms_key_arn": example_aws_kms_key["arn"],
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
/// var example = new Aws.Bedrock.AgentcoreTokenVaultCmk("example", new()
/// {
/// KmsConfiguration = new Aws.Bedrock.Inputs.AgentcoreTokenVaultCmkKmsConfigurationArgs
/// {
/// KeyType = "CustomerManagedKey",
/// KmsKeyArn = exampleAwsKmsKey.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bedrock.NewAgentcoreTokenVaultCmk(ctx, "example", &bedrock.AgentcoreTokenVaultCmkArgs{
/// KmsConfiguration: &bedrock.AgentcoreTokenVaultCmkKmsConfigurationArgs{
/// KeyType:   pulumi.String("CustomerManagedKey"),
/// KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// import com.pulumi.aws.bedrock.AgentcoreTokenVaultCmk;
/// import com.pulumi.aws.bedrock.AgentcoreTokenVaultCmkArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreTokenVaultCmkKmsConfigurationArgs;
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
/// var example = new AgentcoreTokenVaultCmk("example", AgentcoreTokenVaultCmkArgs.builder()
/// .kmsConfiguration(AgentcoreTokenVaultCmkKmsConfigurationArgs.builder()
/// .keyType("CustomerManagedKey")
/// .kmsKeyArn(exampleAwsKmsKey.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentcoreTokenVaultCmk
/// properties:
/// kmsConfiguration:
/// keyType: CustomerManagedKey
/// kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import token vault CMKs using the token vault ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreTokenVaultCmk:AgentcoreTokenVaultCmk example "default"
/// ```
class AgentcoreTokenVaultCmk extends CustomResource {
  /// KMS configuration for the token vault. See <span pulumi-lang-nodejs="`kmsConfiguration`" pulumi-lang-dotnet="`KmsConfiguration`" pulumi-lang-go="`kmsConfiguration`" pulumi-lang-python="`kms_configuration`" pulumi-lang-yaml="`kmsConfiguration`" pulumi-lang-java="`kmsConfiguration`">`kms_configuration`</span> below.
  late final Output<AgentcoreTokenVaultCmkKmsConfiguration> kmsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Token vault ID. Defaults to <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  late final Output<String> tokenVaultId;

  AgentcoreTokenVaultCmk(
    String name, {
    AgentcoreTokenVaultCmkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreTokenVaultCmk:AgentcoreTokenVaultCmk',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.kmsConfiguration =
        registerOutput<AgentcoreTokenVaultCmkKmsConfiguration>(
            'kmsConfiguration');
    this.region = registerOutput<String>('region');
    this.tokenVaultId = registerOutput<String>('tokenVaultId');
  }
}
