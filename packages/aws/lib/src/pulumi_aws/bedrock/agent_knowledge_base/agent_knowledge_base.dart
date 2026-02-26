import 'package:pulumi/pulumi.dart';
import '../agent_knowledge_base_knowledge_base_configuration/agent_knowledge_base_knowledge_base_configuration.dart';
import '../agent_knowledge_base_storage_configuration/agent_knowledge_base_storage_configuration.dart';
import '../agent_knowledge_base_timeouts/agent_knowledge_base_timeouts.dart';
import 'agent_knowledge_base_args.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Knowledge Base.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
/// name: "example",
/// roleArn: exampleAwsIamRole.arn,
/// knowledgeBaseConfiguration: {
/// vectorKnowledgeBaseConfiguration: {
/// embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// },
/// type: "VECTOR",
/// },
/// storageConfiguration: {
/// type: "OPENSEARCH_SERVERLESS",
/// opensearchServerlessConfiguration: {
/// collectionArn: "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
/// vectorIndexName: "bedrock-knowledge-base-default-index",
/// fieldMapping: {
/// vectorField: "bedrock-knowledge-base-default-vector",
/// textField: "AMAZON_BEDROCK_TEXT_CHUNK",
/// metadataField: "AMAZON_BEDROCK_METADATA",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
/// name="example",
/// role_arn=example_aws_iam_role["arn"],
/// knowledge_base_configuration={
/// "vector_knowledge_base_configuration": {
/// "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// },
/// "type": "VECTOR",
/// },
/// storage_configuration={
/// "type": "OPENSEARCH_SERVERLESS",
/// "opensearch_serverless_configuration": {
/// "collection_arn": "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
/// "vector_index_name": "bedrock-knowledge-base-default-index",
/// "field_mapping": {
/// "vector_field": "bedrock-knowledge-base-default-vector",
/// "text_field": "AMAZON_BEDROCK_TEXT_CHUNK",
/// "metadata_field": "AMAZON_BEDROCK_METADATA",
/// },
/// },
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
/// var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
/// {
/// Name = "example",
/// RoleArn = exampleAwsIamRole.Arn,
/// KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
/// {
/// VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
/// {
/// EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// },
/// Type = "VECTOR",
/// },
/// StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
/// {
/// Type = "OPENSEARCH_SERVERLESS",
/// OpensearchServerlessConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs
/// {
/// CollectionArn = "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
/// VectorIndexName = "bedrock-knowledge-base-default-index",
/// FieldMapping = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs
/// {
/// VectorField = "bedrock-knowledge-base-default-vector",
/// TextField = "AMAZON_BEDROCK_TEXT_CHUNK",
/// MetadataField = "AMAZON_BEDROCK_METADATA",
/// },
/// },
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
/// _, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// Name:    pulumi.String("example"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// },
/// Type: pulumi.String("VECTOR"),
/// },
/// StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// Type: pulumi.String("OPENSEARCH_SERVERLESS"),
/// OpensearchServerlessConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs{
/// CollectionArn:   pulumi.String("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf"),
/// VectorIndexName: pulumi.String("bedrock-knowledge-base-default-index"),
/// FieldMapping: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs{
/// VectorField:   pulumi.String("bedrock-knowledge-base-default-vector"),
/// TextField:     pulumi.String("AMAZON_BEDROCK_TEXT_CHUNK"),
/// MetadataField: pulumi.String("AMAZON_BEDROCK_METADATA"),
/// },
/// },
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
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs;
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
/// var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
/// .name("example")
/// .roleArn(exampleAwsIamRole.arn())
/// .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
/// .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
/// .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
/// .build())
/// .type("VECTOR")
/// .build())
/// .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
/// .type("OPENSEARCH_SERVERLESS")
/// .opensearchServerlessConfiguration(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs.builder()
/// .collectionArn("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf")
/// .vectorIndexName("bedrock-knowledge-base-default-index")
/// .fieldMapping(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs.builder()
/// .vectorField("bedrock-knowledge-base-default-vector")
/// .textField("AMAZON_BEDROCK_TEXT_CHUNK")
/// .metadataField("AMAZON_BEDROCK_METADATA")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentKnowledgeBase
/// properties:
/// name: example
/// roleArn: ${exampleAwsIamRole.arn}
/// knowledgeBaseConfiguration:
/// vectorKnowledgeBaseConfiguration:
/// embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
/// type: VECTOR
/// storageConfiguration:
/// type: OPENSEARCH_SERVERLESS
/// opensearchServerlessConfiguration:
/// collectionArn: arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf
/// vectorIndexName: bedrock-knowledge-base-default-index
/// fieldMapping:
/// vectorField: bedrock-knowledge-base-default-vector
/// textField: AMAZON_BEDROCK_TEXT_CHUNK
/// metadataField: AMAZON_BEDROCK_METADATA
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Kendra Knowledge Base
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const kendraExample = new aws.bedrock.AgentKnowledgeBase("kendra_example", {
/// name: "example-kendra-kb",
/// roleArn: example.arn,
/// knowledgeBaseConfiguration: {
/// type: "KENDRA",
/// kendraKnowledgeBaseConfiguration: {
/// kendraIndexArn: "arn:aws:kendra:us-east-1:123456789012:index/example-index-id",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// kendra_example = aws.bedrock.AgentKnowledgeBase("kendra_example",
/// name="example-kendra-kb",
/// role_arn=example["arn"],
/// knowledge_base_configuration={
/// "type": "KENDRA",
/// "kendra_knowledge_base_configuration": {
/// "kendra_index_arn": "arn:aws:kendra:us-east-1:123456789012:index/example-index-id",
/// },
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
/// var kendraExample = new Aws.Bedrock.AgentKnowledgeBase("kendra_example", new()
/// {
/// Name = "example-kendra-kb",
/// RoleArn = example.Arn,
/// KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
/// {
/// Type = "KENDRA",
/// KendraKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs
/// {
/// KendraIndexArn = "arn:aws:kendra:us-east-1:123456789012:index/example-index-id",
/// },
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
/// _, err := bedrock.NewAgentKnowledgeBase(ctx, "kendra_example", &bedrock.AgentKnowledgeBaseArgs{
/// Name:    pulumi.String("example-kendra-kb"),
/// RoleArn: pulumi.Any(example.Arn),
/// KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// Type: pulumi.String("KENDRA"),
/// KendraKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs{
/// KendraIndexArn: pulumi.String("arn:aws:kendra:us-east-1:123456789012:index/example-index-id"),
/// },
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
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs;
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
/// var kendraExample = new AgentKnowledgeBase("kendraExample", AgentKnowledgeBaseArgs.builder()
/// .name("example-kendra-kb")
/// .roleArn(example.arn())
/// .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
/// .type("KENDRA")
/// .kendraKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationKendraKnowledgeBaseConfigurationArgs.builder()
/// .kendraIndexArn("arn:aws:kendra:us-east-1:123456789012:index/example-index-id")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// kendraExample:
/// type: aws:bedrock:AgentKnowledgeBase
/// name: kendra_example
/// properties:
/// name: example-kendra-kb
/// roleArn: ${example.arn}
/// knowledgeBaseConfiguration:
/// type: KENDRA
/// kendraKnowledgeBaseConfiguration:
/// kendraIndexArn: arn:aws:kendra:us-east-1:123456789012:index/example-index-id
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Structured Data Store
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
/// name: "example-kb",
/// roleArn: exampleAwsIamRole.arn,
/// knowledgeBaseConfiguration: {
/// type: "SQL",
/// sqlKnowledgeBaseConfiguration: {
/// type: "REDSHIFT",
/// redshiftConfiguration: {
/// queryEngineConfiguration: {
/// type: "PROVISIONED",
/// provisionedConfiguration: {
/// clusterIdentifier: exampleAwsRedshiftCluster.clusterIdentifier,
/// authConfiguration: {
/// type: "USERNAME",
/// databaseUser: exampleAwsRedshiftCluster.masterUsername,
/// },
/// },
/// },
/// storageConfiguration: {
/// type: "REDSHIFT",
/// redshiftConfiguration: {
/// databaseName: exampleAwsRedshiftCluster.databaseName,
/// },
/// },
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
/// name="example-kb",
/// role_arn=example_aws_iam_role["arn"],
/// knowledge_base_configuration={
/// "type": "SQL",
/// "sql_knowledge_base_configuration": {
/// "type": "REDSHIFT",
/// "redshift_configuration": {
/// "query_engine_configuration": {
/// "type": "PROVISIONED",
/// "provisioned_configuration": {
/// "cluster_identifier": example_aws_redshift_cluster["clusterIdentifier"],
/// "auth_configuration": {
/// "type": "USERNAME",
/// "database_user": example_aws_redshift_cluster["masterUsername"],
/// },
/// },
/// },
/// "storage_configuration": {
/// "type": "REDSHIFT",
/// "redshift_configuration": {
/// "database_name": example_aws_redshift_cluster["databaseName"],
/// },
/// },
/// },
/// },
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
/// var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
/// {
/// Name = "example-kb",
/// RoleArn = exampleAwsIamRole.Arn,
/// KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
/// {
/// Type = "SQL",
/// SqlKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationArgs
/// {
/// Type = "REDSHIFT",
/// RedshiftConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationArgs
/// {
/// QueryEngineConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationArgs
/// {
/// Type = "PROVISIONED",
/// ProvisionedConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationArgs
/// {
/// ClusterIdentifier = exampleAwsRedshiftCluster.ClusterIdentifier,
/// AuthConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfigurationArgs
/// {
/// Type = "USERNAME",
/// DatabaseUser = exampleAwsRedshiftCluster.MasterUsername,
/// },
/// },
/// },
/// StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationArgs
/// {
/// Type = "REDSHIFT",
/// RedshiftConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfigurationArgs
/// {
/// DatabaseName = exampleAwsRedshiftCluster.DatabaseName,
/// },
/// },
/// },
/// },
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
/// _, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// Name:    pulumi.String("example-kb"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// Type: pulumi.String("SQL"),
/// SqlKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationArgs{
/// Type: pulumi.String("REDSHIFT"),
/// RedshiftConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationArgs{
/// QueryEngineConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationArgs{
/// Type: pulumi.String("PROVISIONED"),
/// ProvisionedConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationArgs{
/// ClusterIdentifier: pulumi.Any(exampleAwsRedshiftCluster.ClusterIdentifier),
/// AuthConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfigurationArgs{
/// Type:         pulumi.String("USERNAME"),
/// DatabaseUser: pulumi.Any(exampleAwsRedshiftCluster.MasterUsername),
/// },
/// },
/// },
/// StorageConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationArgs{
/// Type: pulumi.String("REDSHIFT"),
/// RedshiftConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfigurationArgs{
/// DatabaseName: pulumi.Any(exampleAwsRedshiftCluster.DatabaseName),
/// },
/// },
/// },
/// },
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
/// var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
/// .name("example-kb")
/// .roleArn(exampleAwsIamRole.arn())
/// .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
/// .type("SQL")
/// .sqlKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationArgs.builder()
/// .type("REDSHIFT")
/// .redshiftConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationArgs.builder()
/// .queryEngineConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationArgs.builder()
/// .type("PROVISIONED")
/// .provisionedConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationArgs.builder()
/// .clusterIdentifier(exampleAwsRedshiftCluster.clusterIdentifier())
/// .authConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfigurationArgs.builder()
/// .type("USERNAME")
/// .databaseUser(exampleAwsRedshiftCluster.masterUsername())
/// .build())
/// .build())
/// .build())
/// .storageConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationArgs.builder()
/// .type("REDSHIFT")
/// .redshiftConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfigurationRedshiftConfigurationArgs.builder()
/// .databaseName(exampleAwsRedshiftCluster.databaseName())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentKnowledgeBase
/// properties:
/// name: example-kb
/// roleArn: ${exampleAwsIamRole.arn}
/// knowledgeBaseConfiguration:
/// type: SQL
/// sqlKnowledgeBaseConfiguration:
/// type: REDSHIFT
/// redshiftConfiguration:
/// queryEngineConfiguration:
/// type: PROVISIONED
/// provisionedConfiguration:
/// clusterIdentifier: ${exampleAwsRedshiftCluster.clusterIdentifier}
/// authConfiguration:
/// type: USERNAME
/// databaseUser: ${exampleAwsRedshiftCluster.masterUsername}
/// storageConfiguration:
/// type: REDSHIFT
/// redshiftConfiguration:
/// databaseName: ${exampleAwsRedshiftCluster.databaseName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### OpenSearch Managed Cluster Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
/// name: "example",
/// roleArn: exampleAwsIamRole.arn,
/// knowledgeBaseConfiguration: {
/// vectorKnowledgeBaseConfiguration: {
/// embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// },
/// type: "VECTOR",
/// },
/// storageConfiguration: {
/// type: "OPENSEARCH_MANAGED_CLUSTER",
/// opensearchManagedClusterConfiguration: {
/// domainArn: "arn:aws:es:us-west-2:123456789012:domain/example-domain",
/// domainEndpoint: "https://search-example-domain.us-west-2.es.amazonaws.com",
/// vectorIndexName: "example_index",
/// fieldMapping: {
/// metadataField: "metadata",
/// textField: "chunks",
/// vectorField: "embedding",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
/// name="example",
/// role_arn=example_aws_iam_role["arn"],
/// knowledge_base_configuration={
/// "vector_knowledge_base_configuration": {
/// "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// },
/// "type": "VECTOR",
/// },
/// storage_configuration={
/// "type": "OPENSEARCH_MANAGED_CLUSTER",
/// "opensearch_managed_cluster_configuration": {
/// "domain_arn": "arn:aws:es:us-west-2:123456789012:domain/example-domain",
/// "domain_endpoint": "https://search-example-domain.us-west-2.es.amazonaws.com",
/// "vector_index_name": "example_index",
/// "field_mapping": {
/// "metadata_field": "metadata",
/// "text_field": "chunks",
/// "vector_field": "embedding",
/// },
/// },
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
/// var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
/// {
/// Name = "example",
/// RoleArn = exampleAwsIamRole.Arn,
/// KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
/// {
/// VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
/// {
/// EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// },
/// Type = "VECTOR",
/// },
/// StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
/// {
/// Type = "OPENSEARCH_MANAGED_CLUSTER",
/// OpensearchManagedClusterConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs
/// {
/// DomainArn = "arn:aws:es:us-west-2:123456789012:domain/example-domain",
/// DomainEndpoint = "https://search-example-domain.us-west-2.es.amazonaws.com",
/// VectorIndexName = "example_index",
/// FieldMapping = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs
/// {
/// MetadataField = "metadata",
/// TextField = "chunks",
/// VectorField = "embedding",
/// },
/// },
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
/// _, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// Name:    pulumi.String("example"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// },
/// Type: pulumi.String("VECTOR"),
/// },
/// StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// Type: pulumi.String("OPENSEARCH_MANAGED_CLUSTER"),
/// OpensearchManagedClusterConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs{
/// DomainArn:       pulumi.String("arn:aws:es:us-west-2:123456789012:domain/example-domain"),
/// DomainEndpoint:  pulumi.String("https://search-example-domain.us-west-2.es.amazonaws.com"),
/// VectorIndexName: pulumi.String("example_index"),
/// FieldMapping: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs{
/// MetadataField: pulumi.String("metadata"),
/// TextField:     pulumi.String("chunks"),
/// VectorField:   pulumi.String("embedding"),
/// },
/// },
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
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs;
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
/// var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
/// .name("example")
/// .roleArn(exampleAwsIamRole.arn())
/// .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
/// .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
/// .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
/// .build())
/// .type("VECTOR")
/// .build())
/// .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
/// .type("OPENSEARCH_MANAGED_CLUSTER")
/// .opensearchManagedClusterConfiguration(AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationArgs.builder()
/// .domainArn("arn:aws:es:us-west-2:123456789012:domain/example-domain")
/// .domainEndpoint("https://search-example-domain.us-west-2.es.amazonaws.com")
/// .vectorIndexName("example_index")
/// .fieldMapping(AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMappingArgs.builder()
/// .metadataField("metadata")
/// .textField("chunks")
/// .vectorField("embedding")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentKnowledgeBase
/// properties:
/// name: example
/// roleArn: ${exampleAwsIamRole.arn}
/// knowledgeBaseConfiguration:
/// vectorKnowledgeBaseConfiguration:
/// embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
/// type: VECTOR
/// storageConfiguration:
/// type: OPENSEARCH_MANAGED_CLUSTER
/// opensearchManagedClusterConfiguration:
/// domainArn: arn:aws:es:us-west-2:123456789012:domain/example-domain
/// domainEndpoint: https://search-example-domain.us-west-2.es.amazonaws.com
/// vectorIndexName: example_index
/// fieldMapping:
/// metadataField: metadata
/// textField: chunks
/// vectorField: embedding
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Supplemental Data Storage Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.AgentKnowledgeBase("example", {
/// name: "example",
/// roleArn: exampleAwsIamRole.arn,
/// knowledgeBaseConfiguration: {
/// vectorKnowledgeBaseConfiguration: {
/// embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// embeddingModelConfiguration: {
/// bedrockEmbeddingModelConfiguration: {
/// dimensions: 1024,
/// embeddingDataType: "FLOAT32",
/// },
/// },
/// supplementalDataStorageConfiguration: {
/// storageLocation: {
/// type: "S3",
/// s3Location: {
/// uri: "s3://my-bucket/chunk-processor/",
/// },
/// },
/// },
/// },
/// type: "VECTOR",
/// },
/// storageConfiguration: {
/// type: "OPENSEARCH_SERVERLESS",
/// opensearchServerlessConfiguration: {
/// collectionArn: "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
/// vectorIndexName: "bedrock-knowledge-base-default-index",
/// fieldMapping: {
/// vectorField: "bedrock-knowledge-base-default-vector",
/// textField: "AMAZON_BEDROCK_TEXT_CHUNK",
/// metadataField: "AMAZON_BEDROCK_METADATA",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.AgentKnowledgeBase("example",
/// name="example",
/// role_arn=example_aws_iam_role["arn"],
/// knowledge_base_configuration={
/// "vector_knowledge_base_configuration": {
/// "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// "embedding_model_configuration": {
/// "bedrock_embedding_model_configuration": {
/// "dimensions": 1024,
/// "embedding_data_type": "FLOAT32",
/// },
/// },
/// "supplemental_data_storage_configuration": {
/// "storage_location": {
/// "type": "S3",
/// "s3Location": {
/// "uri": "s3://my-bucket/chunk-processor/",
/// },
/// },
/// },
/// },
/// "type": "VECTOR",
/// },
/// storage_configuration={
/// "type": "OPENSEARCH_SERVERLESS",
/// "opensearch_serverless_configuration": {
/// "collection_arn": "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
/// "vector_index_name": "bedrock-knowledge-base-default-index",
/// "field_mapping": {
/// "vector_field": "bedrock-knowledge-base-default-vector",
/// "text_field": "AMAZON_BEDROCK_TEXT_CHUNK",
/// "metadata_field": "AMAZON_BEDROCK_METADATA",
/// },
/// },
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
/// var example = new Aws.Bedrock.AgentKnowledgeBase("example", new()
/// {
/// Name = "example",
/// RoleArn = exampleAwsIamRole.Arn,
/// KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
/// {
/// VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
/// {
/// EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// EmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs
/// {
/// BedrockEmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs
/// {
/// Dimensions = 1024,
/// EmbeddingDataType = "FLOAT32",
/// },
/// },
/// SupplementalDataStorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs
/// {
/// StorageLocation =
/// {
/// { "type", "S3" },
/// { "s3Location",
/// {
/// { "uri", "s3://my-bucket/chunk-processor/" },
/// } },
/// },
/// },
/// },
/// Type = "VECTOR",
/// },
/// StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
/// {
/// Type = "OPENSEARCH_SERVERLESS",
/// OpensearchServerlessConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs
/// {
/// CollectionArn = "arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf",
/// VectorIndexName = "bedrock-knowledge-base-default-index",
/// FieldMapping = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs
/// {
/// VectorField = "bedrock-knowledge-base-default-vector",
/// TextField = "AMAZON_BEDROCK_TEXT_CHUNK",
/// MetadataField = "AMAZON_BEDROCK_METADATA",
/// },
/// },
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
/// _, err := bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// Name:    pulumi.String("example"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// EmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs{
/// BedrockEmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs{
/// Dimensions:        pulumi.Int(1024),
/// EmbeddingDataType: pulumi.String("FLOAT32"),
/// },
/// },
/// SupplementalDataStorageConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs{
/// StorageLocation: map[string]interface{}{
/// "type": "S3",
/// "s3Location": map[string]interface{}{
/// "uri": "s3://my-bucket/chunk-processor/",
/// },
/// },
/// },
/// },
/// Type: pulumi.String("VECTOR"),
/// },
/// StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// Type: pulumi.String("OPENSEARCH_SERVERLESS"),
/// OpensearchServerlessConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs{
/// CollectionArn:   pulumi.String("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf"),
/// VectorIndexName: pulumi.String("bedrock-knowledge-base-default-index"),
/// FieldMapping: &bedrock.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs{
/// VectorField:   pulumi.String("bedrock-knowledge-base-default-vector"),
/// TextField:     pulumi.String("AMAZON_BEDROCK_TEXT_CHUNK"),
/// MetadataField: pulumi.String("AMAZON_BEDROCK_METADATA"),
/// },
/// },
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
/// import com.pulumi.aws.bedrock.AgentKnowledgeBase;
/// import com.pulumi.aws.bedrock.AgentKnowledgeBaseArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs;
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
/// var example = new AgentKnowledgeBase("example", AgentKnowledgeBaseArgs.builder()
/// .name("example")
/// .roleArn(exampleAwsIamRole.arn())
/// .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
/// .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
/// .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
/// .embeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs.builder()
/// .bedrockEmbeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs.builder()
/// .dimensions(1024)
/// .embeddingDataType("FLOAT32")
/// .build())
/// .build())
/// .supplementalDataStorageConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationSupplementalDataStorageConfigurationArgs.builder()
/// .storageLocation(Map.ofEntries(
/// Map.entry("type", "S3"),
/// Map.entry("s3Location", Map.of("uri", "s3://my-bucket/chunk-processor/"))
/// ))
/// .build())
/// .build())
/// .type("VECTOR")
/// .build())
/// .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
/// .type("OPENSEARCH_SERVERLESS")
/// .opensearchServerlessConfiguration(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationArgs.builder()
/// .collectionArn("arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf")
/// .vectorIndexName("bedrock-knowledge-base-default-index")
/// .fieldMapping(AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMappingArgs.builder()
/// .vectorField("bedrock-knowledge-base-default-vector")
/// .textField("AMAZON_BEDROCK_TEXT_CHUNK")
/// .metadataField("AMAZON_BEDROCK_METADATA")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:bedrock:AgentKnowledgeBase
/// properties:
/// name: example
/// roleArn: ${exampleAwsIamRole.arn}
/// knowledgeBaseConfiguration:
/// vectorKnowledgeBaseConfiguration:
/// embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
/// embeddingModelConfiguration:
/// bedrockEmbeddingModelConfiguration:
/// dimensions: 1024
/// embeddingDataType: FLOAT32
/// supplementalDataStorageConfiguration:
/// storageLocation:
/// type: S3
/// s3Location:
/// uri: s3://my-bucket/chunk-processor/
/// type: VECTOR
/// storageConfiguration:
/// type: OPENSEARCH_SERVERLESS
/// opensearchServerlessConfiguration:
/// collectionArn: arn:aws:aoss:us-west-2:123456789012:collection/142bezjddq707i5stcrf
/// vectorIndexName: bedrock-knowledge-base-default-index
/// fieldMapping:
/// vectorField: bedrock-knowledge-base-default-vector
/// textField: AMAZON_BEDROCK_TEXT_CHUNK
/// metadataField: AMAZON_BEDROCK_METADATA
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### S3 Vectors Configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.VectorsVectorBucket("example", {vectorBucketName: "example-bucket"});
/// const exampleVectorsIndex = new aws.s3.VectorsIndex("example", {
/// indexName: "example-index",
/// vectorBucketName: example.vectorBucketName,
/// dataType: "float32",
/// dimension: 256,
/// distanceMetric: "euclidean",
/// });
/// const exampleAgentKnowledgeBase = new aws.bedrock.AgentKnowledgeBase("example", {
/// name: "example-s3vectors-kb",
/// roleArn: exampleAwsIamRole.arn,
/// knowledgeBaseConfiguration: {
/// vectorKnowledgeBaseConfiguration: {
/// embeddingModelArn: "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// embeddingModelConfiguration: {
/// bedrockEmbeddingModelConfiguration: {
/// dimensions: 256,
/// embeddingDataType: "FLOAT32",
/// },
/// },
/// },
/// type: "VECTOR",
/// },
/// storageConfiguration: {
/// type: "S3_VECTORS",
/// s3VectorsConfiguration: {
/// indexArn: exampleVectorsIndex.indexArn,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.VectorsVectorBucket("example", vector_bucket_name="example-bucket")
/// example_vectors_index = aws.s3.VectorsIndex("example",
/// index_name="example-index",
/// vector_bucket_name=example.vector_bucket_name,
/// data_type="float32",
/// dimension=256,
/// distance_metric="euclidean")
/// example_agent_knowledge_base = aws.bedrock.AgentKnowledgeBase("example",
/// name="example-s3vectors-kb",
/// role_arn=example_aws_iam_role["arn"],
/// knowledge_base_configuration={
/// "vector_knowledge_base_configuration": {
/// "embedding_model_arn": "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// "embedding_model_configuration": {
/// "bedrock_embedding_model_configuration": {
/// "dimensions": 256,
/// "embedding_data_type": "FLOAT32",
/// },
/// },
/// },
/// "type": "VECTOR",
/// },
/// storage_configuration={
/// "type": "S3_VECTORS",
/// "s3_vectors_configuration": {
/// "index_arn": example_vectors_index.index_arn,
/// },
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
/// var example = new Aws.S3.VectorsVectorBucket("example", new()
/// {
/// VectorBucketName = "example-bucket",
/// });
///
/// var exampleVectorsIndex = new Aws.S3.VectorsIndex("example", new()
/// {
/// IndexName = "example-index",
/// VectorBucketName = example.VectorBucketName,
/// DataType = "float32",
/// Dimension = 256,
/// DistanceMetric = "euclidean",
/// });
///
/// var exampleAgentKnowledgeBase = new Aws.Bedrock.AgentKnowledgeBase("example", new()
/// {
/// Name = "example-s3vectors-kb",
/// RoleArn = exampleAwsIamRole.Arn,
/// KnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs
/// {
/// VectorKnowledgeBaseConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs
/// {
/// EmbeddingModelArn = "arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0",
/// EmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs
/// {
/// BedrockEmbeddingModelConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs
/// {
/// Dimensions = 256,
/// EmbeddingDataType = "FLOAT32",
/// },
/// },
/// },
/// Type = "VECTOR",
/// },
/// StorageConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationArgs
/// {
/// Type = "S3_VECTORS",
/// S3VectorsConfiguration = new Aws.Bedrock.Inputs.AgentKnowledgeBaseStorageConfigurationS3VectorsConfigurationArgs
/// {
/// IndexArn = exampleVectorsIndex.IndexArn,
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := s3.NewVectorsVectorBucket(ctx, "example", &s3.VectorsVectorBucketArgs{
/// VectorBucketName: pulumi.String("example-bucket"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVectorsIndex, err := s3.NewVectorsIndex(ctx, "example", &s3.VectorsIndexArgs{
/// IndexName:        pulumi.String("example-index"),
/// VectorBucketName: example.VectorBucketName,
/// DataType:         pulumi.String("float32"),
/// Dimension:        pulumi.Int(256),
/// DistanceMetric:   pulumi.String("euclidean"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = bedrock.NewAgentKnowledgeBase(ctx, "example", &bedrock.AgentKnowledgeBaseArgs{
/// Name:    pulumi.String("example-s3vectors-kb"),
/// RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// KnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationArgs{
/// VectorKnowledgeBaseConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs{
/// EmbeddingModelArn: pulumi.String("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0"),
/// EmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs{
/// BedrockEmbeddingModelConfiguration: &bedrock.AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs{
/// Dimensions:        pulumi.Int(256),
/// EmbeddingDataType: pulumi.String("FLOAT32"),
/// },
/// },
/// },
/// Type: pulumi.String("VECTOR"),
/// },
/// StorageConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationArgs{
/// Type: pulumi.String("S3_VECTORS"),
/// S3VectorsConfiguration: &bedrock.AgentKnowledgeBaseStorageConfigurationS3VectorsConfigurationArgs{
/// IndexArn: exampleVectorsIndex.IndexArn,
/// },
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
/// var example = new VectorsVectorBucket("example", VectorsVectorBucketArgs.builder()
/// .vectorBucketName("example-bucket")
/// .build());
///
/// var exampleVectorsIndex = new VectorsIndex("exampleVectorsIndex", VectorsIndexArgs.builder()
/// .indexName("example-index")
/// .vectorBucketName(example.vectorBucketName())
/// .dataType("float32")
/// .dimension(256)
/// .distanceMetric("euclidean")
/// .build());
///
/// var exampleAgentKnowledgeBase = new AgentKnowledgeBase("exampleAgentKnowledgeBase", AgentKnowledgeBaseArgs.builder()
/// .name("example-s3vectors-kb")
/// .roleArn(exampleAwsIamRole.arn())
/// .knowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationArgs.builder()
/// .vectorKnowledgeBaseConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationArgs.builder()
/// .embeddingModelArn("arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0")
/// .embeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationArgs.builder()
/// .bedrockEmbeddingModelConfiguration(AgentKnowledgeBaseKnowledgeBaseConfigurationVectorKnowledgeBaseConfigurationEmbeddingModelConfigurationBedrockEmbeddingModelConfigurationArgs.builder()
/// .dimensions(256)
/// .embeddingDataType("FLOAT32")
/// .build())
/// .build())
/// .build())
/// .type("VECTOR")
/// .build())
/// .storageConfiguration(AgentKnowledgeBaseStorageConfigurationArgs.builder()
/// .type("S3_VECTORS")
/// .s3VectorsConfiguration(AgentKnowledgeBaseStorageConfigurationS3VectorsConfigurationArgs.builder()
/// .indexArn(exampleVectorsIndex.indexArn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:s3:VectorsVectorBucket
/// properties:
/// vectorBucketName: example-bucket
/// exampleVectorsIndex:
/// type: aws:s3:VectorsIndex
/// name: example
/// properties:
/// indexName: example-index
/// vectorBucketName: ${example.vectorBucketName}
/// dataType: float32
/// dimension: 256
/// distanceMetric: euclidean
/// exampleAgentKnowledgeBase:
/// type: aws:bedrock:AgentKnowledgeBase
/// name: example
/// properties:
/// name: example-s3vectors-kb
/// roleArn: ${exampleAwsIamRole.arn}
/// knowledgeBaseConfiguration:
/// vectorKnowledgeBaseConfiguration:
/// embeddingModelArn: arn:aws:bedrock:us-west-2::foundation-model/amazon.titan-embed-text-v2:0
/// embeddingModelConfiguration:
/// bedrockEmbeddingModelConfiguration:
/// dimensions: 256
/// embeddingDataType: FLOAT32
/// type: VECTOR
/// storageConfiguration:
/// type: S3_VECTORS
/// s3VectorsConfiguration:
/// indexArn: ${exampleVectorsIndex.indexArn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Knowledge Base using the knowledge base ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase example EMDPPAYPZI
/// ```
class AgentKnowledgeBase extends CustomResource {
  /// ARN of the knowledge base.
  late final Output<String> arn;

  /// Time at which the knowledge base was created.
  late final Output<String> createdAt;

  /// Description of the knowledge base.
  late final Output<String?> description;
  late final Output<List<String>> failureReasons;

  /// Details about the embeddings configuration of the knowledge base. See <span pulumi-lang-nodejs="`knowledgeBaseConfiguration`" pulumi-lang-dotnet="`KnowledgeBaseConfiguration`" pulumi-lang-go="`knowledgeBaseConfiguration`" pulumi-lang-python="`knowledge_base_configuration`" pulumi-lang-yaml="`knowledgeBaseConfiguration`" pulumi-lang-java="`knowledgeBaseConfiguration`">`knowledge_base_configuration`</span> block for details.
  late final Output<AgentKnowledgeBaseKnowledgeBaseConfiguration>
      knowledgeBaseConfiguration;

  /// Name of the knowledge base.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  ///
  /// The following arguments are optional:
  late final Output<String> roleArn;

  /// Details about the storage configuration of the knowledge base. See <span pulumi-lang-nodejs="`storageConfiguration`" pulumi-lang-dotnet="`StorageConfiguration`" pulumi-lang-go="`storageConfiguration`" pulumi-lang-python="`storage_configuration`" pulumi-lang-yaml="`storageConfiguration`" pulumi-lang-java="`storageConfiguration`">`storage_configuration`</span> block for details.
  late final Output<AgentKnowledgeBaseStorageConfiguration?>
      storageConfiguration;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentKnowledgeBaseTimeouts?> timeouts;

  /// Time at which the knowledge base was last updated.
  late final Output<String> updatedAt;

  AgentKnowledgeBase(
    String name, {
    AgentKnowledgeBaseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.failureReasons = Output.createUnknown<List<String>>();
    this.knowledgeBaseConfiguration =
        Output.createUnknown<AgentKnowledgeBaseKnowledgeBaseConfiguration>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.storageConfiguration =
        Output.createUnknown<AgentKnowledgeBaseStorageConfiguration?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<AgentKnowledgeBaseTimeouts?>();
    this.updatedAt = Output.createUnknown<String>();
  }
}
