import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_args.dart';
import 'agent_data_source_data_source_configuration.dart';
import 'agent_data_source_server_side_encryption_configuration.dart';
import 'agent_data_source_timeouts.dart';
import 'agent_data_source_vector_ingestion_configuration.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Data Source.
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
/// const example = new aws.bedrock.AgentDataSource("example", {
///     knowledgeBaseId: "EMDPPAYPZI",
///     name: "example",
///     dataSourceConfiguration: {
///         type: "S3",
///         s3Configuration: {
///             bucketArn: "arn:aws:s3:::example-bucket",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentDataSource("example",
///     knowledge_base_id="EMDPPAYPZI",
///     name="example",
///     data_source_configuration={
///         "type": "S3",
///         "s3_configuration": {
///             "bucket_arn": "arn:aws:s3:::example-bucket",
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
///     var example = new Aws.Bedrock.AgentDataSource("example", new()
///     {
///         KnowledgeBaseId = "EMDPPAYPZI",
///         Name = "example",
///         DataSourceConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationArgs
///         {
///             Type = "S3",
///             S3Configuration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs
///             {
///                 BucketArn = "arn:aws:s3:::example-bucket",
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
/// 		_, err := bedrock.NewAgentDataSource(ctx, "example", &bedrock.AgentDataSourceArgs{
/// 			KnowledgeBaseId: pulumi.String("EMDPPAYPZI"),
/// 			Name:            pulumi.String("example"),
/// 			DataSourceConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationArgs{
/// 				Type: pulumi.String("S3"),
/// 				S3Configuration: &bedrock.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs{
/// 					BucketArn: pulumi.String("arn:aws:s3:::example-bucket"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentDataSource;
/// import com.pulumi.aws.bedrock.AgentDataSourceArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs;
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
///         var example = new AgentDataSource("example", AgentDataSourceArgs.builder()
///             .knowledgeBaseId("EMDPPAYPZI")
///             .name("example")
///             .dataSourceConfiguration(AgentDataSourceDataSourceConfigurationArgs.builder()
///                 .type("S3")
///                 .s3Configuration(AgentDataSourceDataSourceConfigurationS3ConfigurationArgs.builder()
///                     .bucketArn("arn:aws:s3:::example-bucket")
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
///     type: aws:bedrock:AgentDataSource
///     properties:
///       knowledgeBaseId: EMDPPAYPZI
///       name: example
///       dataSourceConfiguration:
///         type: S3
///         s3Configuration:
///           bucketArn: arn:aws:s3:::example-bucket
/// ```
///
///
/// ### Multimodal Parsing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentDataSource("example", {
///     knowledgeBaseId: exampleAwsBedrockagentKnowledgeBase.id,
///     name: "multimodal-example",
///     dataSourceConfiguration: {
///         type: "S3",
///         s3Configuration: {
///             bucketArn: exampleAwsS3Bucket.arn,
///         },
///     },
///     vectorIngestionConfiguration: {
///         chunkingConfiguration: {
///             chunkingStrategy: "FIXED_SIZE",
///             fixedSizeChunkingConfiguration: {
///                 maxTokens: 512,
///                 overlapPercentage: 20,
///             },
///         },
///         parsingConfiguration: {
///             parsingStrategy: "BEDROCK_FOUNDATION_MODEL",
///             bedrockFoundationModelConfiguration: {
///                 modelArn: "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0",
///                 parsingModality: "MULTIMODAL",
///                 parsingPrompt: {
///                     parsingPromptString: "Extract and transcribe all text and visual content from the document.",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentDataSource("example",
///     knowledge_base_id=example_aws_bedrockagent_knowledge_base["id"],
///     name="multimodal-example",
///     data_source_configuration={
///         "type": "S3",
///         "s3_configuration": {
///             "bucket_arn": example_aws_s3_bucket["arn"],
///         },
///     },
///     vector_ingestion_configuration={
///         "chunking_configuration": {
///             "chunking_strategy": "FIXED_SIZE",
///             "fixed_size_chunking_configuration": {
///                 "max_tokens": 512,
///                 "overlap_percentage": 20,
///             },
///         },
///         "parsing_configuration": {
///             "parsing_strategy": "BEDROCK_FOUNDATION_MODEL",
///             "bedrock_foundation_model_configuration": {
///                 "model_arn": "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0",
///                 "parsing_modality": "MULTIMODAL",
///                 "parsing_prompt": {
///                     "parsing_prompt_string": "Extract and transcribe all text and visual content from the document.",
///                 },
///             },
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
///     var example = new Aws.Bedrock.AgentDataSource("example", new()
///     {
///         KnowledgeBaseId = exampleAwsBedrockagentKnowledgeBase.Id,
///         Name = "multimodal-example",
///         DataSourceConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationArgs
///         {
///             Type = "S3",
///             S3Configuration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs
///             {
///                 BucketArn = exampleAwsS3Bucket.Arn,
///             },
///         },
///         VectorIngestionConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationArgs
///         {
///             ChunkingConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationArgs
///             {
///                 ChunkingStrategy = "FIXED_SIZE",
///                 FixedSizeChunkingConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfigurationArgs
///                 {
///                     MaxTokens = 512,
///                     OverlapPercentage = 20,
///                 },
///             },
///             ParsingConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs
///             {
///                 ParsingStrategy = "BEDROCK_FOUNDATION_MODEL",
///                 BedrockFoundationModelConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationArgs
///                 {
///                     ModelArn = "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0",
///                     ParsingModality = "MULTIMODAL",
///                     ParsingPrompt = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPromptArgs
///                     {
///                         ParsingPromptString = "Extract and transcribe all text and visual content from the document.",
///                     },
///                 },
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
/// 		_, err := bedrock.NewAgentDataSource(ctx, "example", &bedrock.AgentDataSourceArgs{
/// 			KnowledgeBaseId: pulumi.Any(exampleAwsBedrockagentKnowledgeBase.Id),
/// 			Name:            pulumi.String("multimodal-example"),
/// 			DataSourceConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationArgs{
/// 				Type: pulumi.String("S3"),
/// 				S3Configuration: &bedrock.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs{
/// 					BucketArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// 				},
/// 			},
/// 			VectorIngestionConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationArgs{
/// 				ChunkingConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationArgs{
/// 					ChunkingStrategy: pulumi.String("FIXED_SIZE"),
/// 					FixedSizeChunkingConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfigurationArgs{
/// 						MaxTokens:         pulumi.Int(512),
/// 						OverlapPercentage: pulumi.Int(20),
/// 					},
/// 				},
/// 				ParsingConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs{
/// 					ParsingStrategy: pulumi.String("BEDROCK_FOUNDATION_MODEL"),
/// 					BedrockFoundationModelConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationArgs{
/// 						ModelArn:        pulumi.String("arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0"),
/// 						ParsingModality: pulumi.String("MULTIMODAL"),
/// 						ParsingPrompt: &bedrock.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPromptArgs{
/// 							ParsingPromptString: pulumi.String("Extract and transcribe all text and visual content from the document."),
/// 						},
/// 					},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentDataSource;
/// import com.pulumi.aws.bedrock.AgentDataSourceArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPromptArgs;
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
///         var example = new AgentDataSource("example", AgentDataSourceArgs.builder()
///             .knowledgeBaseId(exampleAwsBedrockagentKnowledgeBase.id())
///             .name("multimodal-example")
///             .dataSourceConfiguration(AgentDataSourceDataSourceConfigurationArgs.builder()
///                 .type("S3")
///                 .s3Configuration(AgentDataSourceDataSourceConfigurationS3ConfigurationArgs.builder()
///                     .bucketArn(exampleAwsS3Bucket.arn())
///                     .build())
///                 .build())
///             .vectorIngestionConfiguration(AgentDataSourceVectorIngestionConfigurationArgs.builder()
///                 .chunkingConfiguration(AgentDataSourceVectorIngestionConfigurationChunkingConfigurationArgs.builder()
///                     .chunkingStrategy("FIXED_SIZE")
///                     .fixedSizeChunkingConfiguration(AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfigurationArgs.builder()
///                         .maxTokens(512)
///                         .overlapPercentage(20)
///                         .build())
///                     .build())
///                 .parsingConfiguration(AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs.builder()
///                     .parsingStrategy("BEDROCK_FOUNDATION_MODEL")
///                     .bedrockFoundationModelConfiguration(AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationArgs.builder()
///                         .modelArn("arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0")
///                         .parsingModality("MULTIMODAL")
///                         .parsingPrompt(AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPromptArgs.builder()
///                             .parsingPromptString("Extract and transcribe all text and visual content from the document.")
///                             .build())
///                         .build())
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
///     type: aws:bedrock:AgentDataSource
///     properties:
///       knowledgeBaseId: ${exampleAwsBedrockagentKnowledgeBase.id}
///       name: multimodal-example
///       dataSourceConfiguration:
///         type: S3
///         s3Configuration:
///           bucketArn: ${exampleAwsS3Bucket.arn}
///       vectorIngestionConfiguration:
///         chunkingConfiguration:
///           chunkingStrategy: FIXED_SIZE
///           fixedSizeChunkingConfiguration:
///             maxTokens: 512
///             overlapPercentage: 20
///         parsingConfiguration:
///           parsingStrategy: BEDROCK_FOUNDATION_MODEL
///           bedrockFoundationModelConfiguration:
///             modelArn: arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0
///             parsingModality: MULTIMODAL
///             parsingPrompt:
///               parsingPromptString: Extract and transcribe all text and visual content from the document.
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Data Source using the data source ID and the knowledge base ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentDataSource:AgentDataSource example GWCMFMQF6T,EMDPPAYPZI
/// ```
///
/// [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_ConfluenceDataSourceConfiguration.html
/// [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_SalesforceDataSourceConfiguration.html
/// [3]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_SharePointDataSourceConfiguration.html
/// [4]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_WebDataSourceConfiguration.html
class AgentDataSource extends pulumi.CustomResource {
  /// Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  late final pulumi.Output<String> dataDeletionPolicy;
  /// Details about how the data source is stored. See `data_source_configuration` block for details.
  late final pulumi.Output<AgentDataSourceDataSourceConfiguration> dataSourceConfiguration;
  /// Unique identifier of the data source.
  late final pulumi.Output<String> dataSourceId;
  /// Description of the data source.
  late final pulumi.Output<String?> description;
  /// Unique identifier of the knowledge base to which the data source belongs.
  late final pulumi.Output<String> knowledgeBaseId;
  /// Name of the data source.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Details about the configuration of the server-side encryption. See `server_side_encryption_configuration` block for details.
  late final pulumi.Output<AgentDataSourceServerSideEncryptionConfiguration?> serverSideEncryptionConfiguration;
  late final pulumi.Output<AgentDataSourceTimeouts?> timeouts;
  /// Details about the configuration of the server-side encryption. See `vector_ingestion_configuration` block for details.
  late final pulumi.Output<AgentDataSourceVectorIngestionConfiguration?> vectorIngestionConfiguration;

  /// Creates a new [AgentDataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentDataSource]. {@macro pulumi_bedrock_agent_data_source_agent_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentDataSource(
    String name, {
    AgentDataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentDataSource:AgentDataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataDeletionPolicy = registerOutput<String>('dataDeletionPolicy');
    this.dataSourceConfiguration = registerOutput<AgentDataSourceDataSourceConfiguration>('dataSourceConfiguration');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.description = registerOutput<String?>('description');
    this.knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serverSideEncryptionConfiguration = registerOutput<AgentDataSourceServerSideEncryptionConfiguration?>('serverSideEncryptionConfiguration');
    this.timeouts = registerOutput<AgentDataSourceTimeouts?>('timeouts');
    this.vectorIngestionConfiguration = registerOutput<AgentDataSourceVectorIngestionConfiguration?>('vectorIngestionConfiguration');
  }
}
