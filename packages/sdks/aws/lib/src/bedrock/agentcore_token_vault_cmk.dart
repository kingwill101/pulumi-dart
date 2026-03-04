import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_token_vault_cmk_args.dart';
import 'agentcore_token_vault_cmk_kms_configuration.dart';
import 'agentcore_token_vault_cmk_state.dart';

/// Manages the AWS KMS customer master key (CMK) for a token vault.
///
/// &gt; Deletion of this resource will not modify the CMK, only remove the resource from state.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcoreTokenVaultCmk("example", {kmsConfiguration: {
///     keyType: "CustomerManagedKey",
///     kmsKeyArn: exampleAwsKmsKey.arn,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcoreTokenVaultCmk("example", kms_configuration={
///     "key_type": "CustomerManagedKey",
///     "kms_key_arn": example_aws_kms_key["arn"],
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
///     var example = new Aws.Bedrock.AgentcoreTokenVaultCmk("example", new()
///     {
///         KmsConfiguration = new Aws.Bedrock.Inputs.AgentcoreTokenVaultCmkKmsConfigurationArgs
///         {
///             KeyType = "CustomerManagedKey",
///             KmsKeyArn = exampleAwsKmsKey.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreTokenVaultCmk(ctx, "example", &bedrock.AgentcoreTokenVaultCmkArgs{
/// 			KmsConfiguration: &bedrock.AgentcoreTokenVaultCmkKmsConfigurationArgs{
/// 				KeyType:   pulumi.String("CustomerManagedKey"),
/// 				KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AgentcoreTokenVaultCmk("example", AgentcoreTokenVaultCmkArgs.builder()
///             .kmsConfiguration(AgentcoreTokenVaultCmkKmsConfigurationArgs.builder()
///                 .keyType("CustomerManagedKey")
///                 .kmsKeyArn(exampleAwsKmsKey.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcoreTokenVaultCmk
///     properties:
///       kmsConfiguration:
///         keyType: CustomerManagedKey
///         kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import token vault CMKs using the token vault ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreTokenVaultCmk:AgentcoreTokenVaultCmk example "default"
/// ```
class AgentcoreTokenVaultCmk extends pulumi.CustomResource {
  /// KMS configuration for the token vault. See `kms_configuration` below.
  late final pulumi.Output<AgentcoreTokenVaultCmkKmsConfiguration>
  kmsConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Token vault ID. Defaults to `default`.
  late final pulumi.Output<String> tokenVaultId;

  /// Creates a new [AgentcoreTokenVaultCmk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreTokenVaultCmk]. {@macro pulumi_bedrock_agentcore_token_vault_cmk_agentcore_token_vault_cmk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreTokenVaultCmk(
    String name, {
    AgentcoreTokenVaultCmkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreTokenVaultCmk:AgentcoreTokenVaultCmk',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    kmsConfiguration = registerOutput<AgentcoreTokenVaultCmkKmsConfiguration>(
      'kmsConfiguration',
    );
    region = registerOutput<String>('region');
    tokenVaultId = registerOutput<String>('tokenVaultId');
  }

  /// Gets an existing [AgentcoreTokenVaultCmk] resource's state with the given [name] and [id].
  static AgentcoreTokenVaultCmk get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreTokenVaultCmkState? state,
  }) {
    return AgentcoreTokenVaultCmk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreTokenVaultCmk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/agentcoreTokenVaultCmk:AgentcoreTokenVaultCmk',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    kmsConfiguration = registerOutput<AgentcoreTokenVaultCmkKmsConfiguration>(
      'kmsConfiguration',
    );
    region = registerOutput<String>('region');
    tokenVaultId = registerOutput<String>('tokenVaultId');
  }
}
