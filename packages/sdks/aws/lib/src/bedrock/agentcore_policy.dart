import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_policy_args.dart';
import 'agentcore_policy_definition.dart';
import 'agentcore_policy_state.dart';
import 'agentcore_policy_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Policy. A Policy attaches Cedar authorization rules to a Policy Engine, which evaluates them at runtime to control agent access to resources.
///
/// ## Example Usage
///
/// ### Cedar Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcorePolicy("example", {
///     name: "example_policy",
///     policyEngineId: exampleAwsBedrockagentcorePolicyEngine.policyEngineId,
///     description: "Allow read access to example resources",
///     definition: {
///         cedar: {
///             statement: "permit(principal, action == Action::\\\"Read\\\", resource);\n",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcorePolicy("example",
///     name="example_policy",
///     policy_engine_id=example_aws_bedrockagentcore_policy_engine["policyEngineId"],
///     description="Allow read access to example resources",
///     definition={
///         "cedar": {
///             "statement": "permit(principal, action == Action::\\\"Read\\\", resource);\n",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcorePolicy("example", new()
///     {
///         Name = "example_policy",
///         PolicyEngineId = exampleAwsBedrockagentcorePolicyEngine.PolicyEngineId,
///         Description = "Allow read access to example resources",
///         Definition = new Aws.Bedrock.Inputs.AgentcorePolicyDefinitionArgs
///         {
///             Cedar = new Aws.Bedrock.Inputs.AgentcorePolicyDefinitionCedarArgs
///             {
///                 Statement = @"permit(principal, action == Action::\""Read\"", resource);
/// ",
///             },
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
/// 		_, err := bedrock.NewAgentcorePolicy(ctx, "example", &bedrock.AgentcorePolicyArgs{
/// 			Name:           pulumi.String("example_policy"),
/// 			PolicyEngineId: pulumi.Any(exampleAwsBedrockagentcorePolicyEngine.PolicyEngineId),
/// 			Description:    pulumi.String("Allow read access to example resources"),
/// 			Definition: &bedrock.AgentcorePolicyDefinitionArgs{
/// 				Cedar: &bedrock.AgentcorePolicyDefinitionCedarArgs{
/// 					Statement: pulumi.String("permit(principal, action == Action::\\\"Read\\\", resource);\n"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcorepolicy" "example" {
///   name             = "example_policy"
///   policy_engine_id = exampleAwsBedrockagentcorePolicyEngine.policyEngineId
///   description      = "Allow read access to example resources"
///   definition = {
///     cedar = {
///       statement = "permit(principal, action == Action::\\\"Read\\\", resource);\n"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcorePolicy;
/// import com.pulumi.aws.bedrock.AgentcorePolicyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcorePolicyDefinitionArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcorePolicyDefinitionCedarArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new AgentcorePolicy("example", AgentcorePolicyArgs.builder()
///             .name("example_policy")
///             .policyEngineId(exampleAwsBedrockagentcorePolicyEngine.policyEngineId())
///             .description("Allow read access to example resources")
///             .definition(AgentcorePolicyDefinitionArgs.builder()
///                 .cedar(AgentcorePolicyDefinitionCedarArgs.builder()
///                     .statement("""
/// permit(principal, action == Action::\"Read\", resource);
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcorePolicy
///     properties:
///       name: example_policy
///       policyEngineId: ${exampleAwsBedrockagentcorePolicyEngine.policyEngineId}
///       description: Allow read access to example resources
///       definition:
///         cedar:
///           statement: |
///             permit(principal, action == Action::\"Read\", resource);
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `policyEngineId` (String) ID of the policy engine.
/// - `policyId` (String) ID of the policy.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Bedrock AgentCore Policies using the `policyEngineId` and `policyId` separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcorePolicy:AgentcorePolicy example PolicyEngine_i2fo6-dyqwrzl954,policy_ar2c3-o_rospxr2j
/// ```
class AgentcorePolicy extends pulumi.CustomResource {
  /// Policy definition. See `definition` Block for details.
  late final pulumi.Output<AgentcorePolicyDefinition> definition;
  /// Description of the policy.
  late final pulumi.Output<String?> description;
  /// Name of the policy. Must be 1-48 characters and match the pattern `^[A-Za-z][A-Za-z0-9_]*$`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// ARN of the Policy.
  late final pulumi.Output<String> policyArn;
  /// Identifier of the Policy Engine that owns this policy. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> policyEngineId;
  /// Identifier of the Policy.
  late final pulumi.Output<String> policyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<AgentcorePolicyTimeouts?> timeouts;
  /// Controls whether validation findings cause policy creation or update to fail. Valid values: `FAIL_ON_ANY_FINDINGS`, `IGNORE_ALL_FINDINGS`. Defaults to `FAIL_ON_ANY_FINDINGS`.
  late final pulumi.Output<String?> validationMode;

  /// Creates a new [AgentcorePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcorePolicy]. {@macro pulumi_bedrock_agentcore_policy_agentcore_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcorePolicy(
    String name, {
    AgentcorePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcorePolicy:AgentcorePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definition = registerOutput<AgentcorePolicyDefinition>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcorePolicyDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    policyArn = registerOutput<String>('policyArn');
    policyEngineId = registerOutput<String>('policyEngineId');
    policyId = registerOutput<String>('policyId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<AgentcorePolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcorePolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationMode = registerOutput<String?>('validationMode');
  }

  /// Gets an existing [AgentcorePolicy] resource's state with the given [name] and [id].
  static AgentcorePolicy get(
    String name,
    pulumi.Input<String> id, {
    AgentcorePolicyState? state,
  }) {
    return AgentcorePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcorePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcorePolicy:AgentcorePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definition = registerOutput<AgentcorePolicyDefinition>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcorePolicyDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    policyArn = registerOutput<String>('policyArn');
    policyEngineId = registerOutput<String>('policyEngineId');
    policyId = registerOutput<String>('policyId');
    region = registerOutput<String>('region');
    timeouts = registerOutput<AgentcorePolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcorePolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationMode = registerOutput<String?>('validationMode');
  }
}
