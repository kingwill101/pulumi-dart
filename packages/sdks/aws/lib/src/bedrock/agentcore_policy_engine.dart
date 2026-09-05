import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_policy_engine_args.dart';
import 'agentcore_policy_engine_state.dart';
import 'agentcore_policy_engine_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Policy Engine. A Policy Engine controls what actions and resources an agent runtime can use.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcorePolicyEngine("example", {name: "example_policy_engine"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcorePolicyEngine("example", name="example_policy_engine")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcorePolicyEngine("example", new()
///     {
///         Name = "example_policy_engine",
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
/// 		_, err := bedrock.NewAgentcorePolicyEngine(ctx, "example", &bedrock.AgentcorePolicyEngineArgs{
/// 			Name: pulumi.String("example_policy_engine"),
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
/// resource "aws_bedrock_agentcorepolicyengine" "example" {
///   name = "example_policy_engine"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcorePolicyEngine;
/// import com.pulumi.aws.bedrock.AgentcorePolicyEngineArgs;
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
///         var example = new AgentcorePolicyEngine("example", AgentcorePolicyEngineArgs.builder()
///             .name("example_policy_engine")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcorePolicyEngine
///     properties:
///       name: example_policy_engine
/// ```
///
///
/// ### With Description
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentcorePolicyEngine("example", {
///     name: "example_policy_engine",
///     description: "Policy engine for customer service agent",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentcorePolicyEngine("example",
///     name="example_policy_engine",
///     description="Policy engine for customer service agent")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentcorePolicyEngine("example", new()
///     {
///         Name = "example_policy_engine",
///         Description = "Policy engine for customer service agent",
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
/// 		_, err := bedrock.NewAgentcorePolicyEngine(ctx, "example", &bedrock.AgentcorePolicyEngineArgs{
/// 			Name:        pulumi.String("example_policy_engine"),
/// 			Description: pulumi.String("Policy engine for customer service agent"),
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
/// resource "aws_bedrock_agentcorepolicyengine" "example" {
///   name        = "example_policy_engine"
///   description = "Policy engine for customer service agent"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcorePolicyEngine;
/// import com.pulumi.aws.bedrock.AgentcorePolicyEngineArgs;
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
///         var example = new AgentcorePolicyEngine("example", AgentcorePolicyEngineArgs.builder()
///             .name("example_policy_engine")
///             .description("Policy engine for customer service agent")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentcorePolicyEngine
///     properties:
///       name: example_policy_engine
///       description: Policy engine for customer service agent
/// ```
///
///
/// ### With Custom Encryption
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "KMS key for Bedrock AgentCore Policy Engine",
///     deletionWindowInDays: 7,
/// });
/// const exampleAgentcorePolicyEngine = new aws.bedrock.AgentcorePolicyEngine("example", {
///     name: "example_policy_engine",
///     description: "Policy engine for customer service agent",
///     encryptionKeyArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="KMS key for Bedrock AgentCore Policy Engine",
///     deletion_window_in_days=7)
/// example_agentcore_policy_engine = aws.bedrock.AgentcorePolicyEngine("example",
///     name="example_policy_engine",
///     description="Policy engine for customer service agent",
///     encryption_key_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "KMS key for Bedrock AgentCore Policy Engine",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleAgentcorePolicyEngine = new Aws.Bedrock.AgentcorePolicyEngine("example", new()
///     {
///         Name = "example_policy_engine",
///         Description = "Policy engine for customer service agent",
///         EncryptionKeyArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("KMS key for Bedrock AgentCore Policy Engine"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentcorePolicyEngine(ctx, "example", &bedrock.AgentcorePolicyEngineArgs{
/// 			Name:             pulumi.String("example_policy_engine"),
/// 			Description:      pulumi.String("Policy engine for customer service agent"),
/// 			EncryptionKeyArn: example.Arn,
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
/// resource "aws_kms_key" "example" {
///   description             = "KMS key for Bedrock AgentCore Policy Engine"
///   deletion_window_in_days = 7
/// }
/// resource "aws_bedrock_agentcorepolicyengine" "example" {
///   name               = "example_policy_engine"
///   description        = "Policy engine for customer service agent"
///   encryption_key_arn = aws_kms_key.example.arn
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
/// import com.pulumi.aws.bedrock.AgentcorePolicyEngine;
/// import com.pulumi.aws.bedrock.AgentcorePolicyEngineArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("KMS key for Bedrock AgentCore Policy Engine")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleAgentcorePolicyEngine = new AgentcorePolicyEngine("exampleAgentcorePolicyEngine", AgentcorePolicyEngineArgs.builder()
///             .name("example_policy_engine")
///             .description("Policy engine for customer service agent")
///             .encryptionKeyArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: KMS key for Bedrock AgentCore Policy Engine
///       deletionWindowInDays: 7
///   exampleAgentcorePolicyEngine:
///     type: aws:bedrock:AgentcorePolicyEngine
///     name: example
///     properties:
///       name: example_policy_engine
///       description: Policy engine for customer service agent
///       encryptionKeyArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `policyEngineId` (String) Policy engine ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS account ID for this resource.
/// * `region` (String) AWS Region for this resource.
///
///
/// Using `pulumi import`, import a Bedrock AgentCore Policy Engine by policy engine ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcorePolicyEngine:AgentcorePolicyEngine example policy-engine-id-12345678
/// ```
class AgentcorePolicyEngine extends pulumi.CustomResource {
  /// Description of the policy engine.
  late final pulumi.Output<String?> description;
  /// ARN of the KMS key used to encrypt the policy engine. If not set, AWS uses an AWS managed key.
  late final pulumi.Output<String?> encryptionKeyArn;
  /// Name of the policy engine. Must start with a letter and contain only letters, numbers, and underscores. Maximum length of 48 characters.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// ARN of the Policy Engine.
  late final pulumi.Output<String> policyEngineArn;
  /// Unique identifier of the Policy Engine.
  late final pulumi.Output<String> policyEngineId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentcorePolicyEngineTimeouts?> timeouts;

  /// Creates a new [AgentcorePolicyEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcorePolicyEngine]. {@macro pulumi_bedrock_agentcore_policy_engine_agentcore_policy_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcorePolicyEngine(
    String name, {
    AgentcorePolicyEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcorePolicyEngine:AgentcorePolicyEngine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    description = registerOutput<String?>('description');
    encryptionKeyArn = registerOutput<String?>('encryptionKeyArn');
    this.name = registerOutput<String>('name');
    policyEngineArn = registerOutput<String>('policyEngineArn');
    policyEngineId = registerOutput<String>('policyEngineId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcorePolicyEngineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcorePolicyEngineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentcorePolicyEngine] resource's state with the given [name] and [id].
  static AgentcorePolicyEngine get(
    String name,
    pulumi.Input<String> id, {
    AgentcorePolicyEngineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcorePolicyEngine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcorePolicyEngine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcorePolicyEngine:AgentcorePolicyEngine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    encryptionKeyArn = registerOutput<String?>('encryptionKeyArn');
    this.name = registerOutput<String>('name');
    policyEngineArn = registerOutput<String>('policyEngineArn');
    policyEngineId = registerOutput<String>('policyEngineId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcorePolicyEngineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcorePolicyEngineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentcorePolicyEngine] resource.
  AgentcorePolicyEngine.reference(String urn)
    : super(
        'aws:bedrock/agentcorePolicyEngine:AgentcorePolicyEngine',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    encryptionKeyArn = registerOutput<String?>('encryptionKeyArn');
    this.name = registerOutput<String>('name');
    policyEngineArn = registerOutput<String>('policyEngineArn');
    policyEngineId = registerOutput<String>('policyEngineId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentcorePolicyEngineTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcorePolicyEngineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
