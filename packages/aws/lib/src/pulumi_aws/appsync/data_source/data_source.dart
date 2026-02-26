import 'package:pulumi/pulumi.dart';
import '../data_source_dynamodb_config/data_source_dynamodb_config.dart';
import '../data_source_elasticsearch_config/data_source_elasticsearch_config.dart';
import '../data_source_event_bridge_config/data_source_event_bridge_config.dart';
import '../data_source_http_config/data_source_http_config.dart';
import '../data_source_lambda_config/data_source_lambda_config.dart';
import '../data_source_opensearchservice_config/data_source_opensearchservice_config.dart';
import '../data_source_relational_database_config/data_source_relational_database_config.dart';
import 'data_source_args.dart';

/// Provides an AppSync Data Source.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTable = new aws.dynamodb.Table("example", {
/// name: "example",
/// readCapacity: 1,
/// writeCapacity: 1,
/// hashKey: "UserId",
/// attributes: [{
/// name: "UserId",
/// type: "S",
/// }],
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["appsync.amazonaws.com"],
/// }],
/// actions: ["sts:AssumeRole"],
/// }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
/// name: "example",
/// assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// actions: ["dynamodb:*"],
/// resources: [exampleTable.arn],
/// }],
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
/// name: "example",
/// role: exampleRole.id,
/// policy: example.apply(example => example.json),
/// });
/// const exampleGraphQLApi = new aws.appsync.GraphQLApi("example", {
/// authenticationType: "API_KEY",
/// name: "my_appsync_example",
/// });
/// const exampleDataSource = new aws.appsync.DataSource("example", {
/// apiId: exampleGraphQLApi.id,
/// name: "my_appsync_example",
/// serviceRoleArn: exampleRole.arn,
/// type: "AMAZON_DYNAMODB",
/// dynamodbConfig: {
/// tableName: exampleTable.name,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table = aws.dynamodb.Table("example",
/// name="example",
/// read_capacity=1,
/// write_capacity=1,
/// hash_key="UserId",
/// attributes=[{
/// "name": "UserId",
/// "type": "S",
/// }])
/// assume_role = aws.iam.get_policy_document(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["appsync.amazonaws.com"],
/// }],
/// "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
/// name="example",
/// assume_role_policy=assume_role.json)
/// example = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "actions": ["dynamodb:*"],
/// "resources": [example_table.arn],
/// }])
/// example_role_policy = aws.iam.RolePolicy("example",
/// name="example",
/// role=example_role.id,
/// policy=example.json)
/// example_graph_ql_api = aws.appsync.GraphQLApi("example",
/// authentication_type="API_KEY",
/// name="my_appsync_example")
/// example_data_source = aws.appsync.DataSource("example",
/// api_id=example_graph_ql_api.id,
/// name="my_appsync_example",
/// service_role_arn=example_role.arn,
/// type="AMAZON_DYNAMODB",
/// dynamodb_config={
/// "table_name": example_table.name,
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
/// var exampleTable = new Aws.DynamoDB.Table("example", new()
/// {
/// Name = "example",
/// ReadCapacity = 1,
/// WriteCapacity = 1,
/// HashKey = "UserId",
/// Attributes = new[]
/// {
/// new Aws.DynamoDB.Inputs.TableAttributeArgs
/// {
/// Name = "UserId",
/// Type = "S",
/// },
/// },
/// });
///
/// var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "appsync.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "sts:AssumeRole",
/// },
/// },
/// },
/// });
///
/// var exampleRole = new Aws.Iam.Role("example", new()
/// {
/// Name = "example",
/// AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "dynamodb:*",
/// },
/// Resources = new[]
/// {
/// exampleTable.Arn,
/// },
/// },
/// },
/// });
///
/// var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
/// {
/// Name = "example",
/// Role = exampleRole.Id,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// var exampleGraphQLApi = new Aws.AppSync.GraphQLApi("example", new()
/// {
/// AuthenticationType = "API_KEY",
/// Name = "my_appsync_example",
/// });
///
/// var exampleDataSource = new Aws.AppSync.DataSource("example", new()
/// {
/// ApiId = exampleGraphQLApi.Id,
/// Name = "my_appsync_example",
/// ServiceRoleArn = exampleRole.Arn,
/// Type = "AMAZON_DYNAMODB",
/// DynamodbConfig = new Aws.AppSync.Inputs.DataSourceDynamodbConfigArgs
/// {
/// TableName = exampleTable.Name,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleTable, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// Name:          pulumi.String("example"),
/// ReadCapacity:  pulumi.Int(1),
/// WriteCapacity: pulumi.Int(1),
/// HashKey:       pulumi.String("UserId"),
/// Attributes: dynamodb.TableAttributeArray{
/// &dynamodb.TableAttributeArgs{
/// Name: pulumi.String("UserId"),
/// Type: pulumi.String("S"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef("Allow"),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "appsync.amazonaws.com",
/// },
/// },
/// },
/// Actions: []string{
/// "sts:AssumeRole",
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// })
/// if err != nil {
/// return err
/// }
/// example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Actions: pulumi.StringArray{
/// pulumi.String("dynamodb:*"),
/// },
/// Resources: pulumi.StringArray{
/// exampleTable.Arn,
/// },
/// },
/// },
/// }, nil)
/// _, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// Name: pulumi.String("example"),
/// Role: exampleRole.ID(),
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// exampleGraphQLApi, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// AuthenticationType: pulumi.String("API_KEY"),
/// Name:               pulumi.String("my_appsync_example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = appsync.NewDataSource(ctx, "example", &appsync.DataSourceArgs{
/// ApiId:          exampleGraphQLApi.ID(),
/// Name:           pulumi.String("my_appsync_example"),
/// ServiceRoleArn: exampleRole.Arn,
/// Type:           pulumi.String("AMAZON_DYNAMODB"),
/// DynamodbConfig: &appsync.DataSourceDynamodbConfigArgs{
/// TableName: exampleTable.Name,
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
/// import com.pulumi.aws.dynamodb.Table;
/// import com.pulumi.aws.dynamodb.TableArgs;
/// import com.pulumi.aws.dynamodb.inputs.TableAttributeArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.DataSource;
/// import com.pulumi.aws.appsync.DataSourceArgs;
/// import com.pulumi.aws.appsync.inputs.DataSourceDynamodbConfigArgs;
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
/// var exampleTable = new Table("exampleTable", TableArgs.builder()
/// .name("example")
/// .readCapacity(1)
/// .writeCapacity(1)
/// .hashKey("UserId")
/// .attributes(TableAttributeArgs.builder()
/// .name("UserId")
/// .type("S")
/// .build())
/// .build());
///
/// final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("appsync.amazonaws.com")
/// .build())
/// .actions("sts:AssumeRole")
/// .build())
/// .build());
///
/// var exampleRole = new Role("exampleRole", RoleArgs.builder()
/// .name("example")
/// .assumeRolePolicy(assumeRole.json())
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .actions("dynamodb:*")
/// .resources(exampleTable.arn())
/// .build())
/// .build());
///
/// var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
/// .name("example")
/// .role(exampleRole.id())
/// .policy(example.applyValue(_example -> _example.json()))
/// .build());
///
/// var exampleGraphQLApi = new GraphQLApi("exampleGraphQLApi", GraphQLApiArgs.builder()
/// .authenticationType("API_KEY")
/// .name("my_appsync_example")
/// .build());
///
/// var exampleDataSource = new DataSource("exampleDataSource", DataSourceArgs.builder()
/// .apiId(exampleGraphQLApi.id())
/// .name("my_appsync_example")
/// .serviceRoleArn(exampleRole.arn())
/// .type("AMAZON_DYNAMODB")
/// .dynamodbConfig(DataSourceDynamodbConfigArgs.builder()
/// .tableName(exampleTable.name())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleTable:
/// type: aws:dynamodb:Table
/// name: example
/// properties:
/// name: example
/// readCapacity: 1
/// writeCapacity: 1
/// hashKey: UserId
/// attributes:
/// - name: UserId
/// type: S
/// exampleRole:
/// type: aws:iam:Role
/// name: example
/// properties:
/// name: example
/// assumeRolePolicy: ${assumeRole.json}
/// exampleRolePolicy:
/// type: aws:iam:RolePolicy
/// name: example
/// properties:
/// name: example
/// role: ${exampleRole.id}
/// policy: ${example.json}
/// exampleGraphQLApi:
/// type: aws:appsync:GraphQLApi
/// name: example
/// properties:
/// authenticationType: API_KEY
/// name: my_appsync_example
/// exampleDataSource:
/// type: aws:appsync:DataSource
/// name: example
/// properties:
/// apiId: ${exampleGraphQLApi.id}
/// name: my_appsync_example
/// serviceRoleArn: ${exampleRole.arn}
/// type: AMAZON_DYNAMODB
/// dynamodbConfig:
/// tableName: ${exampleTable.name}
/// variables:
/// assumeRole:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - appsync.amazonaws.com
/// actions:
/// - sts:AssumeRole
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// actions:
/// - dynamodb:*
/// resources:
/// - ${exampleTable.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appsync.DataSource`" pulumi-lang-dotnet="`aws.appsync.DataSource`" pulumi-lang-go="`appsync.DataSource`" pulumi-lang-python="`appsync.DataSource`" pulumi-lang-yaml="`aws.appsync.DataSource`" pulumi-lang-java="`aws.appsync.DataSource`">`aws.appsync.DataSource`</span> using the <span pulumi-lang-nodejs="`apiId`" pulumi-lang-dotnet="`ApiId`" pulumi-lang-go="`apiId`" pulumi-lang-python="`api_id`" pulumi-lang-yaml="`apiId`" pulumi-lang-java="`apiId`">`api_id`</span>, a hyphen, and <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/dataSource:DataSource example abcdef123456-example
/// ```
class DataSource extends CustomResource {
  /// API ID for the GraphQL API for the data source.
  late final Output<String> apiId;

