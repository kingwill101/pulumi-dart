import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_agent_knowledge_base_association_args.dart';
import 'agent_agent_knowledge_base_association_timeouts.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Agent Knowledge Base Association.
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
/// const example = new aws.bedrock.AgentAgentKnowledgeBaseAssociation("example", {
///     agentId: "GGRRAED6JP",
///     description: "Example Knowledge base",
///     knowledgeBaseId: "EMDPPAYPZI",
///     knowledgeBaseState: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentAgentKnowledgeBaseAssociation("example",
///     agent_id="GGRRAED6JP",
///     description="Example Knowledge base",
///     knowledge_base_id="EMDPPAYPZI",
///     knowledge_base_state="ENABLED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentAgentKnowledgeBaseAssociation("example", new()
///     {
///         AgentId = "GGRRAED6JP",
///         Description = "Example Knowledge base",
///         KnowledgeBaseId = "EMDPPAYPZI",
///         KnowledgeBaseState = "ENABLED",
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
/// 		_, err := bedrock.NewAgentAgentKnowledgeBaseAssociation(ctx, "example", &bedrock.AgentAgentKnowledgeBaseAssociationArgs{
/// 			AgentId:            pulumi.String("GGRRAED6JP"),
/// 			Description:        pulumi.String("Example Knowledge base"),
/// 			KnowledgeBaseId:    pulumi.String("EMDPPAYPZI"),
/// 			KnowledgeBaseState: pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.bedrock.AgentAgentKnowledgeBaseAssociation;
/// import com.pulumi.aws.bedrock.AgentAgentKnowledgeBaseAssociationArgs;
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
///         var example = new AgentAgentKnowledgeBaseAssociation("example", AgentAgentKnowledgeBaseAssociationArgs.builder()
///             .agentId("GGRRAED6JP")
///             .description("Example Knowledge base")
///             .knowledgeBaseId("EMDPPAYPZI")
///             .knowledgeBaseState("ENABLED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentAgentKnowledgeBaseAssociation
///     properties:
///       agentId: GGRRAED6JP
///       description: Example Knowledge base
///       knowledgeBaseId: EMDPPAYPZI
///       knowledgeBaseState: ENABLED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Agent Knowledge Base Association using the agent ID, the agent version, and the knowledge base ID separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentAgentKnowledgeBaseAssociation:AgentAgentKnowledgeBaseAssociation example GGRRAED6JP,DRAFT,EMDPPAYPZI
/// ```
class AgentAgentKnowledgeBaseAssociation extends pulumi.CustomResource {
  /// Unique identifier of the agent with which you want to associate the knowledge base.
  late final pulumi.Output<String> agentId;

  /// Version of the agent with which you want to associate the knowledge base. Valid values: `DRAFT`.
  late final pulumi.Output<String> agentVersion;

  /// Description of what the agent should use the knowledge base for.
  late final pulumi.Output<String> description;

  /// Unique identifier of the knowledge base to associate with the agent.
  late final pulumi.Output<String> knowledgeBaseId;

  /// Whether to use the knowledge base when sending an [InvokeAgent](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html) request. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> knowledgeBaseState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<AgentAgentKnowledgeBaseAssociationTimeouts?>
      timeouts;

  /// Creates a new [AgentAgentKnowledgeBaseAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentAgentKnowledgeBaseAssociation]. {@macro pulumi_bedrock_agent_agent_knowledge_base_association_agent_agent_knowledge_base_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentAgentKnowledgeBaseAssociation(
    String name, {
    AgentAgentKnowledgeBaseAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentAgentKnowledgeBaseAssociation:AgentAgentKnowledgeBaseAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.agentVersion = registerOutput<String>('agentVersion');
    this.description = registerOutput<String>('description');
    this.knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.knowledgeBaseState = registerOutput<String>('knowledgeBaseState');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<AgentAgentKnowledgeBaseAssociationTimeouts?>('timeouts');
  }
}
