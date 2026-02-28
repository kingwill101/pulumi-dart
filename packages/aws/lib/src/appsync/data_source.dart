import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_args.dart';
import 'data_source_dynamodb_config.dart';
import 'data_source_elasticsearch_config.dart';
import 'data_source_event_bridge_config.dart';
import 'data_source_http_config.dart';
import 'data_source_lambda_config.dart';
import 'data_source_opensearchservice_config.dart';
import 'data_source_relational_database_config.dart';

/// Provides an AppSync Data Source.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleTable = new aws.dynamodb.Table("example", {
///     name: "example",
///     readCapacity: 1,
///     writeCapacity: 1,
///     hashKey: "UserId",
///     attributes: [{
///         name: "UserId",
///         type: "S",
///     }],
/// });
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["appsync.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         actions: ["dynamodb:*"],
///         resources: [exampleTable.arn],
///     }],
/// });
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     name: "example",
///     role: exampleRole.id,
///     policy: example.apply(example => example.json),
/// });
/// const exampleGraphQLApi = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "API_KEY",
///     name: "my_appsync_example",
/// });
/// const exampleDataSource = new aws.appsync.DataSource("example", {
///     apiId: exampleGraphQLApi.id,
///     name: "my_appsync_example",
///     serviceRoleArn: exampleRole.arn,
///     type: "AMAZON_DYNAMODB",
///     dynamodbConfig: {
///         tableName: exampleTable.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_table = aws.dynamodb.Table("example",
///     name="example",
///     read_capacity=1,
///     write_capacity=1,
///     hash_key="UserId",
///     attributes=[{
///         "name": "UserId",
///         "type": "S",
///     }])
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["appsync.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=assume_role.json)
/// example = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "actions": ["dynamodb:*"],
///     "resources": [example_table.arn],
/// }])
/// example_role_policy = aws.iam.RolePolicy("example",
///     name="example",
///     role=example_role.id,
///     policy=example.json)
/// example_graph_ql_api = aws.appsync.GraphQLApi("example",
///     authentication_type="API_KEY",
///     name="my_appsync_example")
/// example_data_source = aws.appsync.DataSource("example",
///     api_id=example_graph_ql_api.id,
///     name="my_appsync_example",
///     service_role_arn=example_role.arn,
///     type="AMAZON_DYNAMODB",
///     dynamodb_config={
///         "table_name": example_table.name,
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
///     var exampleTable = new Aws.DynamoDB.Table("example", new()
///     {
///         Name = "example",
///         ReadCapacity = 1,
///         WriteCapacity = 1,
///         HashKey = "UserId",
///         Attributes = new[]
///         {
///             new Aws.DynamoDB.Inputs.TableAttributeArgs
///             {
///                 Name = "UserId",
///                 Type = "S",
///             },
///         },
///     });
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "appsync.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "dynamodb:*",
///                 },
///                 Resources = new[]
///                 {
///                     exampleTable.Arn,
///                 },
///             },
///         },
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Name = "example",
///         Role = exampleRole.Id,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleGraphQLApi = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "API_KEY",
///         Name = "my_appsync_example",
///     });
///
///     var exampleDataSource = new Aws.AppSync.DataSource("example", new()
///     {
///         ApiId = exampleGraphQLApi.Id,
///         Name = "my_appsync_example",
///         ServiceRoleArn = exampleRole.Arn,
///         Type = "AMAZON_DYNAMODB",
///         DynamodbConfig = new Aws.AppSync.Inputs.DataSourceDynamodbConfigArgs
///         {
///             TableName = exampleTable.Name,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dynamodb"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleTable, err := dynamodb.NewTable(ctx, "example", &dynamodb.TableArgs{
/// 			Name:          pulumi.String("example"),
/// 			ReadCapacity:  pulumi.Int(1),
/// 			WriteCapacity: pulumi.Int(1),
/// 			HashKey:       pulumi.String("UserId"),
/// 			Attributes: dynamodb.TableAttributeArray{
/// 				&dynamodb.TableAttributeArgs{
/// 					Name: pulumi.String("UserId"),
/// 					Type: pulumi.String("S"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"appsync.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("dynamodb:*"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleTable.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			Role: exampleRole.ID(),
/// 			Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &example.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGraphQLApi, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("my_appsync_example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appsync.NewDataSource(ctx, "example", &appsync.DataSourceArgs{
/// 			ApiId:          exampleGraphQLApi.ID(),
/// 			Name:           pulumi.String("my_appsync_example"),
/// 			ServiceRoleArn: exampleRole.Arn,
/// 			Type:           pulumi.String("AMAZON_DYNAMODB"),
/// 			DynamodbConfig: &appsync.DataSourceDynamodbConfigArgs{
/// 				TableName: exampleTable.Name,
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleTable = new Table("exampleTable", TableArgs.builder()
///             .name("example")
///             .readCapacity(1)
///             .writeCapacity(1)
///             .hashKey("UserId")
///             .attributes(TableAttributeArgs.builder()
///                 .name("UserId")
///                 .type("S")
///                 .build())
///             .build());
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("appsync.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions("dynamodb:*")
///                 .resources(exampleTable.arn())
///                 .build())
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .name("example")
///             .role(exampleRole.id())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///         var exampleGraphQLApi = new GraphQLApi("exampleGraphQLApi", GraphQLApiArgs.builder()
///             .authenticationType("API_KEY")
///             .name("my_appsync_example")
///             .build());
///
///         var exampleDataSource = new DataSource("exampleDataSource", DataSourceArgs.builder()
///             .apiId(exampleGraphQLApi.id())
///             .name("my_appsync_example")
///             .serviceRoleArn(exampleRole.arn())
///             .type("AMAZON_DYNAMODB")
///             .dynamodbConfig(DataSourceDynamodbConfigArgs.builder()
///                 .tableName(exampleTable.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleTable:
///     type: aws:dynamodb:Table
///     name: example
///     properties:
///       name: example
///       readCapacity: 1
///       writeCapacity: 1
///       hashKey: UserId
///       attributes:
///         - name: UserId
///           type: S
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       assumeRolePolicy: ${assumeRole.json}
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       name: example
///       role: ${exampleRole.id}
///       policy: ${example.json}
///   exampleGraphQLApi:
///     type: aws:appsync:GraphQLApi
///     name: example
///     properties:
///       authenticationType: API_KEY
///       name: my_appsync_example
///   exampleDataSource:
///     type: aws:appsync:DataSource
///     name: example
///     properties:
///       apiId: ${exampleGraphQLApi.id}
///       name: my_appsync_example
///       serviceRoleArn: ${exampleRole.arn}
///       type: AMAZON_DYNAMODB
///       dynamodbConfig:
///         tableName: ${exampleTable.name}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - appsync.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - dynamodb:*
///             resources:
///               - ${exampleTable.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.DataSource` using the `api_id`, a hyphen, and `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/dataSource:DataSource example abcdef123456-example
/// ```
class DataSource extends pulumi.CustomResource {
  /// API ID for the GraphQL API for the data source.
  late final pulumi.Output<String> apiId;

  /// ARN
  late final pulumi.Output<String> arn;

  /// Description of the data source.
  late final pulumi.Output<String?> description;

  /// DynamoDB settings. See `dynamodb_config` Block for details.
  late final pulumi.Output<DataSourceDynamodbConfig?> dynamodbConfig;

  /// Amazon Elasticsearch settings. See `elasticsearch_config` Block for details.
  late final pulumi.Output<DataSourceElasticsearchConfig?> elasticsearchConfig;

  /// AWS EventBridge settings. See `event_bridge_config` Block for details.
  late final pulumi.Output<DataSourceEventBridgeConfig?> eventBridgeConfig;

  /// HTTP settings. See `http_config` Block for details.
  late final pulumi.Output<DataSourceHttpConfig?> httpConfig;

  /// AWS Lambda settings. See `lambda_config` Block for details.
  late final pulumi.Output<DataSourceLambdaConfig?> lambdaConfig;

  /// User-supplied name for the data source.
  late final pulumi.Output<String> name;

  /// Amazon OpenSearch Service settings. See `opensearchservice_config` Block for details.
  late final pulumi.Output<DataSourceOpensearchserviceConfig?>
      opensearchserviceConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// AWS RDS settings. See `relational_database_config` Block for details.
  late final pulumi.Output<DataSourceRelationalDatabaseConfig?>
      relationalDatabaseConfig;

  /// IAM service role ARN for the data source. Required if `type` is specified as `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `AMAZON_EVENTBRIDGE`, or `AMAZON_OPENSEARCH_SERVICE`.
  late final pulumi.Output<String?> serviceRoleArn;

  /// Type of the Data Source. Valid values: `AWS_LAMBDA`, `AMAZON_DYNAMODB`, `AMAZON_ELASTICSEARCH`, `HTTP`, `NONE`, `RELATIONAL_DATABASE`, `AMAZON_EVENTBRIDGE`, `AMAZON_OPENSEARCH_SERVICE`.
  late final pulumi.Output<String> type;

  /// Creates a new [DataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSource]. {@macro pulumi_appsync_data_source_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSource(
    String name, {
    DataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/dataSource:DataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.dynamodbConfig =
        registerOutput<DataSourceDynamodbConfig?>('dynamodbConfig');
    this.elasticsearchConfig =
        registerOutput<DataSourceElasticsearchConfig?>('elasticsearchConfig');
    this.eventBridgeConfig =
        registerOutput<DataSourceEventBridgeConfig?>('eventBridgeConfig');
    this.httpConfig = registerOutput<DataSourceHttpConfig?>('httpConfig');
    this.lambdaConfig = registerOutput<DataSourceLambdaConfig?>('lambdaConfig');
    this.name = registerOutput<String>('name');
    this.opensearchserviceConfig =
        registerOutput<DataSourceOpensearchserviceConfig?>(
            'opensearchserviceConfig');
    this.region = registerOutput<String>('region');
    this.relationalDatabaseConfig =
        registerOutput<DataSourceRelationalDatabaseConfig?>(
            'relationalDatabaseConfig');
    this.serviceRoleArn = registerOutput<String?>('serviceRoleArn');
    this.type = registerOutput<String>('type');
  }
}
