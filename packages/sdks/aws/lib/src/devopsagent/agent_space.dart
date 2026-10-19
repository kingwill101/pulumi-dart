import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_space_args.dart';
import 'agent_space_state.dart';

/// Manages an AWS DevOps Agent Space.
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
/// const example = new aws.devopsagent.AgentSpace("example", {name: "my-agent-space"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsagent.AgentSpace("example", name="my-agent-space")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsAgent.AgentSpace("example", new()
///     {
///         Name = "my-agent-space",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsagent"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsagent.NewAgentSpace(ctx, "example", &devopsagent.AgentSpaceArgs{
/// 			Name: pulumi.String("my-agent-space"),
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
/// resource "aws_devopsagent_agentspace" "example" {
///   name = "my-agent-space"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsagent.AgentSpace;
/// import com.pulumi.aws.devopsagent.AgentSpaceArgs;
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
///         var example = new AgentSpace("example", AgentSpaceArgs.builder()
///             .name("my-agent-space")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsagent:AgentSpace
///     properties:
///       name: my-agent-space
/// ```
///
///
/// ### With Description and Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsagent.AgentSpace("example", {
///     name: "my-agent-space",
///     description: "An example agent space",
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsagent.AgentSpace("example",
///     name="my-agent-space",
///     description="An example agent space",
///     tags={
///         "Environment": "production",
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
///     var example = new Aws.DevOpsAgent.AgentSpace("example", new()
///     {
///         Name = "my-agent-space",
///         Description = "An example agent space",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsagent"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsagent.NewAgentSpace(ctx, "example", &devopsagent.AgentSpaceArgs{
/// 			Name:        pulumi.String("my-agent-space"),
/// 			Description: pulumi.String("An example agent space"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// resource "aws_devopsagent_agentspace" "example" {
///   name        = "my-agent-space"
///   description = "An example agent space"
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsagent.AgentSpace;
/// import com.pulumi.aws.devopsagent.AgentSpaceArgs;
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
///         var example = new AgentSpace("example", AgentSpaceArgs.builder()
///             .name("my-agent-space")
///             .description("An example agent space")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsagent:AgentSpace
///     properties:
///       name: my-agent-space
///       description: An example agent space
///       tags:
///         Environment: production
/// ```
///
///
/// ### With KMS Encryption
///
/// The KMS key must allow the calling identity and the DevOps Agent service principal to use it. Configure the key policy as described in the [AWS DevOps Agent encryption documentation](https://docs.aws.amazon.com/devopsagent/latest/userguide/aws-devops-agent-security-encryption-at-rest-for-devops-agent.html#step-2-set-the-key-policy) before using this example.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsagent.AgentSpace("example", {
///     name: "my-agent-space",
///     kmsKeyArn: exampleAwsKmsKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsagent.AgentSpace("example",
///     name="my-agent-space",
///     kms_key_arn=example_aws_kms_key["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsAgent.AgentSpace("example", new()
///     {
///         Name = "my-agent-space",
///         KmsKeyArn = exampleAwsKmsKey.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsagent"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsagent.NewAgentSpace(ctx, "example", &devopsagent.AgentSpaceArgs{
/// 			Name:      pulumi.String("my-agent-space"),
/// 			KmsKeyArn: pulumi.Any(exampleAwsKmsKey.Arn),
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
/// resource "aws_devopsagent_agentspace" "example" {
///   name        = "my-agent-space"
///   kms_key_arn = exampleAwsKmsKey.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsagent.AgentSpace;
/// import com.pulumi.aws.devopsagent.AgentSpaceArgs;
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
///         var example = new AgentSpace("example", AgentSpaceArgs.builder()
///             .name("my-agent-space")
///             .kmsKeyArn(exampleAwsKmsKey.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsagent:AgentSpace
///     properties:
///       name: my-agent-space
///       kmsKeyArn: ${exampleAwsKmsKey.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `agentSpaceId` (String) Unique identifier of the Agent Space.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DevOps Agent Space using the `agentSpaceId`. For example:
///
/// ```sh
/// $ pulumi import aws:devopsagent/agentSpace:AgentSpace example 08975e27-f587-49ca-b7b8-2e1019783803
/// ```
class AgentSpace extends pulumi.CustomResource {
  /// Unique identifier of the Agent Space.
  late final pulumi.Output<String> agentSpaceId;
  /// ARN of the Agent Space.
  late final pulumi.Output<String> arn;
  /// Timestamp when the Agent Space was created.
  late final pulumi.Output<String> createdAt;
  /// Description of the Agent Space.
  late final pulumi.Output<String?> description;
  /// ARN of the AWS KMS key used to encrypt resources. Forces new resource.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Locale for the Agent Space, which determines the language used in agent responses (e.g., `en`).
  late final pulumi.Output<String> locale;
  /// Name of the Agent Space.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Timestamp when the Agent Space was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [AgentSpace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentSpace]. {@macro pulumi_devopsagent_agent_space_agent_space_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentSpace(
    String name, {
    AgentSpaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsagent/agentSpace:AgentSpace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    agentSpaceId = registerOutput<String>('agentSpaceId');
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    locale = registerOutput<String>('locale');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [AgentSpace] resource's state with the given [name] and [id].
  static AgentSpace get(
    String name,
    pulumi.Input<String> id, {
    AgentSpaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentSpace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentSpace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsagent/agentSpace:AgentSpace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentSpaceId = registerOutput<String>('agentSpaceId');
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    locale = registerOutput<String>('locale');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [AgentSpace] resource.
  AgentSpace.reference(String urn)
    : super(
        'aws:devopsagent/agentSpace:AgentSpace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentSpaceId = registerOutput<String>('agentSpaceId');
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    locale = registerOutput<String>('locale');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