  /// ARN
  late final Output<String> arn;

  /// Description of the data source.
  late final Output<String?> description;

  /// DynamoDB settings. See <span pulumi-lang-nodejs="`dynamodbConfig`" pulumi-lang-dotnet="`DynamodbConfig`" pulumi-lang-go="`dynamodbConfig`" pulumi-lang-python="`dynamodb_config`" pulumi-lang-yaml="`dynamodbConfig`" pulumi-lang-java="`dynamodbConfig`">`dynamodb_config`</span> Block for details.
  late final Output<DataSourceDynamodbConfig?> dynamodbConfig;

  /// Amazon Elasticsearch settings. See <span pulumi-lang-nodejs="`elasticsearchConfig`" pulumi-lang-dotnet="`ElasticsearchConfig`" pulumi-lang-go="`elasticsearchConfig`" pulumi-lang-python="`elasticsearch_config`" pulumi-lang-yaml="`elasticsearchConfig`" pulumi-lang-java="`elasticsearchConfig`">`elasticsearch_config`</span> Block for details.
  late final Output<DataSourceElasticsearchConfig?> elasticsearchConfig;

  /// AWS EventBridge settings. See <span pulumi-lang-nodejs="`eventBridgeConfig`" pulumi-lang-dotnet="`EventBridgeConfig`" pulumi-lang-go="`eventBridgeConfig`" pulumi-lang-python="`event_bridge_config`" pulumi-lang-yaml="`eventBridgeConfig`" pulumi-lang-java="`eventBridgeConfig`">`event_bridge_config`</span> Block for details.
  late final Output<DataSourceEventBridgeConfig?> eventBridgeConfig;

