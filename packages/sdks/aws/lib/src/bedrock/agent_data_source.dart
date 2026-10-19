import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_args.dart';
import 'agent_data_source_data_source_configuration.dart';
import 'agent_data_source_server_side_encryption_configuration.dart';
import 'agent_data_source_state.dart';
import 'agent_data_source_timeouts.dart';
import 'agent_data_source_vector_ingestion_configuration.dart';

/// Manages an AWS Agents for Amazon Bedrock Data Source.
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
///     dataSourceConfiguration: {
///         s3Configuration: {
///             bucketArn: "arn:aws:s3:::example-bucket",
///         },
///         type: "S3",
///     },
///     knowledgeBaseId: "EMDPPAYPZI",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentDataSource("example",
///     data_source_configuration={
///         "s3_configuration": {
///             "bucket_arn": "arn:aws:s3:::example-bucket",
///         },
///         "type": "S3",
///     },
///     knowledge_base_id="EMDPPAYPZI",
///     name="example")
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
///         DataSourceConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationArgs
///         {
///             S3Configuration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs
///             {
///                 BucketArn = "arn:aws:s3:::example-bucket",
///             },
///             Type = "S3",
///         },
///         KnowledgeBaseId = "EMDPPAYPZI",
///         Name = "example",
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
/// 			DataSourceConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationArgs{
/// 				S3Configuration: &bedrock.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs{
/// 					BucketArn: pulumi.String("arn:aws:s3:::example-bucket"),
/// 				},
/// 				Type: pulumi.String("S3"),
/// 			},
/// 			KnowledgeBaseId: pulumi.String("EMDPPAYPZI"),
/// 			Name:            pulumi.String("example"),
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
/// resource "aws_bedrock_agentdatasource" "example" {
///   data_source_configuration = {
///     s3_configuration = {
///       bucket_arn = "arn:aws:s3:::example-bucket"
///     }
///     type = "S3"
///   }
///   knowledge_base_id = "EMDPPAYPZI"
///   name              = "example"
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
///         var example = new AgentDataSource("example", AgentDataSourceArgs.builder()
///             .dataSourceConfiguration(AgentDataSourceDataSourceConfigurationArgs.builder()
///                 .s3Configuration(AgentDataSourceDataSourceConfigurationS3ConfigurationArgs.builder()
///                     .bucketArn("arn:aws:s3:::example-bucket")
///                     .build())
///                 .type("S3")
///                 .build())
///             .knowledgeBaseId("EMDPPAYPZI")
///             .name("example")
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
///       dataSourceConfiguration:
///         s3Configuration:
///           bucketArn: arn:aws:s3:::example-bucket
///         type: S3
///       knowledgeBaseId: EMDPPAYPZI
///       name: example
/// ```
///
///
/// ### Managed Knowledge Base Connector - S3
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentDataSource("example", {
///     dataSourceConfiguration: {
///         managedKnowledgeBaseConnectorConfiguration: {
///             mediaExtractionConfiguration: {
///                 imageExtractionConfiguration: {
///                     imageExtractionStatus: "ENABLED",
///                 },
///             },
///             connectorParameters: JSON.stringify({
///                 type: "S3",
///                 version: "1",
///                 connectionConfiguration: {
///                     bucketName: "my-documents-bucket",
///                     bucketOwnerAccountId: "123456789012",
///                 },
///                 aclEnabled: false,
///                 filterConfiguration: {
///                     maxFileSizeInMegaBytes: "500",
///                 },
///             }),
///         },
///         type: "MANAGED_KNOWLEDGE_BASE_CONNECTOR",
///     },
///     vectorIngestionConfiguration: {
///         parsingConfiguration: {
///             parsingStrategy: "SMART_PARSING",
///         },
///     },
///     knowledgeBaseId: exampleAwsBedrockagentKnowledgeBase.id,
///     name: "example-s3-managed",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentDataSource("example",
///     data_source_configuration={
///         "managed_knowledge_base_connector_configuration": {
///             "media_extraction_configuration": {
///                 "image_extraction_configuration": {
///                     "image_extraction_status": "ENABLED",
///                 },
///             },
///             "connector_parameters": json.dumps({
///                 "type": "S3",
///                 "version": "1",
///                 "connectionConfiguration": {
///                     "bucketName": "my-documents-bucket",
///                     "bucketOwnerAccountId": "123456789012",
///                 },
///                 "aclEnabled": False,
///                 "filterConfiguration": {
///                     "maxFileSizeInMegaBytes": "500",
///                 },
///             }),
///         },
///         "type": "MANAGED_KNOWLEDGE_BASE_CONNECTOR",
///     },
///     vector_ingestion_configuration={
///         "parsing_configuration": {
///             "parsing_strategy": "SMART_PARSING",
///         },
///     },
///     knowledge_base_id=example_aws_bedrockagent_knowledge_base["id"],
///     name="example-s3-managed")
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
///     var example = new Aws.Bedrock.AgentDataSource("example", new()
///     {
///         DataSourceConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationArgs
///         {
///             ManagedKnowledgeBaseConnectorConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs
///             {
///                 MediaExtractionConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationArgs
///                 {
///                     ImageExtractionConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfigurationArgs
///                     {
///                         ImageExtractionStatus = "ENABLED",
///                     },
///                 },
///                 ConnectorParameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["type"] = "S3",
///                     ["version"] = "1",
///                     ["connectionConfiguration"] = new Dictionary<string, object?>
///                     {
///                         ["bucketName"] = "my-documents-bucket",
///                         ["bucketOwnerAccountId"] = "123456789012",
///                     },
///                     ["aclEnabled"] = false,
///                     ["filterConfiguration"] = new Dictionary<string, object?>
///                     {
///                         ["maxFileSizeInMegaBytes"] = "500",
///                     },
///                 }),
///             },
///             Type = "MANAGED_KNOWLEDGE_BASE_CONNECTOR",
///         },
///         VectorIngestionConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationArgs
///         {
///             ParsingConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs
///             {
///                 ParsingStrategy = "SMART_PARSING",
///             },
///         },
///         KnowledgeBaseId = exampleAwsBedrockagentKnowledgeBase.Id,
///         Name = "example-s3-managed",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"type":    "S3",
/// 			"version": "1",
/// 			"connectionConfiguration": map[string]string{
/// 				"bucketName":           "my-documents-bucket",
/// 				"bucketOwnerAccountId": "123456789012",
/// 			},
/// 			"aclEnabled": false,
/// 			"filterConfiguration": map[string]string{
/// 				"maxFileSizeInMegaBytes": "500",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = bedrock.NewAgentDataSource(ctx, "example", &bedrock.AgentDataSourceArgs{
/// 			DataSourceConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationArgs{
/// 				ManagedKnowledgeBaseConnectorConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs{
/// 					MediaExtractionConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationArgs{
/// 						ImageExtractionConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfigurationArgs{
/// 							ImageExtractionStatus: pulumi.String("ENABLED"),
/// 						},
/// 					},
/// 					ConnectorParameters: pulumi.String(json0),
/// 				},
/// 				Type: pulumi.String("MANAGED_KNOWLEDGE_BASE_CONNECTOR"),
/// 			},
/// 			VectorIngestionConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationArgs{
/// 				ParsingConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs{
/// 					ParsingStrategy: pulumi.String("SMART_PARSING"),
/// 				},
/// 			},
/// 			KnowledgeBaseId: pulumi.Any(exampleAwsBedrockagentKnowledgeBase.Id),
/// 			Name:            pulumi.String("example-s3-managed"),
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
/// resource "aws_bedrock_agentdatasource" "example" {
///   data_source_configuration = {
///     managed_knowledge_base_connector_configuration = {
///       media_extraction_configuration = {
///         image_extraction_configuration = {
///           image_extraction_status = "ENABLED"
///         }
///       }
///       connector_parameters = jsonencode({
///         "type"    = "S3"
///         "version" = "1"
///         "connectionConfiguration" = {
///           "bucketName"           = "my-documents-bucket"
///           "bucketOwnerAccountId" = "123456789012"
///         }
///         "aclEnabled" = false
///         "filterConfiguration" = {
///           "maxFileSizeInMegaBytes" = "500"
///         }
///       })
///     }
///     type = "MANAGED_KNOWLEDGE_BASE_CONNECTOR"
///   }
///   vector_ingestion_configuration = {
///     parsing_configuration = {
///       parsing_strategy = "SMART_PARSING"
///     }
///   }
///   knowledge_base_id = exampleAwsBedrockagentKnowledgeBase.id
///   name              = "example-s3-managed"
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
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new AgentDataSource("example", AgentDataSourceArgs.builder()
///             .dataSourceConfiguration(AgentDataSourceDataSourceConfigurationArgs.builder()
///                 .managedKnowledgeBaseConnectorConfiguration(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs.builder()
///                     .mediaExtractionConfiguration(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationArgs.builder()
///                         .imageExtractionConfiguration(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationMediaExtractionConfigurationImageExtractionConfigurationArgs.builder()
///                             .imageExtractionStatus("ENABLED")
///                             .build())
///                         .build())
///                     .connectorParameters(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "S3"),
///                             jsonProperty("version", "1"),
///                             jsonProperty("connectionConfiguration", jsonObject(
///                                 jsonProperty("bucketName", "my-documents-bucket"),
///                                 jsonProperty("bucketOwnerAccountId", "123456789012")
///                             )),
///                             jsonProperty("aclEnabled", false),
///                             jsonProperty("filterConfiguration", jsonObject(
///                                 jsonProperty("maxFileSizeInMegaBytes", "500")
///                             ))
///                         )))
///                     .build())
///                 .type("MANAGED_KNOWLEDGE_BASE_CONNECTOR")
///                 .build())
///             .vectorIngestionConfiguration(AgentDataSourceVectorIngestionConfigurationArgs.builder()
///                 .parsingConfiguration(AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs.builder()
///                     .parsingStrategy("SMART_PARSING")
///                     .build())
///                 .build())
///             .knowledgeBaseId(exampleAwsBedrockagentKnowledgeBase.id())
///             .name("example-s3-managed")
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
///       dataSourceConfiguration:
///         managedKnowledgeBaseConnectorConfiguration:
///           mediaExtractionConfiguration:
///             imageExtractionConfiguration:
///               imageExtractionStatus: ENABLED
///           connectorParameters:
///             fn::toJSON:
///               type: S3
///               version: '1'
///               connectionConfiguration:
///                 bucketName: my-documents-bucket
///                 bucketOwnerAccountId: '123456789012'
///               aclEnabled: false
///               filterConfiguration:
///                 maxFileSizeInMegaBytes: '500'
///         type: MANAGED_KNOWLEDGE_BASE_CONNECTOR
///       vectorIngestionConfiguration:
///         parsingConfiguration:
///           parsingStrategy: SMART_PARSING
///       knowledgeBaseId: ${exampleAwsBedrockagentKnowledgeBase.id}
///       name: example-s3-managed
/// ```
///
///
/// ### Managed Knowledge Base Connector - SharePoint
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sharepoint = new aws.bedrock.AgentDataSource("sharepoint", {
///     dataSourceConfiguration: {
///         managedKnowledgeBaseConnectorConfiguration: {
///             connectorParameters: JSON.stringify({
///                 type: "SHAREPOINT",
///                 version: "1",
///                 connectionConfiguration: {
///                     tenantId: "your-entra-tenant-id",
///                     authType: "ENTRA_ID_APP_ONLY",
///                     secretArn: "arn:aws:secretsmanager:us-east-1:123456789012:secret:my-sharepoint-secret",
///                     certificateS3Path: {
///                         s3BucketName: "my-certs-bucket",
///                         s3KeyName: "certs/sharepoint-cert.crt",
///                     },
///                 },
///                 dataEntityConfiguration: {
///                     type: "DOCUMENT",
///                     crawlFiles: "true",
///                     crawlPages: "true",
///                     siteUrls: ["https://company.sharepoint.com/sites/MySite"],
///                 },
///             }),
///         },
///         type: "MANAGED_KNOWLEDGE_BASE_CONNECTOR",
///     },
///     knowledgeBaseId: example.id,
///     name: "example-sharepoint",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// sharepoint = aws.bedrock.AgentDataSource("sharepoint",
///     data_source_configuration={
///         "managed_knowledge_base_connector_configuration": {
///             "connector_parameters": json.dumps({
///                 "type": "SHAREPOINT",
///                 "version": "1",
///                 "connectionConfiguration": {
///                     "tenantId": "your-entra-tenant-id",
///                     "authType": "ENTRA_ID_APP_ONLY",
///                     "secretArn": "arn:aws:secretsmanager:us-east-1:123456789012:secret:my-sharepoint-secret",
///                     "certificateS3Path": {
///                         "s3BucketName": "my-certs-bucket",
///                         "s3KeyName": "certs/sharepoint-cert.crt",
///                     },
///                 },
///                 "dataEntityConfiguration": {
///                     "type": "DOCUMENT",
///                     "crawlFiles": "true",
///                     "crawlPages": "true",
///                     "siteUrls": ["https://company.sharepoint.com/sites/MySite"],
///                 },
///             }),
///         },
///         "type": "MANAGED_KNOWLEDGE_BASE_CONNECTOR",
///     },
///     knowledge_base_id=example["id"],
///     name="example-sharepoint")
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
///     var sharepoint = new Aws.Bedrock.AgentDataSource("sharepoint", new()
///     {
///         DataSourceConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationArgs
///         {
///             ManagedKnowledgeBaseConnectorConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs
///             {
///                 ConnectorParameters = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["type"] = "SHAREPOINT",
///                     ["version"] = "1",
///                     ["connectionConfiguration"] = new Dictionary<string, object?>
///                     {
///                         ["tenantId"] = "your-entra-tenant-id",
///                         ["authType"] = "ENTRA_ID_APP_ONLY",
///                         ["secretArn"] = "arn:aws:secretsmanager:us-east-1:123456789012:secret:my-sharepoint-secret",
///                         ["certificateS3Path"] = new Dictionary<string, object?>
///                         {
///                             ["s3BucketName"] = "my-certs-bucket",
///                             ["s3KeyName"] = "certs/sharepoint-cert.crt",
///                         },
///                     },
///                     ["dataEntityConfiguration"] = new Dictionary<string, object?>
///                     {
///                         ["type"] = "DOCUMENT",
///                         ["crawlFiles"] = "true",
///                         ["crawlPages"] = "true",
///                         ["siteUrls"] = new[]
///                         {
///                             "https://company.sharepoint.com/sites/MySite",
///                         },
///                     },
///                 }),
///             },
///             Type = "MANAGED_KNOWLEDGE_BASE_CONNECTOR",
///         },
///         KnowledgeBaseId = example.Id,
///         Name = "example-sharepoint",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"type":    "SHAREPOINT",
/// 			"version": "1",
/// 			"connectionConfiguration": map[string]interface{}{
/// 				"tenantId":  "your-entra-tenant-id",
/// 				"authType":  "ENTRA_ID_APP_ONLY",
/// 				"secretArn": "arn:aws:secretsmanager:us-east-1:123456789012:secret:my-sharepoint-secret",
/// 				"certificateS3Path": map[string]string{
/// 					"s3BucketName": "my-certs-bucket",
/// 					"s3KeyName":    "certs/sharepoint-cert.crt",
/// 				},
/// 			},
/// 			"dataEntityConfiguration": map[string]interface{}{
/// 				"type":       "DOCUMENT",
/// 				"crawlFiles": "true",
/// 				"crawlPages": "true",
/// 				"siteUrls": []string{
/// 					"https://company.sharepoint.com/sites/MySite",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = bedrock.NewAgentDataSource(ctx, "sharepoint", &bedrock.AgentDataSourceArgs{
/// 			DataSourceConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationArgs{
/// 				ManagedKnowledgeBaseConnectorConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs{
/// 					ConnectorParameters: pulumi.String(json0),
/// 				},
/// 				Type: pulumi.String("MANAGED_KNOWLEDGE_BASE_CONNECTOR"),
/// 			},
/// 			KnowledgeBaseId: pulumi.Any(example.Id),
/// 			Name:            pulumi.String("example-sharepoint"),
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
/// resource "aws_bedrock_agentdatasource" "sharepoint" {
///   data_source_configuration = {
///     managed_knowledge_base_connector_configuration = {
///       connector_parameters = jsonencode({
///         "type"    = "SHAREPOINT"
///         "version" = "1"
///         "connectionConfiguration" = {
///           "tenantId"  = "your-entra-tenant-id"
///           "authType"  = "ENTRA_ID_APP_ONLY"
///           "secretArn" = "arn:aws:secretsmanager:us-east-1:123456789012:secret:my-sharepoint-secret"
///           "certificateS3Path" = {
///             "s3BucketName" = "my-certs-bucket"
///             "s3KeyName"    = "certs/sharepoint-cert.crt"
///           }
///         }
///         "dataEntityConfiguration" = {
///           "type"       = "DOCUMENT"
///           "crawlFiles" = "true"
///           "crawlPages" = "true"
///           "siteUrls"   = ["https://company.sharepoint.com/sites/MySite"]
///         }
///       })
///     }
///     type = "MANAGED_KNOWLEDGE_BASE_CONNECTOR"
///   }
///   knowledge_base_id = example.id
///   name              = "example-sharepoint"
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
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var sharepoint = new AgentDataSource("sharepoint", AgentDataSourceArgs.builder()
///             .dataSourceConfiguration(AgentDataSourceDataSourceConfigurationArgs.builder()
///                 .managedKnowledgeBaseConnectorConfiguration(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationArgs.builder()
///                     .connectorParameters(serializeJson(
///                         jsonObject(
///                             jsonProperty("type", "SHAREPOINT"),
///                             jsonProperty("version", "1"),
///                             jsonProperty("connectionConfiguration", jsonObject(
///                                 jsonProperty("tenantId", "your-entra-tenant-id"),
///                                 jsonProperty("authType", "ENTRA_ID_APP_ONLY"),
///                                 jsonProperty("secretArn", "arn:aws:secretsmanager:us-east-1:123456789012:secret:my-sharepoint-secret"),
///                                 jsonProperty("certificateS3Path", jsonObject(
///                                     jsonProperty("s3BucketName", "my-certs-bucket"),
///                                     jsonProperty("s3KeyName", "certs/sharepoint-cert.crt")
///                                 ))
///                             )),
///                             jsonProperty("dataEntityConfiguration", jsonObject(
///                                 jsonProperty("type", "DOCUMENT"),
///                                 jsonProperty("crawlFiles", "true"),
///                                 jsonProperty("crawlPages", "true"),
///                                 jsonProperty("siteUrls", jsonArray("https://company.sharepoint.com/sites/MySite"))
///                             ))
///                         )))
///                     .build())
///                 .type("MANAGED_KNOWLEDGE_BASE_CONNECTOR")
///                 .build())
///             .knowledgeBaseId(example.id())
///             .name("example-sharepoint")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sharepoint:
///     type: aws:bedrock:AgentDataSource
///     properties:
///       dataSourceConfiguration:
///         managedKnowledgeBaseConnectorConfiguration:
///           connectorParameters:
///             fn::toJSON:
///               type: SHAREPOINT
///               version: '1'
///               connectionConfiguration:
///                 tenantId: your-entra-tenant-id
///                 authType: ENTRA_ID_APP_ONLY
///                 secretArn: arn:aws:secretsmanager:us-east-1:123456789012:secret:my-sharepoint-secret
///                 certificateS3Path:
///                   s3BucketName: my-certs-bucket
///                   s3KeyName: certs/sharepoint-cert.crt
///               dataEntityConfiguration:
///                 type: DOCUMENT
///                 crawlFiles: 'true'
///                 crawlPages: 'true'
///                 siteUrls:
///                   - https://company.sharepoint.com/sites/MySite
///         type: MANAGED_KNOWLEDGE_BASE_CONNECTOR
///       knowledgeBaseId: ${example.id}
///       name: example-sharepoint
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
///     dataSourceConfiguration: {
///         s3Configuration: {
///             bucketArn: exampleAwsS3Bucket.arn,
///         },
///         type: "S3",
///     },
///     vectorIngestionConfiguration: {
///         chunkingConfiguration: {
///             fixedSizeChunkingConfiguration: {
///                 maxTokens: 512,
///                 overlapPercentage: 20,
///             },
///             chunkingStrategy: "FIXED_SIZE",
///         },
///         parsingConfiguration: {
///             bedrockFoundationModelConfiguration: {
///                 parsingPrompt: {
///                     parsingPromptString: "Extract and transcribe all text and visual content from the document.",
///                 },
///                 modelArn: "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0",
///                 parsingModality: "MULTIMODAL",
///             },
///             parsingStrategy: "BEDROCK_FOUNDATION_MODEL",
///         },
///     },
///     knowledgeBaseId: exampleAwsBedrockagentKnowledgeBase.id,
///     name: "multimodal-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentDataSource("example",
///     data_source_configuration={
///         "s3_configuration": {
///             "bucket_arn": example_aws_s3_bucket["arn"],
///         },
///         "type": "S3",
///     },
///     vector_ingestion_configuration={
///         "chunking_configuration": {
///             "fixed_size_chunking_configuration": {
///                 "max_tokens": 512,
///                 "overlap_percentage": 20,
///             },
///             "chunking_strategy": "FIXED_SIZE",
///         },
///         "parsing_configuration": {
///             "bedrock_foundation_model_configuration": {
///                 "parsing_prompt": {
///                     "parsing_prompt_string": "Extract and transcribe all text and visual content from the document.",
///                 },
///                 "model_arn": "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0",
///                 "parsing_modality": "MULTIMODAL",
///             },
///             "parsing_strategy": "BEDROCK_FOUNDATION_MODEL",
///         },
///     },
///     knowledge_base_id=example_aws_bedrockagent_knowledge_base["id"],
///     name="multimodal-example")
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
///         DataSourceConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationArgs
///         {
///             S3Configuration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs
///             {
///                 BucketArn = exampleAwsS3Bucket.Arn,
///             },
///             Type = "S3",
///         },
///         VectorIngestionConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationArgs
///         {
///             ChunkingConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationArgs
///             {
///                 FixedSizeChunkingConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfigurationArgs
///                 {
///                     MaxTokens = 512,
///                     OverlapPercentage = 20,
///                 },
///                 ChunkingStrategy = "FIXED_SIZE",
///             },
///             ParsingConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs
///             {
///                 BedrockFoundationModelConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationArgs
///                 {
///                     ParsingPrompt = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPromptArgs
///                     {
///                         ParsingPromptString = "Extract and transcribe all text and visual content from the document.",
///                     },
///                     ModelArn = "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0",
///                     ParsingModality = "MULTIMODAL",
///                 },
///                 ParsingStrategy = "BEDROCK_FOUNDATION_MODEL",
///             },
///         },
///         KnowledgeBaseId = exampleAwsBedrockagentKnowledgeBase.Id,
///         Name = "multimodal-example",
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
/// 			DataSourceConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationArgs{
/// 				S3Configuration: &bedrock.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs{
/// 					BucketArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// 				},
/// 				Type: pulumi.String("S3"),
/// 			},
/// 			VectorIngestionConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationArgs{
/// 				ChunkingConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationArgs{
/// 					FixedSizeChunkingConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfigurationArgs{
/// 						MaxTokens:         pulumi.Int(512),
/// 						OverlapPercentage: pulumi.Int(20),
/// 					},
/// 					ChunkingStrategy: pulumi.String("FIXED_SIZE"),
/// 				},
/// 				ParsingConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs{
/// 					BedrockFoundationModelConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationArgs{
/// 						ParsingPrompt: &bedrock.AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPromptArgs{
/// 							ParsingPromptString: pulumi.String("Extract and transcribe all text and visual content from the document."),
/// 						},
/// 						ModelArn:        pulumi.String("arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0"),
/// 						ParsingModality: pulumi.String("MULTIMODAL"),
/// 					},
/// 					ParsingStrategy: pulumi.String("BEDROCK_FOUNDATION_MODEL"),
/// 				},
/// 			},
/// 			KnowledgeBaseId: pulumi.Any(exampleAwsBedrockagentKnowledgeBase.Id),
/// 			Name:            pulumi.String("multimodal-example"),
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
/// resource "aws_bedrock_agentdatasource" "example" {
///   data_source_configuration = {
///     s3_configuration = {
///       bucket_arn = exampleAwsS3Bucket.arn
///     }
///     type = "S3"
///   }
///   vector_ingestion_configuration = {
///     chunking_configuration = {
///       fixed_size_chunking_configuration = {
///         max_tokens         = 512
///         overlap_percentage = 20
///       }
///       chunking_strategy = "FIXED_SIZE"
///     }
///     parsing_configuration = {
///       bedrock_foundation_model_configuration = {
///         parsing_prompt = {
///           parsing_prompt_string = "Extract and transcribe all text and visual content from the document."
///         }
///         model_arn        = "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0"
///         parsing_modality = "MULTIMODAL"
///       }
///       parsing_strategy = "BEDROCK_FOUNDATION_MODEL"
///     }
///   }
///   knowledge_base_id = exampleAwsBedrockagentKnowledgeBase.id
///   name              = "multimodal-example"
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
///         var example = new AgentDataSource("example", AgentDataSourceArgs.builder()
///             .dataSourceConfiguration(AgentDataSourceDataSourceConfigurationArgs.builder()
///                 .s3Configuration(AgentDataSourceDataSourceConfigurationS3ConfigurationArgs.builder()
///                     .bucketArn(exampleAwsS3Bucket.arn())
///                     .build())
///                 .type("S3")
///                 .build())
///             .vectorIngestionConfiguration(AgentDataSourceVectorIngestionConfigurationArgs.builder()
///                 .chunkingConfiguration(AgentDataSourceVectorIngestionConfigurationChunkingConfigurationArgs.builder()
///                     .fixedSizeChunkingConfiguration(AgentDataSourceVectorIngestionConfigurationChunkingConfigurationFixedSizeChunkingConfigurationArgs.builder()
///                         .maxTokens(512)
///                         .overlapPercentage(20)
///                         .build())
///                     .chunkingStrategy("FIXED_SIZE")
///                     .build())
///                 .parsingConfiguration(AgentDataSourceVectorIngestionConfigurationParsingConfigurationArgs.builder()
///                     .bedrockFoundationModelConfiguration(AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationArgs.builder()
///                         .parsingPrompt(AgentDataSourceVectorIngestionConfigurationParsingConfigurationBedrockFoundationModelConfigurationParsingPromptArgs.builder()
///                             .parsingPromptString("Extract and transcribe all text and visual content from the document.")
///                             .build())
///                         .modelArn("arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0")
///                         .parsingModality("MULTIMODAL")
///                         .build())
///                     .parsingStrategy("BEDROCK_FOUNDATION_MODEL")
///                     .build())
///                 .build())
///             .knowledgeBaseId(exampleAwsBedrockagentKnowledgeBase.id())
///             .name("multimodal-example")
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
///       dataSourceConfiguration:
///         s3Configuration:
///           bucketArn: ${exampleAwsS3Bucket.arn}
///         type: S3
///       vectorIngestionConfiguration:
///         chunkingConfiguration:
///           fixedSizeChunkingConfiguration:
///             maxTokens: 512
///             overlapPercentage: 20
///           chunkingStrategy: FIXED_SIZE
///         parsingConfiguration:
///           bedrockFoundationModelConfiguration:
///             parsingPrompt:
///               parsingPromptString: Extract and transcribe all text and visual content from the document.
///             modelArn: arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-3-sonnet-20240229-v1:0
///             parsingModality: MULTIMODAL
///           parsingStrategy: BEDROCK_FOUNDATION_MODEL
///       knowledgeBaseId: ${exampleAwsBedrockagentKnowledgeBase.id}
///       name: multimodal-example
/// ```
///
///
/// ### GraphRAG with Neptune Analytics
///
/// Knowledge bases that use `NEPTUNE_ANALYTICS` storage require every associated data source to set `contextEnrichmentConfiguration`.
///
/// The graph construction model must be one that GraphRAG currently supports, and the supported models are reachable only through a cross-Region [inference profile](https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html). Passing a plain foundation model ARN fails with `ValidationException: Invalid graph bedrock foundation model provided`.
///
/// The knowledge base service role needs:
///
/// * `bedrock:GetInferenceProfile` on `*`. Scoping this to the profile ARN is not honored, and creation fails with `Not authorized to call GetInferenceProfile` even when the granted ARN matches the one in the error.
/// * `bedrock:InvokeModel` on the inference profile ARN.
/// * `bedrock:InvokeModel` on the underlying foundation model in every Region the profile routes to, which `aws bedrock get-inference-profile` reports as `models[].modelArn`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
///     knowledgeBaseConfiguration: {
///         vectorKnowledgeBaseConfiguration: {
///             embeddingModelArn: "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-english-v3",
///         },
///         type: "VECTOR",
///     },
///     storageConfiguration: {
///         neptuneAnalyticsConfiguration: {
///             fieldMapping: {
///                 metadataField: "metadata",
///                 textField: "text",
///             },
///             graphArn: exampleAwsNeptunegraphGraph.arn,
///         },
///         type: "NEPTUNE_ANALYTICS",
///     },
///     name: "graphrag-example",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// const exampleAgentDataSource = new aws.bedrock.AgentDataSource("example", {
///     dataSourceConfiguration: {
///         s3Configuration: {
///             bucketArn: exampleAwsS3Bucket.arn,
///         },
///         type: "S3",
///     },
///     vectorIngestionConfiguration: {
///         contextEnrichmentConfiguration: {
///             bedrockFoundationModelConfiguration: {
///                 enrichmentStrategyConfiguration: {
///                     method: "CHUNK_ENTITY_EXTRACTION",
///                 },
///                 modelArn: `arn:aws:bedrock:us-east-1:${current.accountId}:inference-profile/us.anthropic.claude-haiku-4-5-20251001-v1:0`,
///             },
///             type: "BEDROCK_FOUNDATION_MODEL",
///         },
///     },
///     knowledgeBaseId: example.id,
///     name: "graphrag-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
///     knowledge_base_configuration={
///         "vector_knowledge_base_configuration": {
///             "embedding_model_arn": "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-english-v3",
///         },
///         "type": "VECTOR",
///     },
///     storage_configuration={
///         "neptune_analytics_configuration": {
///             "field_mapping": {
///                 "metadata_field": "metadata",
///                 "text_field": "text",
///             },
///             "graph_arn": example_aws_neptunegraph_graph["arn"],
///         },
///         "type": "NEPTUNE_ANALYTICS",
///     },
///     name="graphrag-example",
///     role_arn=example_aws_iam_role["arn"])
/// example_agent_data_source = aws.bedrock.AgentDataSource("example",
///     data_source_configuration={
///         "s3_configuration": {
///             "bucket_arn": example_aws_s3_bucket["arn"],
///         },
///         "type": "S3",
///     },
///     vector_ingestion_configuration={
///         "context_enrichment_configuration": {
///             "bedrock_foundation_model_configuration": {
///                 "enrichment_strategy_configuration": {
///                     "method": "CHUNK_ENTITY_EXTRACTION",
///                 },
///                 "model_arn": f"arn:aws:bedrock:us-east-1:{current['accountId']}:inference-profile/us.anthropic.claude-haiku-4-5-20251001-v1:0",
///             },
///             "type": "BEDROCK_FOUNDATION_MODEL",
///         },
///     },
///     knowledge_base_id=example.id,
///     name="graphrag-example")
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
///                 EmbeddingModelArn = "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-english-v3",
///             },
///             Type = "VECTOR",
///         },
///         StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
///         {
///             NeptuneAnalyticsConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationArgs
///             {
///                 FieldMapping = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMappingArgs
///                 {
///                     MetadataField = "metadata",
///                     TextField = "text",
///                 },
///                 GraphArn = exampleAwsNeptunegraphGraph.Arn,
///             },
///             Type = "NEPTUNE_ANALYTICS",
///         },
///         Name = "graphrag-example",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
///     var exampleAgentDataSource = new Aws.Bedrock.AgentDataSource("example", new()
///     {
///         DataSourceConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationArgs
///         {
///             S3Configuration = new Aws.Bedrock.Inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs
///             {
///                 BucketArn = exampleAwsS3Bucket.Arn,
///             },
///             Type = "S3",
///         },
///         VectorIngestionConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationArgs
///         {
///             ContextEnrichmentConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationArgs
///             {
///                 BedrockFoundationModelConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationArgs
///                 {
///                     EnrichmentStrategyConfiguration = new Aws.Bedrock.Inputs.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfigurationArgs
///                     {
///                         Method = "CHUNK_ENTITY_EXTRACTION",
///                     },
///                     ModelArn = $"arn:aws:bedrock:us-east-1:{current.AccountId}:inference-profile/us.anthropic.claude-haiku-4-5-20251001-v1:0",
///                 },
///                 Type = "BEDROCK_FOUNDATION_MODEL",
///             },
///         },
///         KnowledgeBaseId = example.Id,
///         Name = "graphrag-example",
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
/// 		example, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// 			KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// 				VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// 					EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-english-v3"),
/// 				},
/// 				Type: pulumi.String("VECTOR"),
/// 			},
/// 			StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// 				NeptuneAnalyticsConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationArgs{
/// 					FieldMapping: &bedrock.AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMappingArgs{
/// 						MetadataField: pulumi.String("metadata"),
/// 						TextField:     pulumi.String("text"),
/// 					},
/// 					GraphArn: pulumi.Any(exampleAwsNeptunegraphGraph.Arn),
/// 				},
/// 				Type: pulumi.String("NEPTUNE_ANALYTICS"),
/// 			},
/// 			Name:    pulumi.String("graphrag-example"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewAgentDataSource(ctx, "example", &bedrock.AgentDataSourceArgs{
/// 			DataSourceConfiguration: &bedrock.AgentDataSourceDataSourceConfigurationArgs{
/// 				S3Configuration: &bedrock.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs{
/// 					BucketArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// 				},
/// 				Type: pulumi.String("S3"),
/// 			},
/// 			VectorIngestionConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationArgs{
/// 				ContextEnrichmentConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationArgs{
/// 					BedrockFoundationModelConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationArgs{
/// 						EnrichmentStrategyConfiguration: &bedrock.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfigurationArgs{
/// 							Method: pulumi.String("CHUNK_ENTITY_EXTRACTION"),
/// 						},
/// 						ModelArn: pulumi.Sprintf("arn:aws:bedrock:us-east-1:%v:inference-profile/us.anthropic.claude-haiku-4-5-20251001-v1:0", current.AccountId),
/// 					},
/// 					Type: pulumi.String("BEDROCK_FOUNDATION_MODEL"),
/// 				},
/// 			},
/// 			KnowledgeBaseId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:            pulumi.String("graphrag-example"),
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
///       embedding_model_arn = "arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-english-v3"
///     }
///     type = "VECTOR"
///   }
///   storage_configuration = {
///     neptune_analytics_configuration = {
///       field_mapping = {
///         metadata_field = "metadata"
///         text_field     = "text"
///       }
///       graph_arn = exampleAwsNeptunegraphGraph.arn
///     }
///     type = "NEPTUNE_ANALYTICS"
///   }
///   name     = "graphrag-example"
///   role_arn = exampleAwsIamRole.arn
/// }
/// resource "aws_bedrock_agentdatasource" "example" {
///   data_source_configuration = {
///     s3_configuration = {
///       bucket_arn = exampleAwsS3Bucket.arn
///     }
///     type = "S3"
///   }
///   vector_ingestion_configuration = {
///     context_enrichment_configuration = {
///       bedrock_foundation_model_configuration = {
///         enrichment_strategy_configuration = {
///           method = "CHUNK_ENTITY_EXTRACTION"
///         }
///         model_arn ="arn:aws:bedrock:us-east-1:${current.accountId}:inference-profile/us.anthropic.claude-haiku-4-5-20251001-v1:0"
///       }
///       type = "BEDROCK_FOUNDATION_MODEL"
///     }
///   }
///   knowledge_base_id = aws_bedrock_agentknowledgebase.example.id
///   name              = "graphrag-example"
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
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMappingArgs;
/// import com.pulumi.aws.bedrock.AgentDataSource;
/// import com.pulumi.aws.bedrock.AgentDataSourceArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceDataSourceConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfigurationArgs;
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
///                     .embeddingModelArn("arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-english-v3")
///                     .build())
///                 .type("VECTOR")
///                 .build())
///             .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
///                 .neptuneAnalyticsConfiguration(AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationArgs.builder()
///                     .fieldMapping(AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMappingArgs.builder()
///                         .metadataField("metadata")
///                         .textField("text")
///                         .build())
///                     .graphArn(exampleAwsNeptunegraphGraph.arn())
///                     .build())
///                 .type("NEPTUNE_ANALYTICS")
///                 .build())
///             .name("graphrag-example")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///         var exampleAgentDataSource = new AgentDataSource("exampleAgentDataSource", AgentDataSourceArgs.builder()
///             .dataSourceConfiguration(AgentDataSourceDataSourceConfigurationArgs.builder()
///                 .s3Configuration(AgentDataSourceDataSourceConfigurationS3ConfigurationArgs.builder()
///                     .bucketArn(exampleAwsS3Bucket.arn())
///                     .build())
///                 .type("S3")
///                 .build())
///             .vectorIngestionConfiguration(AgentDataSourceVectorIngestionConfigurationArgs.builder()
///                 .contextEnrichmentConfiguration(AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationArgs.builder()
///                     .bedrockFoundationModelConfiguration(AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationArgs.builder()
///                         .enrichmentStrategyConfiguration(AgentDataSourceVectorIngestionConfigurationContextEnrichmentConfigurationBedrockFoundationModelConfigurationEnrichmentStrategyConfigurationArgs.builder()
///                             .method("CHUNK_ENTITY_EXTRACTION")
///                             .build())
///                         .modelArn(String.format("arn:aws:bedrock:us-east-1:%s:inference-profile/us.anthropic.claude-haiku-4-5-20251001-v1:0", current.accountId()))
///                         .build())
///                     .type("BEDROCK_FOUNDATION_MODEL")
///                     .build())
///                 .build())
///             .knowledgeBaseId(example.id())
///             .name("graphrag-example")
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
///           embeddingModelArn: arn:aws:bedrock:us-east-1::foundation-model/cohere.embed-english-v3
///         type: VECTOR
///       storageConfiguration:
///         neptuneAnalyticsConfiguration:
///           fieldMapping:
///             metadataField: metadata
///             textField: text
///           graphArn: ${exampleAwsNeptunegraphGraph.arn}
///         type: NEPTUNE_ANALYTICS
///       name: graphrag-example
///       roleArn: ${exampleAwsIamRole.arn}
///   exampleAgentDataSource:
///     type: aws:bedrock:AgentDataSource
///     name: example
///     properties:
///       dataSourceConfiguration:
///         s3Configuration:
///           bucketArn: ${exampleAwsS3Bucket.arn}
///         type: S3
///       vectorIngestionConfiguration:
///         contextEnrichmentConfiguration:
///           bedrockFoundationModelConfiguration:
///             enrichmentStrategyConfiguration:
///               method: CHUNK_ENTITY_EXTRACTION
///             modelArn: arn:aws:bedrock:us-east-1:${current.accountId}:inference-profile/us.anthropic.claude-haiku-4-5-20251001-v1:0
///           type: BEDROCK_FOUNDATION_MODEL
///       knowledgeBaseId: ${example.id}
///       name: graphrag-example
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
class AgentDataSource extends pulumi.CustomResource {
  /// Data deletion policy for a data source. Valid values: `RETAIN`, `DELETE`.
  late final pulumi.Output<String> dataDeletionPolicy;
  /// Details about how the data source is stored. See `dataSourceConfiguration` Block for details.
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
  /// Details about the configuration of the server-side encryption. See `serverSideEncryptionConfiguration` Block for details.
  late final pulumi.Output<AgentDataSourceServerSideEncryptionConfiguration?> serverSideEncryptionConfiguration;
  late final pulumi.Output<AgentDataSourceTimeouts?> timeouts;
  /// Details about how to ingest the documents in the data source. See `vectorIngestionConfiguration` Block for details.
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
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    dataDeletionPolicy = registerOutput<String>('dataDeletionPolicy');
    dataSourceConfiguration = registerOutput<AgentDataSourceDataSourceConfiguration>('dataSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceDataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverSideEncryptionConfiguration = registerOutput<AgentDataSourceServerSideEncryptionConfiguration?>('serverSideEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<AgentDataSourceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vectorIngestionConfiguration = registerOutput<AgentDataSourceVectorIngestionConfiguration?>('vectorIngestionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceVectorIngestionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AgentDataSource] resource's state with the given [name] and [id].
  static AgentDataSource get(
    String name,
    pulumi.Input<String> id, {
    AgentDataSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentDataSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentDataSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentDataSource:AgentDataSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dataDeletionPolicy = registerOutput<String>('dataDeletionPolicy');
    dataSourceConfiguration = registerOutput<AgentDataSourceDataSourceConfiguration>('dataSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceDataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverSideEncryptionConfiguration = registerOutput<AgentDataSourceServerSideEncryptionConfiguration?>('serverSideEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<AgentDataSourceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vectorIngestionConfiguration = registerOutput<AgentDataSourceVectorIngestionConfiguration?>('vectorIngestionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceVectorIngestionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AgentDataSource] resource.
  AgentDataSource.reference(String urn)
    : super(
        'aws:bedrock/agentDataSource:AgentDataSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dataDeletionPolicy = registerOutput<String>('dataDeletionPolicy');
    dataSourceConfiguration = registerOutput<AgentDataSourceDataSourceConfiguration>('dataSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceDataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    knowledgeBaseId = registerOutput<String>('knowledgeBaseId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    serverSideEncryptionConfiguration = registerOutput<AgentDataSourceServerSideEncryptionConfiguration?>('serverSideEncryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceServerSideEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<AgentDataSourceTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vectorIngestionConfiguration = registerOutput<AgentDataSourceVectorIngestionConfiguration?>('vectorIngestionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentDataSourceVectorIngestionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
