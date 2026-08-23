import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_memory_strategy_args.dart';
import 'agentcore_memory_strategy_configuration.dart';
import 'agentcore_memory_strategy_reflection_configuration.dart';
import 'agentcore_memory_strategy_state.dart';
import 'agentcore_memory_strategy_timeouts.dart';

/// Manages an AWS Bedrock AgentCore Memory Strategy. Memory strategies define how the agent processes and organizes information within a memory, such as semantic understanding, summarization, or custom processing logic.
///
/// **Important Limitations:**
///
/// - Each memory can have a maximum of 6 strategies total
/// - Only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `EPISODIC`) can exist per memory
/// - Multiple `CUSTOM` strategies are allowed (subject to the total limit of 6)
///
/// ## Example Usage
///
/// ### Semantic Strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const semantic = new aws.bedrock.AgentcoreMemoryStrategy("semantic", {
///     name: "semantic-strategy",
///     memoryId: example.id,
///     type: "SEMANTIC",
///     description: "Semantic understanding strategy",
///     namespaceTemplates: ["default"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// semantic = aws.bedrock.AgentcoreMemoryStrategy("semantic",
///     name="semantic-strategy",
///     memory_id=example["id"],
///     type="SEMANTIC",
///     description="Semantic understanding strategy",
///     namespace_templates=["default"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var semantic = new Aws.Bedrock.AgentcoreMemoryStrategy("semantic", new()
///     {
///         Name = "semantic-strategy",
///         MemoryId = example.Id,
///         Type = "SEMANTIC",
///         Description = "Semantic understanding strategy",
///         NamespaceTemplates = new[]
///         {
///             "default",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "semantic", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:        pulumi.String("semantic-strategy"),
/// 			MemoryId:    pulumi.Any(example.Id),
/// 			Type:        pulumi.String("SEMANTIC"),
/// 			Description: pulumi.String("Semantic understanding strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("default"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "semantic" {
///   name                = "semantic-strategy"
///   memory_id           = example.id
///   type                = "SEMANTIC"
///   description         = "Semantic understanding strategy"
///   namespace_templates = ["default"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
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
///         var semantic = new AgentcoreMemoryStrategy("semantic", AgentcoreMemoryStrategyArgs.builder()
///             .name("semantic-strategy")
///             .memoryId(example.id())
///             .type("SEMANTIC")
///             .description("Semantic understanding strategy")
///             .namespaceTemplates("default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   semantic:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     properties:
///       name: semantic-strategy
///       memoryId: ${example.id}
///       type: SEMANTIC
///       description: Semantic understanding strategy
///       namespaceTemplates:
///         - default
/// ```
///
///
/// ### Summarization Strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const summary = new aws.bedrock.AgentcoreMemoryStrategy("summary", {
///     name: "summary-strategy",
///     memoryId: example.id,
///     type: "SUMMARIZATION",
///     description: "Text summarization strategy",
///     namespaceTemplates: ["{sessionId}"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// summary = aws.bedrock.AgentcoreMemoryStrategy("summary",
///     name="summary-strategy",
///     memory_id=example["id"],
///     type="SUMMARIZATION",
///     description="Text summarization strategy",
///     namespace_templates=["{sessionId}"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var summary = new Aws.Bedrock.AgentcoreMemoryStrategy("summary", new()
///     {
///         Name = "summary-strategy",
///         MemoryId = example.Id,
///         Type = "SUMMARIZATION",
///         Description = "Text summarization strategy",
///         NamespaceTemplates = new[]
///         {
///             "{sessionId}",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "summary", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:        pulumi.String("summary-strategy"),
/// 			MemoryId:    pulumi.Any(example.Id),
/// 			Type:        pulumi.String("SUMMARIZATION"),
/// 			Description: pulumi.String("Text summarization strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("{sessionId}"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "summary" {
///   name                = "summary-strategy"
///   memory_id           = example.id
///   type                = "SUMMARIZATION"
///   description         = "Text summarization strategy"
///   namespace_templates = ["{sessionId}"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
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
///         var summary = new AgentcoreMemoryStrategy("summary", AgentcoreMemoryStrategyArgs.builder()
///             .name("summary-strategy")
///             .memoryId(example.id())
///             .type("SUMMARIZATION")
///             .description("Text summarization strategy")
///             .namespaceTemplates("{sessionId}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   summary:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     properties:
///       name: summary-strategy
///       memoryId: ${example.id}
///       type: SUMMARIZATION
///       description: Text summarization strategy
///       namespaceTemplates:
///         - '{sessionId}'
/// ```
///
///
/// ### User Preference Strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const userPref = new aws.bedrock.AgentcoreMemoryStrategy("user_pref", {
///     name: "user-preference-strategy",
///     memoryId: example.id,
///     type: "USER_PREFERENCE",
///     description: "User preference tracking strategy",
///     namespaceTemplates: ["preferences"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user_pref = aws.bedrock.AgentcoreMemoryStrategy("user_pref",
///     name="user-preference-strategy",
///     memory_id=example["id"],
///     type="USER_PREFERENCE",
///     description="User preference tracking strategy",
///     namespace_templates=["preferences"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userPref = new Aws.Bedrock.AgentcoreMemoryStrategy("user_pref", new()
///     {
///         Name = "user-preference-strategy",
///         MemoryId = example.Id,
///         Type = "USER_PREFERENCE",
///         Description = "User preference tracking strategy",
///         NamespaceTemplates = new[]
///         {
///             "preferences",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "user_pref", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:        pulumi.String("user-preference-strategy"),
/// 			MemoryId:    pulumi.Any(example.Id),
/// 			Type:        pulumi.String("USER_PREFERENCE"),
/// 			Description: pulumi.String("User preference tracking strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("preferences"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "user_pref" {
///   name                = "user-preference-strategy"
///   memory_id           = example.id
///   type                = "USER_PREFERENCE"
///   description         = "User preference tracking strategy"
///   namespace_templates = ["preferences"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
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
///         var userPref = new AgentcoreMemoryStrategy("userPref", AgentcoreMemoryStrategyArgs.builder()
///             .name("user-preference-strategy")
///             .memoryId(example.id())
///             .type("USER_PREFERENCE")
///             .description("User preference tracking strategy")
///             .namespaceTemplates("preferences")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   userPref:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     name: user_pref
///     properties:
///       name: user-preference-strategy
///       memoryId: ${example.id}
///       type: USER_PREFERENCE
///       description: User preference tracking strategy
///       namespaceTemplates:
///         - preferences
/// ```
///
///
/// ### Episodic Strategy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const episodic = new aws.bedrock.AgentcoreMemoryStrategy("episodic", {
///     name: "episodic-strategy",
///     memoryId: example.id,
///     type: "EPISODIC",
///     description: "Episodic memory strategy",
///     namespaceTemplates: ["/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// episodic = aws.bedrock.AgentcoreMemoryStrategy("episodic",
///     name="episodic-strategy",
///     memory_id=example["id"],
///     type="EPISODIC",
///     description="Episodic memory strategy",
///     namespace_templates=["/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var episodic = new Aws.Bedrock.AgentcoreMemoryStrategy("episodic", new()
///     {
///         Name = "episodic-strategy",
///         MemoryId = example.Id,
///         Type = "EPISODIC",
///         Description = "Episodic memory strategy",
///         NamespaceTemplates = new[]
///         {
///             "/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "episodic", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:        pulumi.String("episodic-strategy"),
/// 			MemoryId:    pulumi.Any(example.Id),
/// 			Type:        pulumi.String("EPISODIC"),
/// 			Description: pulumi.String("Episodic memory strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "episodic" {
///   name                = "episodic-strategy"
///   memory_id           = example.id
///   type                = "EPISODIC"
///   description         = "Episodic memory strategy"
///   namespace_templates = ["/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
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
///         var episodic = new AgentcoreMemoryStrategy("episodic", AgentcoreMemoryStrategyArgs.builder()
///             .name("episodic-strategy")
///             .memoryId(example.id())
///             .type("EPISODIC")
///             .description("Episodic memory strategy")
///             .namespaceTemplates("/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   episodic:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     properties:
///       name: episodic-strategy
///       memoryId: ${example.id}
///       type: EPISODIC
///       description: Episodic memory strategy
///       namespaceTemplates:
///         - /strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}
/// ```
///
///
/// ### Custom Strategy with Semantic Override
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const customSemantic = new aws.bedrock.AgentcoreMemoryStrategy("custom_semantic", {
///     name: "custom-semantic-strategy",
///     memoryId: example.id,
///     memoryExecutionRoleArn: example.memoryExecutionRoleArn,
///     type: "CUSTOM",
///     description: "Custom semantic processing strategy",
///     namespaceTemplates: ["{sessionId}"],
///     configuration: {
///         type: "SEMANTIC_OVERRIDE",
///         consolidation: {
///             appendToPrompt: "Focus on extracting key semantic relationships and concepts",
///             modelId: "anthropic.claude-3-sonnet-20240229-v1:0",
///         },
///         extraction: {
///             appendToPrompt: "Extract and categorize semantic information",
///             modelId: "anthropic.claude-3-haiku-20240307-v1:0",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// custom_semantic = aws.bedrock.AgentcoreMemoryStrategy("custom_semantic",
///     name="custom-semantic-strategy",
///     memory_id=example["id"],
///     memory_execution_role_arn=example["memoryExecutionRoleArn"],
///     type="CUSTOM",
///     description="Custom semantic processing strategy",
///     namespace_templates=["{sessionId}"],
///     configuration={
///         "type": "SEMANTIC_OVERRIDE",
///         "consolidation": {
///             "append_to_prompt": "Focus on extracting key semantic relationships and concepts",
///             "model_id": "anthropic.claude-3-sonnet-20240229-v1:0",
///         },
///         "extraction": {
///             "append_to_prompt": "Extract and categorize semantic information",
///             "model_id": "anthropic.claude-3-haiku-20240307-v1:0",
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
///     var customSemantic = new Aws.Bedrock.AgentcoreMemoryStrategy("custom_semantic", new()
///     {
///         Name = "custom-semantic-strategy",
///         MemoryId = example.Id,
///         MemoryExecutionRoleArn = example.MemoryExecutionRoleArn,
///         Type = "CUSTOM",
///         Description = "Custom semantic processing strategy",
///         NamespaceTemplates = new[]
///         {
///             "{sessionId}",
///         },
///         Configuration = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationArgs
///         {
///             Type = "SEMANTIC_OVERRIDE",
///             Consolidation = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs
///             {
///                 AppendToPrompt = "Focus on extracting key semantic relationships and concepts",
///                 ModelId = "anthropic.claude-3-sonnet-20240229-v1:0",
///             },
///             Extraction = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationExtractionArgs
///             {
///                 AppendToPrompt = "Extract and categorize semantic information",
///                 ModelId = "anthropic.claude-3-haiku-20240307-v1:0",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "custom_semantic", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:                   pulumi.String("custom-semantic-strategy"),
/// 			MemoryId:               pulumi.Any(example.Id),
/// 			MemoryExecutionRoleArn: pulumi.Any(example.MemoryExecutionRoleArn),
/// 			Type:                   pulumi.String("CUSTOM"),
/// 			Description:            pulumi.String("Custom semantic processing strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("{sessionId}"),
/// 			},
/// 			Configuration: &bedrock.AgentcoreMemoryStrategyConfigurationArgs{
/// 				Type: pulumi.String("SEMANTIC_OVERRIDE"),
/// 				Consolidation: &bedrock.AgentcoreMemoryStrategyConfigurationConsolidationArgs{
/// 					AppendToPrompt: pulumi.String("Focus on extracting key semantic relationships and concepts"),
/// 					ModelId:        pulumi.String("anthropic.claude-3-sonnet-20240229-v1:0"),
/// 				},
/// 				Extraction: &bedrock.AgentcoreMemoryStrategyConfigurationExtractionArgs{
/// 					AppendToPrompt: pulumi.String("Extract and categorize semantic information"),
/// 					ModelId:        pulumi.String("anthropic.claude-3-haiku-20240307-v1:0"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "custom_semantic" {
///   name                      = "custom-semantic-strategy"
///   memory_id                 = example.id
///   memory_execution_role_arn = example.memoryExecutionRoleArn
///   type                      = "CUSTOM"
///   description               = "Custom semantic processing strategy"
///   namespace_templates       = ["{sessionId}"]
///   configuration = {
///     type = "SEMANTIC_OVERRIDE"
///     consolidation = {
///       append_to_prompt = "Focus on extracting key semantic relationships and concepts"
///       model_id         = "anthropic.claude-3-sonnet-20240229-v1:0"
///     }
///     extraction = {
///       append_to_prompt = "Extract and categorize semantic information"
///       model_id         = "anthropic.claude-3-haiku-20240307-v1:0"
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
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationExtractionArgs;
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
///         var customSemantic = new AgentcoreMemoryStrategy("customSemantic", AgentcoreMemoryStrategyArgs.builder()
///             .name("custom-semantic-strategy")
///             .memoryId(example.id())
///             .memoryExecutionRoleArn(example.memoryExecutionRoleArn())
///             .type("CUSTOM")
///             .description("Custom semantic processing strategy")
///             .namespaceTemplates("{sessionId}")
///             .configuration(AgentcoreMemoryStrategyConfigurationArgs.builder()
///                 .type("SEMANTIC_OVERRIDE")
///                 .consolidation(AgentcoreMemoryStrategyConfigurationConsolidationArgs.builder()
///                     .appendToPrompt("Focus on extracting key semantic relationships and concepts")
///                     .modelId("anthropic.claude-3-sonnet-20240229-v1:0")
///                     .build())
///                 .extraction(AgentcoreMemoryStrategyConfigurationExtractionArgs.builder()
///                     .appendToPrompt("Extract and categorize semantic information")
///                     .modelId("anthropic.claude-3-haiku-20240307-v1:0")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customSemantic:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     name: custom_semantic
///     properties:
///       name: custom-semantic-strategy
///       memoryId: ${example.id}
///       memoryExecutionRoleArn: ${example.memoryExecutionRoleArn}
///       type: CUSTOM
///       description: Custom semantic processing strategy
///       namespaceTemplates:
///         - '{sessionId}'
///       configuration:
///         type: SEMANTIC_OVERRIDE
///         consolidation:
///           appendToPrompt: Focus on extracting key semantic relationships and concepts
///           modelId: anthropic.claude-3-sonnet-20240229-v1:0
///         extraction:
///           appendToPrompt: Extract and categorize semantic information
///           modelId: anthropic.claude-3-haiku-20240307-v1:0
/// ```
///
///
/// ### Custom Strategy with Summary Override
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const customSummary = new aws.bedrock.AgentcoreMemoryStrategy("custom_summary", {
///     name: "custom-summary-strategy",
///     memoryId: example.id,
///     type: "CUSTOM",
///     description: "Custom summarization strategy",
///     namespaceTemplates: ["summaries"],
///     configuration: {
///         type: "SUMMARY_OVERRIDE",
///         consolidation: {
///             appendToPrompt: "Create concise summaries while preserving key details",
///             modelId: "anthropic.claude-3-sonnet-20240229-v1:0",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// custom_summary = aws.bedrock.AgentcoreMemoryStrategy("custom_summary",
///     name="custom-summary-strategy",
///     memory_id=example["id"],
///     type="CUSTOM",
///     description="Custom summarization strategy",
///     namespace_templates=["summaries"],
///     configuration={
///         "type": "SUMMARY_OVERRIDE",
///         "consolidation": {
///             "append_to_prompt": "Create concise summaries while preserving key details",
///             "model_id": "anthropic.claude-3-sonnet-20240229-v1:0",
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
///     var customSummary = new Aws.Bedrock.AgentcoreMemoryStrategy("custom_summary", new()
///     {
///         Name = "custom-summary-strategy",
///         MemoryId = example.Id,
///         Type = "CUSTOM",
///         Description = "Custom summarization strategy",
///         NamespaceTemplates = new[]
///         {
///             "summaries",
///         },
///         Configuration = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationArgs
///         {
///             Type = "SUMMARY_OVERRIDE",
///             Consolidation = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs
///             {
///                 AppendToPrompt = "Create concise summaries while preserving key details",
///                 ModelId = "anthropic.claude-3-sonnet-20240229-v1:0",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "custom_summary", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:        pulumi.String("custom-summary-strategy"),
/// 			MemoryId:    pulumi.Any(example.Id),
/// 			Type:        pulumi.String("CUSTOM"),
/// 			Description: pulumi.String("Custom summarization strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("summaries"),
/// 			},
/// 			Configuration: &bedrock.AgentcoreMemoryStrategyConfigurationArgs{
/// 				Type: pulumi.String("SUMMARY_OVERRIDE"),
/// 				Consolidation: &bedrock.AgentcoreMemoryStrategyConfigurationConsolidationArgs{
/// 					AppendToPrompt: pulumi.String("Create concise summaries while preserving key details"),
/// 					ModelId:        pulumi.String("anthropic.claude-3-sonnet-20240229-v1:0"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "custom_summary" {
///   name                = "custom-summary-strategy"
///   memory_id           = example.id
///   type                = "CUSTOM"
///   description         = "Custom summarization strategy"
///   namespace_templates = ["summaries"]
///   configuration = {
///     type = "SUMMARY_OVERRIDE"
///     consolidation = {
///       append_to_prompt = "Create concise summaries while preserving key details"
///       model_id         = "anthropic.claude-3-sonnet-20240229-v1:0"
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
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs;
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
///         var customSummary = new AgentcoreMemoryStrategy("customSummary", AgentcoreMemoryStrategyArgs.builder()
///             .name("custom-summary-strategy")
///             .memoryId(example.id())
///             .type("CUSTOM")
///             .description("Custom summarization strategy")
///             .namespaceTemplates("summaries")
///             .configuration(AgentcoreMemoryStrategyConfigurationArgs.builder()
///                 .type("SUMMARY_OVERRIDE")
///                 .consolidation(AgentcoreMemoryStrategyConfigurationConsolidationArgs.builder()
///                     .appendToPrompt("Create concise summaries while preserving key details")
///                     .modelId("anthropic.claude-3-sonnet-20240229-v1:0")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customSummary:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     name: custom_summary
///     properties:
///       name: custom-summary-strategy
///       memoryId: ${example.id}
///       type: CUSTOM
///       description: Custom summarization strategy
///       namespaceTemplates:
///         - summaries
///       configuration:
///         type: SUMMARY_OVERRIDE
///         consolidation:
///           appendToPrompt: Create concise summaries while preserving key details
///           modelId: anthropic.claude-3-sonnet-20240229-v1:0
/// ```
///
///
/// ### Custom Strategy with User Preference Override
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const customUserPref = new aws.bedrock.AgentcoreMemoryStrategy("custom_user_pref", {
///     name: "custom-user-preference-strategy",
///     memoryId: example.id,
///     type: "CUSTOM",
///     description: "Custom user preference tracking strategy",
///     namespaceTemplates: ["user_prefs"],
///     configuration: {
///         type: "USER_PREFERENCE_OVERRIDE",
///         consolidation: {
///             appendToPrompt: "Consolidate user preferences and behavioral patterns",
///             modelId: "anthropic.claude-3-sonnet-20240229-v1:0",
///         },
///         extraction: {
///             appendToPrompt: "Extract user preferences and interaction patterns",
///             modelId: "anthropic.claude-3-haiku-20240307-v1:0",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// custom_user_pref = aws.bedrock.AgentcoreMemoryStrategy("custom_user_pref",
///     name="custom-user-preference-strategy",
///     memory_id=example["id"],
///     type="CUSTOM",
///     description="Custom user preference tracking strategy",
///     namespace_templates=["user_prefs"],
///     configuration={
///         "type": "USER_PREFERENCE_OVERRIDE",
///         "consolidation": {
///             "append_to_prompt": "Consolidate user preferences and behavioral patterns",
///             "model_id": "anthropic.claude-3-sonnet-20240229-v1:0",
///         },
///         "extraction": {
///             "append_to_prompt": "Extract user preferences and interaction patterns",
///             "model_id": "anthropic.claude-3-haiku-20240307-v1:0",
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
///     var customUserPref = new Aws.Bedrock.AgentcoreMemoryStrategy("custom_user_pref", new()
///     {
///         Name = "custom-user-preference-strategy",
///         MemoryId = example.Id,
///         Type = "CUSTOM",
///         Description = "Custom user preference tracking strategy",
///         NamespaceTemplates = new[]
///         {
///             "user_prefs",
///         },
///         Configuration = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationArgs
///         {
///             Type = "USER_PREFERENCE_OVERRIDE",
///             Consolidation = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs
///             {
///                 AppendToPrompt = "Consolidate user preferences and behavioral patterns",
///                 ModelId = "anthropic.claude-3-sonnet-20240229-v1:0",
///             },
///             Extraction = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationExtractionArgs
///             {
///                 AppendToPrompt = "Extract user preferences and interaction patterns",
///                 ModelId = "anthropic.claude-3-haiku-20240307-v1:0",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "custom_user_pref", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:        pulumi.String("custom-user-preference-strategy"),
/// 			MemoryId:    pulumi.Any(example.Id),
/// 			Type:        pulumi.String("CUSTOM"),
/// 			Description: pulumi.String("Custom user preference tracking strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("user_prefs"),
/// 			},
/// 			Configuration: &bedrock.AgentcoreMemoryStrategyConfigurationArgs{
/// 				Type: pulumi.String("USER_PREFERENCE_OVERRIDE"),
/// 				Consolidation: &bedrock.AgentcoreMemoryStrategyConfigurationConsolidationArgs{
/// 					AppendToPrompt: pulumi.String("Consolidate user preferences and behavioral patterns"),
/// 					ModelId:        pulumi.String("anthropic.claude-3-sonnet-20240229-v1:0"),
/// 				},
/// 				Extraction: &bedrock.AgentcoreMemoryStrategyConfigurationExtractionArgs{
/// 					AppendToPrompt: pulumi.String("Extract user preferences and interaction patterns"),
/// 					ModelId:        pulumi.String("anthropic.claude-3-haiku-20240307-v1:0"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "custom_user_pref" {
///   name                = "custom-user-preference-strategy"
///   memory_id           = example.id
///   type                = "CUSTOM"
///   description         = "Custom user preference tracking strategy"
///   namespace_templates = ["user_prefs"]
///   configuration = {
///     type = "USER_PREFERENCE_OVERRIDE"
///     consolidation = {
///       append_to_prompt = "Consolidate user preferences and behavioral patterns"
///       model_id         = "anthropic.claude-3-sonnet-20240229-v1:0"
///     }
///     extraction = {
///       append_to_prompt = "Extract user preferences and interaction patterns"
///       model_id         = "anthropic.claude-3-haiku-20240307-v1:0"
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
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationExtractionArgs;
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
///         var customUserPref = new AgentcoreMemoryStrategy("customUserPref", AgentcoreMemoryStrategyArgs.builder()
///             .name("custom-user-preference-strategy")
///             .memoryId(example.id())
///             .type("CUSTOM")
///             .description("Custom user preference tracking strategy")
///             .namespaceTemplates("user_prefs")
///             .configuration(AgentcoreMemoryStrategyConfigurationArgs.builder()
///                 .type("USER_PREFERENCE_OVERRIDE")
///                 .consolidation(AgentcoreMemoryStrategyConfigurationConsolidationArgs.builder()
///                     .appendToPrompt("Consolidate user preferences and behavioral patterns")
///                     .modelId("anthropic.claude-3-sonnet-20240229-v1:0")
///                     .build())
///                 .extraction(AgentcoreMemoryStrategyConfigurationExtractionArgs.builder()
///                     .appendToPrompt("Extract user preferences and interaction patterns")
///                     .modelId("anthropic.claude-3-haiku-20240307-v1:0")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customUserPref:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     name: custom_user_pref
///     properties:
///       name: custom-user-preference-strategy
///       memoryId: ${example.id}
///       type: CUSTOM
///       description: Custom user preference tracking strategy
///       namespaceTemplates:
///         - user_prefs
///       configuration:
///         type: USER_PREFERENCE_OVERRIDE
///         consolidation:
///           appendToPrompt: Consolidate user preferences and behavioral patterns
///           modelId: anthropic.claude-3-sonnet-20240229-v1:0
///         extraction:
///           appendToPrompt: Extract user preferences and interaction patterns
///           modelId: anthropic.claude-3-haiku-20240307-v1:0
/// ```
///
///
/// ### Custom Strategy with Episodic Override
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const customEpisodic = new aws.bedrock.AgentcoreMemoryStrategy("custom_episodic", {
///     name: "custom-episodic-strategy",
///     memoryId: example.id,
///     memoryExecutionRoleArn: example.memoryExecutionRoleArn,
///     type: "CUSTOM",
///     description: "Custom episodic processing strategy",
///     namespaceTemplates: ["/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"],
///     configuration: {
///         type: "EPISODIC_OVERRIDE",
///         consolidation: {
///             appendToPrompt: "Consolidate episodic memories into coherent narratives",
///             modelId: "anthropic.claude-3-sonnet-20240229-v1:0",
///         },
///         extraction: {
///             appendToPrompt: "Extract key events and episodes from interactions",
///             modelId: "anthropic.claude-3-haiku-20240307-v1:0",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// custom_episodic = aws.bedrock.AgentcoreMemoryStrategy("custom_episodic",
///     name="custom-episodic-strategy",
///     memory_id=example["id"],
///     memory_execution_role_arn=example["memoryExecutionRoleArn"],
///     type="CUSTOM",
///     description="Custom episodic processing strategy",
///     namespace_templates=["/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"],
///     configuration={
///         "type": "EPISODIC_OVERRIDE",
///         "consolidation": {
///             "append_to_prompt": "Consolidate episodic memories into coherent narratives",
///             "model_id": "anthropic.claude-3-sonnet-20240229-v1:0",
///         },
///         "extraction": {
///             "append_to_prompt": "Extract key events and episodes from interactions",
///             "model_id": "anthropic.claude-3-haiku-20240307-v1:0",
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
///     var customEpisodic = new Aws.Bedrock.AgentcoreMemoryStrategy("custom_episodic", new()
///     {
///         Name = "custom-episodic-strategy",
///         MemoryId = example.Id,
///         MemoryExecutionRoleArn = example.MemoryExecutionRoleArn,
///         Type = "CUSTOM",
///         Description = "Custom episodic processing strategy",
///         NamespaceTemplates = new[]
///         {
///             "/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}",
///         },
///         Configuration = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationArgs
///         {
///             Type = "EPISODIC_OVERRIDE",
///             Consolidation = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs
///             {
///                 AppendToPrompt = "Consolidate episodic memories into coherent narratives",
///                 ModelId = "anthropic.claude-3-sonnet-20240229-v1:0",
///             },
///             Extraction = new Aws.Bedrock.Inputs.AgentcoreMemoryStrategyConfigurationExtractionArgs
///             {
///                 AppendToPrompt = "Extract key events and episodes from interactions",
///                 ModelId = "anthropic.claude-3-haiku-20240307-v1:0",
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
/// 		_, err := bedrock.NewAgentcoreMemoryStrategy(ctx, "custom_episodic", &bedrock.AgentcoreMemoryStrategyArgs{
/// 			Name:                   pulumi.String("custom-episodic-strategy"),
/// 			MemoryId:               pulumi.Any(example.Id),
/// 			MemoryExecutionRoleArn: pulumi.Any(example.MemoryExecutionRoleArn),
/// 			Type:                   pulumi.String("CUSTOM"),
/// 			Description:            pulumi.String("Custom episodic processing strategy"),
/// 			NamespaceTemplates: pulumi.StringArray{
/// 				pulumi.String("/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"),
/// 			},
/// 			Configuration: &bedrock.AgentcoreMemoryStrategyConfigurationArgs{
/// 				Type: pulumi.String("EPISODIC_OVERRIDE"),
/// 				Consolidation: &bedrock.AgentcoreMemoryStrategyConfigurationConsolidationArgs{
/// 					AppendToPrompt: pulumi.String("Consolidate episodic memories into coherent narratives"),
/// 					ModelId:        pulumi.String("anthropic.claude-3-sonnet-20240229-v1:0"),
/// 				},
/// 				Extraction: &bedrock.AgentcoreMemoryStrategyConfigurationExtractionArgs{
/// 					AppendToPrompt: pulumi.String("Extract key events and episodes from interactions"),
/// 					ModelId:        pulumi.String("anthropic.claude-3-haiku-20240307-v1:0"),
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
/// resource "aws_bedrock_agentcorememorystrategy" "custom_episodic" {
///   name                      = "custom-episodic-strategy"
///   memory_id                 = example.id
///   memory_execution_role_arn = example.memoryExecutionRoleArn
///   type                      = "CUSTOM"
///   description               = "Custom episodic processing strategy"
///   namespace_templates       = ["/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}"]
///   configuration = {
///     type = "EPISODIC_OVERRIDE"
///     consolidation = {
///       append_to_prompt = "Consolidate episodic memories into coherent narratives"
///       model_id         = "anthropic.claude-3-sonnet-20240229-v1:0"
///     }
///     extraction = {
///       append_to_prompt = "Extract key events and episodes from interactions"
///       model_id         = "anthropic.claude-3-haiku-20240307-v1:0"
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
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategy;
/// import com.pulumi.aws.bedrock.AgentcoreMemoryStrategyArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationConsolidationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreMemoryStrategyConfigurationExtractionArgs;
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
///         var customEpisodic = new AgentcoreMemoryStrategy("customEpisodic", AgentcoreMemoryStrategyArgs.builder()
///             .name("custom-episodic-strategy")
///             .memoryId(example.id())
///             .memoryExecutionRoleArn(example.memoryExecutionRoleArn())
///             .type("CUSTOM")
///             .description("Custom episodic processing strategy")
///             .namespaceTemplates("/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}")
///             .configuration(AgentcoreMemoryStrategyConfigurationArgs.builder()
///                 .type("EPISODIC_OVERRIDE")
///                 .consolidation(AgentcoreMemoryStrategyConfigurationConsolidationArgs.builder()
///                     .appendToPrompt("Consolidate episodic memories into coherent narratives")
///                     .modelId("anthropic.claude-3-sonnet-20240229-v1:0")
///                     .build())
///                 .extraction(AgentcoreMemoryStrategyConfigurationExtractionArgs.builder()
///                     .appendToPrompt("Extract key events and episodes from interactions")
///                     .modelId("anthropic.claude-3-haiku-20240307-v1:0")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customEpisodic:
///     type: aws:bedrock:AgentcoreMemoryStrategy
///     name: custom_episodic
///     properties:
///       name: custom-episodic-strategy
///       memoryId: ${example.id}
///       memoryExecutionRoleArn: ${example.memoryExecutionRoleArn}
///       type: CUSTOM
///       description: Custom episodic processing strategy
///       namespaceTemplates:
///         - /strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}
///       configuration:
///         type: EPISODIC_OVERRIDE
///         consolidation:
///           appendToPrompt: Consolidate episodic memories into coherent narratives
///           modelId: anthropic.claude-3-sonnet-20240229-v1:0
///         extraction:
///           appendToPrompt: Extract key events and episodes from interactions
///           modelId: anthropic.claude-3-haiku-20240307-v1:0
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Memory Strategy using the `memory_id,strategy_id`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreMemoryStrategy:AgentcoreMemoryStrategy example MEMORY1234567890,STRATEGY0987654321
/// ```
class AgentcoreMemoryStrategy extends pulumi.CustomResource {
  /// Custom configuration block. Required when `type` is `CUSTOM`, must be omitted for other types. See `configuration` Block below.
  late final pulumi.Output<AgentcoreMemoryStrategyConfiguration?> configuration;
  /// Description of the memory strategy.
  late final pulumi.Output<String?> description;
  /// ARN of the IAM role that the memory service assumes to perform operations.
  late final pulumi.Output<String?> memoryExecutionRoleArn;
  /// ID of the memory to associate with this strategy. Changing this forces a new resource.
  late final pulumi.Output<String> memoryId;
  /// Unique identifier of the Memory Strategy. This corresponds to the service `strategyId` identifier (AWS API / CloudFormation terminology).
  late final pulumi.Output<String> memoryStrategyId;
  /// Name of the memory strategy.
  late final pulumi.Output<String> name;
  /// Set containing exactly one namespace template where this strategy applies (for example `/strategies/{memoryStrategyId}/actors/{actorId}/sessions/{sessionId}`). Namespace templates help organize and scope memory content. Exactly one of `namespaceTemplates` or `namespaces` must be configured.
  late final pulumi.Output<List<String>> namespaceTemplates;
  /// Set of namespace identifiers where this strategy applies. Exactly one of `namespaces` or `namespaceTemplates` must be configured. The API treats this as a legacy parameter; prefer `namespaceTemplates`. Since the API mirrors the two fields, switching an existing configuration from `namespaces` to `namespaceTemplates` with the same value is an in-place no-op.
  late final pulumi.Output<List<String>> namespaces;
  /// Configuration for the reflections created with the episodic memory strategy. Valid when `type` is `EPISODIC`, must be omitted for other types. See `reflectionConfiguration` Block below.
  late final pulumi.Output<AgentcoreMemoryStrategyReflectionConfiguration?> reflectionConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<AgentcoreMemoryStrategyTimeouts?> timeouts;
  /// Type of memory strategy. Valid values: `SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `EPISODIC`, `CUSTOM`. Changing this forces a new resource. Note that only one strategy of each built-in type (`SEMANTIC`, `SUMMARIZATION`, `USER_PREFERENCE`, `EPISODIC`) can exist per memory.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [AgentcoreMemoryStrategy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreMemoryStrategy]. {@macro pulumi_bedrock_agentcore_memory_strategy_agentcore_memory_strategy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreMemoryStrategy(
    String name, {
    AgentcoreMemoryStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreMemoryStrategy:AgentcoreMemoryStrategy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configuration = registerOutput<AgentcoreMemoryStrategyConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreMemoryStrategyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    memoryExecutionRoleArn = registerOutput<String?>('memoryExecutionRoleArn');
    memoryId = registerOutput<String>('memoryId');
    memoryStrategyId = registerOutput<String>('memoryStrategyId');
    this.name = registerOutput<String>('name');
    namespaceTemplates = registerOutput<List<String>>('namespaceTemplates');
    namespaces = registerOutput<List<String>>('namespaces');
    reflectionConfiguration = registerOutput<AgentcoreMemoryStrategyReflectionConfiguration?>('reflectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreMemoryStrategyReflectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<AgentcoreMemoryStrategyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreMemoryStrategyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [AgentcoreMemoryStrategy] resource's state with the given [name] and [id].
  static AgentcoreMemoryStrategy get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreMemoryStrategyState? state,
  }) {
    return AgentcoreMemoryStrategy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AgentcoreMemoryStrategy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreMemoryStrategy:AgentcoreMemoryStrategy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configuration = registerOutput<AgentcoreMemoryStrategyConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreMemoryStrategyConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    memoryExecutionRoleArn = registerOutput<String?>('memoryExecutionRoleArn');
    memoryId = registerOutput<String>('memoryId');
    memoryStrategyId = registerOutput<String>('memoryStrategyId');
    this.name = registerOutput<String>('name');
    namespaceTemplates = registerOutput<List<String>>('namespaceTemplates');
    namespaces = registerOutput<List<String>>('namespaces');
    reflectionConfiguration = registerOutput<AgentcoreMemoryStrategyReflectionConfiguration?>('reflectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreMemoryStrategyReflectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    timeouts = registerOutput<AgentcoreMemoryStrategyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreMemoryStrategyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