  /// HTTP settings. See <span pulumi-lang-nodejs="`httpConfig`" pulumi-lang-dotnet="`HttpConfig`" pulumi-lang-go="`httpConfig`" pulumi-lang-python="`http_config`" pulumi-lang-yaml="`httpConfig`" pulumi-lang-java="`httpConfig`">`http_config`</span> Block for details.
  late final Output<DataSourceHttpConfig?> httpConfig;

  /// AWS Lambda settings. See <span pulumi-lang-nodejs="`lambdaConfig`" pulumi-lang-dotnet="`LambdaConfig`" pulumi-lang-go="`lambdaConfig`" pulumi-lang-python="`lambda_config`" pulumi-lang-yaml="`lambdaConfig`" pulumi-lang-java="`lambdaConfig`">`lambda_config`</span> Block for details.
  late final Output<DataSourceLambdaConfig?> lambdaConfig;

  /// User-supplied name for the data source.
  late final Output<String> name;

  /// Amazon OpenSearch Service settings. See <span pulumi-lang-nodejs="`opensearchserviceConfig`" pulumi-lang-dotnet="`OpensearchserviceConfig`" pulumi-lang-go="`opensearchserviceConfig`" pulumi-lang-python="`opensearchservice_config`" pulumi-lang-yaml="`opensearchserviceConfig`" pulumi-lang-java="`opensearchserviceConfig`">`opensearchservice_config`</span> Block for details.
  late final Output<DataSourceOpensearchserviceConfig?> opensearchserviceConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS RDS settings. See <span pulumi-lang-nodejs="`relationalDatabaseConfig`" pulumi-lang-dotnet="`RelationalDatabaseConfig`" pulumi-lang-go="`relationalDatabaseConfig`" pulumi-lang-python="`relational_database_config`" pulumi-lang-yaml="`relationalDatabaseConfig`" pulumi-lang-java="`relationalDatabaseConfig`">`relational_database_config`</span> Block for details.
  late final Output<DataSourceRelationalDatabaseConfig?>
      relationalDatabaseConfig;

  /// IAM service role ARN for the data source. Required if <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  late final Output<String?> serviceRoleArn;

  /// Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  late final Output<String> type;

  DataSource(
    String name, {
    DataSourceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/dataSource:DataSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.dynamodbConfig = Output.createUnknown<DataSourceDynamodbConfig?>();
    this.elasticsearchConfig =
        Output.createUnknown<DataSourceElasticsearchConfig?>();
    this.eventBridgeConfig =
        Output.createUnknown<DataSourceEventBridgeConfig?>();
    this.httpConfig = Output.createUnknown<DataSourceHttpConfig?>();
    this.lambdaConfig = Output.createUnknown<DataSourceLambdaConfig?>();
    this.name = Output.createUnknown<String>();
    this.opensearchserviceConfig =
        Output.createUnknown<DataSourceOpensearchserviceConfig?>();
    this.region = Output.createUnknown<String>();
    this.relationalDatabaseConfig =
        Output.createUnknown<DataSourceRelationalDatabaseConfig?>();
    this.serviceRoleArn = Output.createUnknown<String?>();
    this.type = Output.createUnknown<String>();
  }
}
