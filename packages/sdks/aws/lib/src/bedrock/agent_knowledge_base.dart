import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_args.dart';
import 'agent_knowledge_base_knowledge_base_configuration.dart';
import 'agent_knowledge_base_state.dart';
import 'agent_knowledge_base_storage_configuration.dart';
import 'agent_knowledge_base_timeouts.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Knowledge Base.
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
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         vectorKnowledgeBaseConfiguration: {
///             embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         type: "VECTOR",
///     },
///     storageConfiguration: {
///         opensearchServerlessConfiguration: {
///             fieldMapping: {
///                 vectorField: "bedrock-knowledge-base-default-vector",
///                 textField: "AMAZON_BEDROCK_TEXT_CHUNK",
///                 metadataField: "AMAZON_BEDROCK_METADATA",
///             },
///             collectionArn: "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
///             vectorIndexName: "bedrock-knowledge-base-default-index",
///         },
///         type: "OPENSEARCH_SERVERLESS",
///     },
///     name: "example",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "vector_knowledge_base_configuration": {
///             "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         "type": "VECTOR",
///     },
///     storage_configuration={
///         "opensearch_serverless_configuration": {
///             "field_mapping": {
///                 "vector_field": "bedrock-knowledge-base-default-vector",
///                 "text_field": "AMAZON_BEDROCK_TEXT_CHUNK",
///                 "metadata_field": "AMAZON_BEDROCK_METADATA",
///             },
///             "collection_arn": "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
///             "vector_index_name": "bedrock-knowledge-base-default-index",
///         },
///         "type": "OPENSEARCH_SERVERLESS",
///     },
///     name="example",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
///             {
///                 EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///             },
///             Type = "VECTOR",
///         },
///         StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
///         {
///             OpensearchServerlessConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs
///             {
///                 FieldMapping = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs
///                 {
///                     VectorField = "bedrock-knowledge-base-default-vector",
///                     TextField = "AMAZON_BEDROCK_TEXT_CHUNK",
///                     MetadataField = "AMAZON_BEDROCK_METADATA",
///                 },
///                 CollectionArn = "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
///                 VectorIndexName = "bedrock-knowledge-base-default-index",
///             },
///             Type = "OPENSEARCH_SERVERLESS",
///         },
///         Name = "example",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// 					EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// 				},
/// 				Type: pulumi.String("VECTOR"),
/// 			},
/// 			StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// 				OpensearchServerlessConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs{
/// 					FieldMapping: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs{
/// 						VectorField:   pulumi.String("bedrock-knowledge-base-default-vector"),
/// 						TextField:     pulumi.String("AMAZON_BEDROCK_TEXT_CHUNK"),
/// 						MetadataField: pulumi.String("AMAZON_BEDROCK_METADATA"),
/// 					},
/// 					CollectionArn:   pulumi.String("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf"),
/// 					VectorIndexName: pulumi.String("bedrock-knowledge-base-default-index"),
/// 				},
/// 				Type: pulumi.String("OPENSEARCH_SERVERLESS"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentknowledgebase" "example" {
///   knowledge_base_configuration = {
///     vector_knowledge_base_configuration = {
///       embedding_model_arn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"
///     }
///     type = "VECTOR"
///   }
///   storage_configuration = {
///     opensearch_serverless_configuration = {
///       field_mapping = {
///         vector_field   = "bedrock-knowledge-base-default-vector"
///         text_field     = "AMAZON_BEDROCK_TEXT_CHUNK"
///         metadata_field = "AMAZON_BEDROCK_METADATA"
///       }
///       collection_arn    = "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf"
///       vector_index_name = "bedrock-knowledge-base-default-index"
///     }
///     type = "OPENSEARCH_SERVERLESS"
///   }
///   name     = "example"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs;
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
///         var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
///                     .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
///                     .build())
///                 .type("VECTOR")
///                 .build())
///             .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
///                 .opensearchServerlessConfiguration(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs.builder()
///                     .fieldMapping(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs.builder()
///                         .vectorField("bedrock-knowledge-base-default-vector")
///                         .textField("AMAZON_BEDROCK_TEXT_CHUNK")
///                         .metadataField("AMAZON_BEDROCK_METADATA")
///                         .build())
///                     .collectionArn("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf")
///                     .vectorIndexName("bedrock-knowledge-base-default-index")
///                     .build())
///                 .type("OPENSEARCH_SERVERLESS")
///                 .build())
///             .name("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentKnowledgeBase
///     properties:
///       knowledgeBaseConfiguration:
///         vectorKnowledgeBaseConfiguration:
///           embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
///         type: VECTOR
///       storageConfiguration:
///         opensearchServerlessConfiguration:
///           fieldMapping:
///             vectorField: bedrock-knowledge-base-default-vector
///             textField: AMAZON_BEDROCK_TEXT_CHUNK
///             metadataField: AMAZON_BEDROCK_METADATA
///           collectionArn: arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf
///           vectorIndexName: bedrock-knowledge-base-default-index
///         type: OPENSEARCH_SERVERLESS
///       name: example
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Kendra Knowledge Base
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const kendraExample = new aws.bedrock.AgentKnowledgeBase("kendra_example", {
///     knowledgeBaseConfiguration: {
///         kendraKnowledgeBaseConfiguration: {
///             kendraIndexArn: "arn:aws:kendra:us-east-1:123456789012:index/example-index-id",
///         },
///         type: "KENDRA",
///     },
///     name: "example-kendra-kb",
///     roleArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// kendra_example = aws.bedrock.AgentKnowledgeBase("kendra_example",
///     knowledge_base_configuration={
///         "kendra_knowledge_base_configuration": {
///             "kendra_index_arn": "arn:aws:kendra:us-east-1:123456789012:index/example-index-id",
///         },
///         "type": "KENDRA",
///     },
///     name="example-kendra-kb",
///     role_arn=example["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kendraExample = new Aws.Bedrock.AgentKnowledgeBase("kendra_example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             KendraKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs
///             {
///                 KendraIndexArn = "arn:aws:kendra:us-east-1:123456789012:index/example-index-id",
///             },
///             Type = "KENDRA",
///         },
///         Name = "example-kendra-kb",
///         RoleArn = example.Arn,
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
/// 		_, err := bedrock.NewAgentKnowledgeBase(ctx, "kendra_example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				KendraKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs{
/// 					KendraIndexArn: pulumi.String("arn:aws:kendra:us-east-1:123456789012:index/example-index-id"),
/// 				},
/// 				Type: pulumi.String("KENDRA"),
/// 			},
/// 			Name:    pulumi.String("example-kendra-kb"),
/// 			RoleArn: pulumi.Any(example.Arn),
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
/// resource "aws_bedrock_agentknowledgebase" "kendra_example" {
///   knowledge_base_configuration = {
///     kendra_knowledge_base_configuration = {
///       kendra_index_arn = "arn:aws:kendra:us-east-1:123456789012:index/example-index-id"
///     }
///     type = "KENDRA"
///   }
///   name     = "example-kendra-kb"
///   role_arn = example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs;
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
///         var kendraExample = new AgentKnowledgeBase("kendraExample", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .kendraKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs.builder()
///                     .kendraIndexArn("arn:aws:kendra:us-east-1:123456789012:index/example-index-id")
///                     .build())
///                 .type("KENDRA")
///                 .build())
///             .name("example-kendra-kb")
///             .roleArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kendraExample:
///     type: aws:bedrock:AgentKnowledgeBase
///     name: kendra_example
///     properties:
///       knowledgeBaseConfiguration:
///         kendraKnowledgeBaseConfiguration:
///           kendraIndexArn: arn:aws:kendra:us-east-1:123456789012:index/example-index-id
///         type: KENDRA
///       name: example-kendra-kb
///       roleArn: ${example.arn}
/// ```
///
///
/// ### Structured Data Store
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         sqlKnowledgeBaseConfiguration: {
///             redshiftConfiguration: {
///                 queryEngineConfiguration: {
///                     provisionedConfiguration: {
///                         authConfiguration: {
///                             type: "USERNAME",
///                             databaseUser: exampleAwsRedshiftCluster.masterUsername,
///                         },
///                         clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
///                     },
///                     type: "PROVISIONED",
///                 },
///                 storageConfiguration: {
///                     redshiftConfiguration: {
///                         databaseName: exampleAwsRedshiftCluster.databaseName,
///                     },
///                     type: "REDSHIFT",
///                 },
///             },
///             type: "REDSHIFT",
///         },
///         type: "SQL",
///     },
///     name: "example-kb",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "sql_knowledge_base_configuration": {
///             "redshift_configuration": {
///                 "query_engine_configuration": {
///                     "provisioned_configuration": {
///                         "auth_configuration": {
///                             "type": "USERNAME",
///                             "database_user": example_aws_redshift_cluster["masterUsername"],
///                         },
///                         "cluster_identifier": example_aws_redshift_cluster["clusterIdentifier"],
///                     },
///                     "type": "PROVISIONED",
///                 },
///                 "storage_configuration": {
///                     "redshift_configuration": {
///                         "database_name": example_aws_redshift_cluster["databaseName"],
///                     },
///                     "type": "REDSHIFT",
///                 },
///             },
///             "type": "REDSHIFT",
///         },
///         "type": "SQL",
///     },
///     name="example-kb",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             SqlKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationArgs
///             {
///                 RedshiftConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationArgs
///                 {
///                     QueryEngineConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationArgs
///                     {
///                         ProvisionedConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationArgs
///                         {
///                             AuthConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfigurationArgs
///                             {
///                                 Type = "USERNAME",
///                                 DatabaseUser = exampleAwsRedshiftCluster.MasterUsername,
///                             },
///                             ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
///                         },
///                         Type = "PROVISIONED",
///                     },
///                     StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationArgs
///                     {
///                         RedshiftConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfigurationArgs
///                         {
///                             DatabaseName = exampleAwsRedshiftCluster.DatabaseName,
///                         },
///                         Type = "REDSHIFT",
///                     },
///                 },
///                 Type = "REDSHIFT",
///             },
///             Type = "SQL",
///         },
///         Name = "example-kb",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				SqlKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationArgs{
/// 					RedshiftConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationArgs{
/// 						QueryEngineConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationArgs{
/// 							ProvisionedConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationArgs{
/// 								AuthConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfigurationArgs{
/// 									Type:         pulumi.String("USERNAME"),
/// 									DatabaseUser: pulumi.Any(exampleAwsRedshiftCluster.MasterUsername),
/// 								},
/// 								ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.ClusterIdentifier),
/// 							},
/// 							Type: pulumi.String("PROVISIONED"),
/// 						},
/// 						StorageConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationArgs{
/// 							RedshiftConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfigurationArgs{
/// 								DatabaseName: pulumi.Any(exampleAwsRedshiftCluster.DatabaseName),
/// 							},
/// 							Type: pulumi.String("REDSHIFT"),
/// 						},
/// 					},
/// 					Type: pulumi.String("REDSHIFT"),
/// 				},
/// 				Type: pulumi.String("SQL"),
/// 			},
/// 			Name:    pulumi.String("example-kb"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentknowledgebase" "example" {
///   knowledge_base_configuration = {
///     sql_knowledge_base_configuration = {
///       redshift_configuration = {
///         query_engine_configuration = {
///           provisioned_configuration = {
///             auth_configuration = {
///               type          = "USERNAME"
///               database_user = exampleAwsRedshiftCluster.masterUsername
///             }
///             cluster_identifier = exampleAwsRedshiftCluster.clusterIdentifier
///           }
///           type = "PROVISIONED"
///         }
///         storage_configuration = {
///           redshift_configuration = {
///             database_name = exampleAwsRedshiftCluster.databaseName
///           }
///           type = "REDSHIFT"
///         }
///       }
///       type = "REDSHIFT"
///     }
///     type = "SQL"
///   }
///   name     = "example-kb"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfigurationArgs;
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
///         var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .sqlKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationArgs.builder()
///                     .redshiftConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationArgs.builder()
///                         .queryEngineConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationArgs.builder()
///                             .provisionedConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationArgs.builder()
///                                 .authConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfigurationArgs.builder()
///                                     .type("USERNAME")
///                                     .databaseUser(exampleAwsRedshiftCluster.masterUsername())
///                                     .build())
///                                 .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
///                                 .build())
///                             .type("PROVISIONED")
///                             .build())
///                         .storageConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationArgs.builder()
///                             .redshiftConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfigurationArgs.builder()
///                                 .databaseName(exampleAwsRedshiftCluster.databaseName())
///                                 .build())
///                             .type("REDSHIFT")
///                             .build())
///                         .build())
///                     .type("REDSHIFT")
///                     .build())
///                 .type("SQL")
///                 .build())
///             .name("example-kb")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentKnowledgeBase
///     properties:
///       knowledgeBaseConfiguration:
///         sqlKnowledgeBaseConfiguration:
///           redshiftConfiguration:
///             queryEngineConfiguration:
///               provisionedConfiguration:
///                 authConfiguration:
///                   type: USERNAME
///                   databaseUser: ${exampleAwsRedshiftCluster.masterUsername}
///                 clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
///               type: PROVISIONED
///             storageConfiguration:
///               redshiftConfiguration:
///                 databaseName: ${exampleAwsRedshiftCluster.databaseName}
///               type: REDSHIFT
///           type: REDSHIFT
///         type: SQL
///       name: example-kb
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### OpenSearch Managed Cluster Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         vectorKnowledgeBaseConfiguration: {
///             embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         type: "VECTOR",
///     },
///     storageConfiguration: {
///         opensearchManagedClusterConfiguration: {
///             fieldMapping: {
///                 metadataField: "metadata",
///                 textField: "chunks",
///                 vectorField: "embedding",
///             },
///             domainArn: "arn:aws:es:us-west-2:123456789012:domain/example-domain",
///             domainEndpoint: "https://search-example-domain.us-west-2.es.amazonaws.com",
///             vectorIndexName: "example_index",
///         },
///         type: "OPENSEARCH_MANAGED_CLUSTER",
///     },
///     name: "example",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "vector_knowledge_base_configuration": {
///             "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         "type": "VECTOR",
///     },
///     storage_configuration={
///         "opensearch_managed_cluster_configuration": {
///             "field_mapping": {
///                 "metadata_field": "metadata",
///                 "text_field": "chunks",
///                 "vector_field": "embedding",
///             },
///             "domain_arn": "arn:aws:es:us-west-2:123456789012:domain/example-domain",
///             "domain_endpoint": "https://search-example-domain.us-west-2.es.amazonaws.com",
///             "vector_index_name": "example_index",
///         },
///         "type": "OPENSEARCH_MANAGED_CLUSTER",
///     },
///     name="example",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
///             {
///                 EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///             },
///             Type = "VECTOR",
///         },
///         StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
///         {
///             OpensearchManagedClusterConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs
///             {
///                 FieldMapping = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs
///                 {
///                     MetadataField = "metadata",
///                     TextField = "chunks",
///                     VectorField = "embedding",
///                 },
///                 DomainArn = "arn:aws:es:us-west-2:123456789012:domain/example-domain",
///                 DomainEndpoint = "https://search-example-domain.us-west-2.es.amazonaws.com",
///                 VectorIndexName = "example_index",
///             },
///             Type = "OPENSEARCH_MANAGED_CLUSTER",
///         },
///         Name = "example",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// 					EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// 				},
/// 				Type: pulumi.String("VECTOR"),
/// 			},
/// 			StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// 				OpensearchManagedClusterConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs{
/// 					FieldMapping: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs{
/// 						MetadataField: pulumi.String("metadata"),
/// 						TextField:     pulumi.String("chunks"),
/// 						VectorField:   pulumi.String("embedding"),
/// 					},
/// 					DomainArn:       pulumi.String("arn:aws:es:us-west-2:123456789012:domain/example-domain"),
/// 					DomainEndpoint:  pulumi.String("https://search-example-domain.us-west-2.es.amazonaws.com"),
/// 					VectorIndexName: pulumi.String("example_index"),
/// 				},
/// 				Type: pulumi.String("OPENSEARCH_MANAGED_CLUSTER"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentknowledgebase" "example" {
///   knowledge_base_configuration = {
///     vector_knowledge_base_configuration = {
///       embedding_model_arn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"
///     }
///     type = "VECTOR"
///   }
///   storage_configuration = {
///     opensearch_managed_cluster_configuration = {
///       field_mapping = {
///         metadata_field = "metadata"
///         text_field     = "chunks"
///         vector_field   = "embedding"
///       }
///       domain_arn        = "arn:aws:es:us-west-2:123456789012:domain/example-domain"
///       domain_endpoint   = "https://search-example-domain.us-west-2.es.amazonaws.com"
///       vector_index_name = "example_index"
///     }
///     type = "OPENSEARCH_MANAGED_CLUSTER"
///   }
///   name     = "example"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs;
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
///         var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
///                     .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
///                     .build())
///                 .type("VECTOR")
///                 .build())
///             .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
///                 .opensearchManagedClusterConfiguration(AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs.builder()
///                     .fieldMapping(AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs.builder()
///                         .metadataField("metadata")
///                         .textField("chunks")
///                         .vectorField("embedding")
///                         .build())
///                     .domainArn("arn:aws:es:us-west-2:123456789012:domain/example-domain")
///                     .domainEndpoint("https://search-example-domain.us-west-2.es.amazonaws.com")
///                     .vectorIndexName("example_index")
///                     .build())
///                 .type("OPENSEARCH_MANAGED_CLUSTER")
///                 .build())
///             .name("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentKnowledgeBase
///     properties:
///       knowledgeBaseConfiguration:
///         vectorKnowledgeBaseConfiguration:
///           embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
///         type: VECTOR
///       storageConfiguration:
///         opensearchManagedClusterConfiguration:
///           fieldMapping:
///             metadataField: metadata
///             textField: chunks
///             vectorField: embedding
///           domainArn: arn:aws:es:us-west-2:123456789012:domain/example-domain
///           domainEndpoint: https://search-example-domain.us-west-2.es.amazonaws.com
///           vectorIndexName: example_index
///         type: OPENSEARCH_MANAGED_CLUSTER
///       name: example
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Supplemental Data Storage Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         vectorKnowledgeBaseConfiguration: {
///             embeddingModelConfiguration: {
///                 bedrockEmbeddingModelConfiguration: {
///                     audio: {
///                         segmentationConfiguration: {
///                             fixedLengthDuration: 60,
///                         },
///                     },
///                     video: {
///                         segmentationConfiguration: {
///                             fixedLengthDuration: 60,
///                         },
///                     },
///                     dimensions: 1024,
///                     embeddingDataType: "FLOAT32",
///                 },
///             },
///             supplementalDataStorageConfiguration: {
///                 storageLocation: {
///                     s3Location: {
///                         uri: "s3://my-bucket/chunk-processor/",
///                     },
///                     type: "S3",
///                 },
///             },
///             embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         type: "VECTOR",
///     },
///     storageConfiguration: {
///         opensearchServerlessConfiguration: {
///             fieldMapping: {
///                 vectorField: "bedrock-knowledge-base-default-vector",
///                 textField: "AMAZON_BEDROCK_TEXT_CHUNK",
///                 metadataField: "AMAZON_BEDROCK_METADATA",
///             },
///             collectionArn: "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
///             vectorIndexName: "bedrock-knowledge-base-default-index",
///         },
///         type: "OPENSEARCH_SERVERLESS",
///     },
///     name: "example",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "vector_knowledge_base_configuration": {
///             "embedding_model_configuration": {
///                 "bedrock_embedding_model_configuration": {
///                     "audio": {
///                         "segmentation_configuration": {
///                             "fixed_length_duration": 60,
///                         },
///                     },
///                     "video": {
///                         "segmentation_configuration": {
///                             "fixed_length_duration": 60,
///                         },
///                     },
///                     "dimensions": 1024,
///                     "embedding_data_type": "FLOAT32",
///                 },
///             },
///             "supplemental_data_storage_configuration": {
///                 "storage_location": {
///                     "s3Location": {
///                         "uri": "s3://my-bucket/chunk-processor/",
///                     },
///                     "type": "S3",
///                 },
///             },
///             "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         "type": "VECTOR",
///     },
///     storage_configuration={
///         "opensearch_serverless_configuration": {
///             "field_mapping": {
///                 "vector_field": "bedrock-knowledge-base-default-vector",
///                 "text_field": "AMAZON_BEDROCK_TEXT_CHUNK",
///                 "metadata_field": "AMAZON_BEDROCK_METADATA",
///             },
///             "collection_arn": "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
///             "vector_index_name": "bedrock-knowledge-base-default-index",
///         },
///         "type": "OPENSEARCH_SERVERLESS",
///     },
///     name="example",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
///             {
///                 EmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs
///                 {
///                     BedrockEmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs
///                     {
///                         Audio = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioArgs
///                         {
///                             SegmentationConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfigurationArgs
///                             {
///                                 FixedLengthDuration = 60,
///                             },
///                         },
///                         Video = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoArgs
///                         {
///                             SegmentationConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfigurationArgs
///                             {
///                                 FixedLengthDuration = 60,
///                             },
///                         },
///                         Dimensions = 1024,
///                         EmbeddingDataType = "FLOAT32",
///                     },
///                 },
///                 SupplementalDataStorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs
///                 {
///                     StorageLocation =
///                     {
///                         { "s3Location",
///                         {
///                             { "uri", "s3://my-bucket/chunk-processor/" },
///                         } },
///                         { "type", "S3" },
///                     },
///                 },
///                 EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///             },
///             Type = "VECTOR",
///         },
///         StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
///         {
///             OpensearchServerlessConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs
///             {
///                 FieldMapping = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs
///                 {
///                     VectorField = "bedrock-knowledge-base-default-vector",
///                     TextField = "AMAZON_BEDROCK_TEXT_CHUNK",
///                     MetadataField = "AMAZON_BEDROCK_METADATA",
///                 },
///                 CollectionArn = "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
///                 VectorIndexName = "bedrock-knowledge-base-default-index",
///             },
///             Type = "OPENSEARCH_SERVERLESS",
///         },
///         Name = "example",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// 					EmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs{
/// 						BedrockEmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs{
/// 							Audio: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioArgs{
/// 								SegmentationConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfigurationArgs{
/// 									FixedLengthDuration: pulumi.Int(60),
/// 								},
/// 							},
/// 							Video: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoArgs{
/// 								SegmentationConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfigurationArgs{
/// 									FixedLengthDuration: pulumi.Int(60),
/// 								},
/// 							},
/// 							Dimensions:        pulumi.Int(1024),
/// 							EmbeddingDataType: pulumi.String("FLOAT32"),
/// 						},
/// 					},
/// 					SupplementalDataStorageConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs{
/// 						StorageLocation: map[string]interface{}{
/// 							"s3Location": map[string]string{
/// 								"uri": "s3://my-bucket/chunk-processor/",
/// 							},
/// 							"type": "S3",
/// 						},
/// 					},
/// 					EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// 				},
/// 				Type: pulumi.String("VECTOR"),
/// 			},
/// 			StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// 				OpensearchServerlessConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs{
/// 					FieldMapping: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs{
/// 						VectorField:   pulumi.String("bedrock-knowledge-base-default-vector"),
/// 						TextField:     pulumi.String("AMAZON_BEDROCK_TEXT_CHUNK"),
/// 						MetadataField: pulumi.String("AMAZON_BEDROCK_METADATA"),
/// 					},
/// 					CollectionArn:   pulumi.String("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf"),
/// 					VectorIndexName: pulumi.String("bedrock-knowledge-base-default-index"),
/// 				},
/// 				Type: pulumi.String("OPENSEARCH_SERVERLESS"),
/// 			},
/// 			Name:    pulumi.String("example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentknowledgebase" "example" {
///   knowledge_base_configuration = {
///     vector_knowledge_base_configuration = {
///       embedding_model_configuration = {
///         bedrock_embedding_model_configuration = {
///           audio = {
///             segmentation_configuration = {
///               fixed_length_duration = 60
///             }
///           }
///           video = {
///             segmentation_configuration = {
///               fixed_length_duration = 60
///             }
///           }
///           dimensions          = 1024
///           embedding_data_type = "FLOAT32"
///         }
///       }
///       supplemental_data_storage_configuration = {
///         storage_location = {
///           "s3Location" = {
///             "uri" = "s3://my-bucket/chunk-processor/"
///           }
///           "type" = "S3"
///         }
///       }
///       embedding_model_arn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"
///     }
///     type = "VECTOR"
///   }
///   storage_configuration = {
///     opensearch_serverless_configuration = {
///       field_mapping = {
///         vector_field   = "bedrock-knowledge-base-default-vector"
///         text_field     = "AMAZON_BEDROCK_TEXT_CHUNK"
///         metadata_field = "AMAZON_BEDROCK_METADATA"
///       }
///       collection_arn    = "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf"
///       vector_index_name = "bedrock-knowledge-base-default-index"
///     }
///     type = "OPENSEARCH_SERVERLESS"
///   }
///   name     = "example"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs;
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
///         var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
///                     .embeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs.builder()
///                         .bedrockEmbeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs.builder()
///                             .audio(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioArgs.builder()
///                                 .segmentationConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationAudioSegmentationConfigurationArgs.builder()
///                                     .fixedLengthDuration(60)
///                                     .build())
///                                 .build())
///                             .video(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoArgs.builder()
///                                 .segmentationConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationVideoSegmentationConfigurationArgs.builder()
///                                     .fixedLengthDuration(60)
///                                     .build())
///                                 .build())
///                             .dimensions(1024)
///                             .embeddingDataType("FLOAT32")
///                             .build())
///                         .build())
///                     .supplementalDataStorageConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs.builder()
///                         .storageLocation(Map.ofEntries(
///                             Map.entry("s3Location", Map.of("uri", "s3://my-bucket/chunk-processor/")),
///                             Map.entry("type", "S3")
///                         ))
///                         .build())
///                     .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
///                     .build())
///                 .type("VECTOR")
///                 .build())
///             .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
///                 .opensearchServerlessConfiguration(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs.builder()
///                     .fieldMapping(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs.builder()
///                         .vectorField("bedrock-knowledge-base-default-vector")
///                         .textField("AMAZON_BEDROCK_TEXT_CHUNK")
///                         .metadataField("AMAZON_BEDROCK_METADATA")
///                         .build())
///                     .collectionArn("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf")
///                     .vectorIndexName("bedrock-knowledge-base-default-index")
///                     .build())
///                 .type("OPENSEARCH_SERVERLESS")
///                 .build())
///             .name("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentKnowledgeBase
///     properties:
///       knowledgeBaseConfiguration:
///         vectorKnowledgeBaseConfiguration:
///           embeddingModelConfiguration:
///             bedrockEmbeddingModelConfiguration:
///               audio:
///                 segmentationConfiguration:
///                   fixedLengthDuration: 60
///               video:
///                 segmentationConfiguration:
///                   fixedLengthDuration: 60
///               dimensions: 1024
///               embeddingDataType: FLOAT32
///           supplementalDataStorageConfiguration:
///             storageLocation:
///               s3Location:
///                 uri: s3://my-bucket/chunk-processor/
///               type: S3
///           embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
///         type: VECTOR
///       storageConfiguration:
///         opensearchServerlessConfiguration:
///           fieldMapping:
///             vectorField: bedrock-knowledge-base-default-vector
///             textField: AMAZON_BEDROCK_TEXT_CHUNK
///             metadataField: AMAZON_BEDROCK_METADATA
///           collectionArn: arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf
///           vectorIndexName: bedrock-knowledge-base-default-index
///         type: OPENSEARCH_SERVERLESS
///       name: example
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### S3 Vectors Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.VectorsVectorBucket("example", {vectorBucketName: "example-bucket"});
/// const exampleVectorsIndex = new aws.s3.VectorsIndex("example", {
///     indexName: "example-index",
///     vectorBucketName: example.vectorBucketName,
///     dataType: "float32",
///     dimension: 256,
///     distanceMetric: "euclidean",
/// });
/// const exampleAgentKnowledgeBase = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         vectorKnowledgeBaseConfiguration: {
///             embeddingModelConfiguration: {
///                 bedrockEmbeddingModelConfiguration: {
///                     dimensions: 256,
///                     embeddingDataType: "FLOAT32",
///                 },
///             },
///             embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         type: "VECTOR",
///     },
///     storageConfiguration: {
///         s3VectorsConfiguration: {
///             indexArn: exampleVectorsIndex.indexArn,
///         },
///         type: "S3_VECTORS",
///     },
///     name: "example-s3vectors-kb",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsVectorBucket("example", vector_bucket_name="example-bucket")
/// example_vectors_index = aws.s3.VectorsIndex("example",
///     index_name="example-index",
///     vector_bucket_name=example.vector_bucket_name,
///     data_type="float32",
///     dimension=256,
///     distance_metric="euclidean")
/// example_agent_knowledge_base = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "vector_knowledge_base_configuration": {
///             "embedding_model_configuration": {
///                 "bedrock_embedding_model_configuration": {
///                     "dimensions": 256,
///                     "embedding_data_type": "FLOAT32",
///                 },
///             },
///             "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///         },
///         "type": "VECTOR",
///     },
///     storage_configuration={
///         "s3_vectors_configuration": {
///             "index_arn": example_vectors_index.index_arn,
///         },
///         "type": "S3_VECTORS",
///     },
///     name="example-s3vectors-kb",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.VectorsVectorBucket("example", new()
///     {
///         VectorBucketName = "example-bucket",
///     });
///
///     var exampleVectorsIndex = new Aws.S3.VectorsIndex("example", new()
///     {
///         IndexName = "example-index",
///         VectorBucketName = example.VectorBucketName,
///         DataType = "float32",
///         Dimension = 256,
///         DistanceMetric = "euclidean",
///     });
///
///     var exampleAgentKnowledgeBase = new Aws.Bedrock.AgentKnowledgeBase("example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
///             {
///                 EmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs
///                 {
///                     BedrockEmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs
///                     {
///                         Dimensions = 256,
///                         EmbeddingDataType = "FLOAT32",
///                     },
///                 },
///                 EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
///             },
///             Type = "VECTOR",
///         },
///         StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
///         {
///             S3VectorsConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationS3VectorsConfigurationArgs
///             {
///                 IndexArn = exampleVectorsIndex.IndexArn,
///             },
///             Type = "S3_VECTORS",
///         },
///         Name = "example-s3vectors-kb",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewVectorsVectorBucket(ctx, "example", &s3.VectorsVectorBucketArgs{
/// 			VectorBucketName: pulumi.String("example-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVectorsIndex, err := s3.NewVectorsIndex(ctx, "example", &s3.VectorsIndexArgs{
/// 			IndexName:        pulumi.String("example-index"),
/// 			VectorBucketName: example.VectorBucketName,
/// 			DataType:         pulumi.String("float32"),
/// 			Dimension:        pulumi.Int(256),
/// 			DistanceMetric:   pulumi.String("euclidean"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// 					EmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs{
/// 						BedrockEmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs{
/// 							Dimensions:        pulumi.Int(256),
/// 							EmbeddingDataType: pulumi.String("FLOAT32"),
/// 						},
/// 					},
/// 					EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// 				},
/// 				Type: pulumi.String("VECTOR"),
/// 			},
/// 			StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// 				S3VectorsConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationS3VectorsConfigurationArgs{
/// 					IndexArn: exampleVectorsIndex.IndexArn,
/// 				},
/// 				Type: pulumi.String("S3_VECTORS"),
/// 			},
/// 			Name:    pulumi.String("example-s3vectors-kb"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_s3_vectorsvectorbucket" "example" {
///   vector_bucket_name = "example-bucket"
/// }
/// resource "aws_s3_vectorsindex" "example" {
///   index_name         = "example-index"
///   vector_bucket_name = aws_s3_vectorsvectorbucket.example.vector_bucket_name
///   data_type          = "float32"
///   dimension          = 256
///   distance_metric    = "euclidean"
/// }
/// resource "aws_bedrock_agentknowledgebase" "example" {
///   knowledge_base_configuration = {
///     vector_knowledge_base_configuration = {
///       embedding_model_configuration = {
///         bedrock_embedding_model_configuration = {
///           dimensions          = 256
///           embedding_data_type = "FLOAT32"
///         }
///       }
///       embedding_model_arn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"
///     }
///     type = "VECTOR"
///   }
///   storage_configuration = {
///     s3_vectors_configuration = {
///       index_arn = aws_s3_vectorsindex.example.index_arn
///     }
///     type = "S3_VECTORS"
///   }
///   name     = "example-s3vectors-kb"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.VectorsVectorBucket;
/// import com.pulumi.aws.s3.VectorsVectorBucketArgs;
/// import com.pulumi.aws.s3.VectorsIndex;
/// import com.pulumi.aws.s3.VectorsIndexArgs;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationS3VectorsConfigurationArgs;
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
///         var example = new VectorsVectorBucket("example", VectorsVectorBucketArgs.builder()
///             .vectorBucketName("example-bucket")
///             .build());
///
///         var exampleVectorsIndex = new VectorsIndex("exampleVectorsIndex", VectorsIndexArgs.builder()
///             .indexName("example-index")
///             .vectorBucketName(example.vectorBucketName())
///             .dataType("float32")
///             .dimension(256)
///             .distanceMetric("euclidean")
///             .build());
///
///         var exampleAgentKnowledgeBase = new AgentKnowledgeBase("exampleAgentKnowledgeBase", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
///                     .embeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs.builder()
///                         .bedrockEmbeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs.builder()
///                             .dimensions(256)
///                             .embeddingDataType("FLOAT32")
///                             .build())
///                         .build())
///                     .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
///                     .build())
///                 .type("VECTOR")
///                 .build())
///             .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
///                 .s3VectorsConfiguration(AgentKnowledgeBaseStorageConfigurationS3VectorsConfigurationArgs.builder()
///                     .indexArn(exampleVectorsIndex.indexArn())
///                     .build())
///                 .type("S3_VECTORS")
///                 .build())
///             .name("example-s3vectors-kb")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:VectorsVectorBucket
///     properties:
///       vectorBucketName: example-bucket
///   exampleVectorsIndex:
///     type: aws:s3:VectorsIndex
///     name: example
///     properties:
///       indexName: example-index
///       vectorBucketName: ${example.vectorBucketName}
///       dataType: float32
///       dimension: 256
///       distanceMetric: euclidean
///   exampleAgentKnowledgeBase:
///     type: aws:bedrock:AgentKnowledgeBase
///     name: example
///     properties:
///       knowledgeBaseConfiguration:
///         vectorKnowledgeBaseConfiguration:
///           embeddingModelConfiguration:
///             bedrockEmbeddingModelConfiguration:
///               dimensions: 256
///               embeddingDataType: FLOAT32
///           embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
///         type: VECTOR
///       storageConfiguration:
///         s3VectorsConfiguration:
///           indexArn: ${exampleVectorsIndex.indexArn}
///         type: S3_VECTORS
///       name: example-s3vectors-kb
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Managed Knowledge Base
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         managedKnowledgeBaseConfiguration: {
///             embeddingModelType: "MANAGED",
///         },
///         type: "MANAGED",
///     },
///     name: "example-managed-kb",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "managed_knowledge_base_configuration": {
///             "embedding_model_type": "MANAGED",
///         },
///         "type": "MANAGED",
///     },
///     name="example-managed-kb",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             ManagedKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs
///             {
///                 EmbeddingModelType = "MANAGED",
///             },
///             Type = "MANAGED",
///         },
///         Name = "example-managed-kb",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				ManagedKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs{
/// 					EmbeddingModelType: pulumi.String("MANAGED"),
/// 				},
/// 				Type: pulumi.String("MANAGED"),
/// 			},
/// 			Name:    pulumi.String("example-managed-kb"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentknowledgebase" "example" {
///   knowledge_base_configuration = {
///     managed_knowledge_base_configuration = {
///       embedding_model_type = "MANAGED"
///     }
///     type = "MANAGED"
///   }
///   name     = "example-managed-kb"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs;
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
///         var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .managedKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs.builder()
///                     .embeddingModelType("MANAGED")
///                     .build())
///                 .type("MANAGED")
///                 .build())
///             .name("example-managed-kb")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentKnowledgeBase
///     properties:
///       knowledgeBaseConfiguration:
///         managedKnowledgeBaseConfiguration:
///           embeddingModelType: MANAGED
///         type: MANAGED
///       name: example-managed-kb
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Managed Knowledge Base with Custom Embedding Model
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         managedKnowledgeBaseConfiguration: {
///             embeddingModelConfiguration: {
///                 bedrockEmbeddingModelConfiguration: {
///                     dimensions: 1024,
///                 },
///             },
///             embeddingModelType: "CUSTOM",
///             embeddingModelArn: "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-multilingual-v3",
///         },
///         type: "MANAGED",
///     },
///     name: "example-managed-multilingual-kb",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "managed_knowledge_base_configuration": {
///             "embedding_model_configuration": {
///                 "bedrock_embedding_model_configuration": {
///                     "dimensions": 1024,
///                 },
///             },
///             "embedding_model_type": "CUSTOM",
///             "embedding_model_arn": "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-multilingual-v3",
///         },
///         "type": "MANAGED",
///     },
///     name="example-managed-multilingual-kb",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
///     {
///         KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
///         {
///             ManagedKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs
///             {
///                 EmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs
///                 {
///                     BedrockEmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs
///                     {
///                         Dimensions = 1024,
///                     },
///                 },
///                 EmbeddingModelType = "CUSTOM",
///                 EmbeddingModelArn = "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-multilingual-v3",
///             },
///             Type = "MANAGED",
///         },
///         Name = "example-managed-multilingual-kb",
///         RoleArn = exampleAwsIamRole.Arn,
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
/// 		_, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				ManagedKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs{
/// 					EmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs{
/// 						BedrockEmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs{
/// 							Dimensions: pulumi.Int(1024),
/// 						},
/// 					},
/// 					EmbeddingModelType: pulumi.String("CUSTOM"),
/// 					EmbeddingModelArn:  pulumi.String("arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-multilingual-v3"),
/// 				},
/// 				Type: pulumi.String("MANAGED"),
/// 			},
/// 			Name:    pulumi.String("example-managed-multilingual-kb"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrock_agentknowledgebase" "example" {
///   knowledge_base_configuration = {
///     managed_knowledge_base_configuration = {
///       embedding_model_configuration = {
///         bedrock_embedding_model_configuration = {
///           dimensions = 1024
///         }
///       }
///       embedding_model_type = "CUSTOM"
///       embedding_model_arn  = "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-multilingual-v3"
///     }
///     type = "MANAGED"
///   }
///   name     = "example-managed-multilingual-kb"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs;
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
///         var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
///             .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
///                 .managedKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationArgs.builder()
///                     .embeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs.builder()
///                         .bedrockEmbeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationManagedKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs.builder()
///                             .dimensions(1024)
///                             .build())
///                         .build())
///                     .embeddingModelType("CUSTOM")
///                     .embeddingModelArn("arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-multilingual-v3")
///                     .build())
///                 .type("MANAGED")
///                 .build())
///             .name("example-managed-multilingual-kb")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:AgentKnowledgeBase
///     properties:
///       knowledgeBaseConfiguration:
///         managedKnowledgeBaseConfiguration:
///           embeddingModelConfiguration:
///             bedrockEmbeddingModelConfiguration:
///               dimensions: 1024
///           embeddingModelType: CUSTOM
///           embeddingModelArn: arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-multilingual-v3
///         type: MANAGED
///       name: example-managed-multilingual-kb
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Knowledge Base using the knowledge base ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase example EMDPPAYPZI
/// ```
class AgentKnowledgeBase extends pulumi.CustomResource {
  /// ARN of the knowledge base.
  late final pulumi.Output<String> arn;
  /// Time at which the knowledge base was created.
  late final pulumi.Output<String> createdAt;
  /// Description of the knowledge base.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<List<String>> failureReasons;
  /// Details about the embeddings configuration of the knowledge base. See `knowledgeBaseConfiguration` block for details.
  late final pulumi.Output<AgentKnowledgeBaseKnowledgeBaseConfiguration> knowledgeBaseConfiguration;
  /// Name of the knowledge base.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;
  /// Details about the storage configuration of the knowledge base. See `storageConfiguration` block for details.
  late final pulumi.Output<AgentKnowledgeBaseStorageConfiguration?> storageConfiguration;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentKnowledgeBaseTimeouts?> timeouts;
  /// Time at which the knowledge base was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [AgentKnowledgeBase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentKnowledgeBase]. {@macro pulumi_bedrock_agent_knowledge_base_agent_knowledge_base_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentKnowledgeBase(
    String name, {
    AgentKnowledgeBaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    failureReasons = registerOutput<List<String>>('failureReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBaseConfiguration = registerOutput<AgentKnowledgeBaseKnowledgeBaseConfiguration>('knowledgeBaseConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    storageConfiguration = registerOutput<AgentKnowledgeBaseStorageConfiguration?>('storageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentKnowledgeBaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [AgentKnowledgeBase] resource's state with the given [name] and [id].
  static AgentKnowledgeBase get(
    String name,
    pulumi.Input<String> id, {
    AgentKnowledgeBaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentKnowledgeBase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentKnowledgeBase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    failureReasons = registerOutput<List<String>>('failureReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBaseConfiguration = registerOutput<AgentKnowledgeBaseKnowledgeBaseConfiguration>('knowledgeBaseConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    storageConfiguration = registerOutput<AgentKnowledgeBaseStorageConfiguration?>('storageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentKnowledgeBaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [AgentKnowledgeBase] resource.
  AgentKnowledgeBase.reference(String urn)
    : super(
        'aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    failureReasons = registerOutput<List<String>>('failureReasons', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBaseConfiguration = registerOutput<AgentKnowledgeBaseKnowledgeBaseConfiguration>('knowledgeBaseConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseKnowledgeBaseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    storageConfiguration = registerOutput<AgentKnowledgeBaseStorageConfiguration?>('storageConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AgentKnowledgeBaseTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentKnowledgeBaseTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
