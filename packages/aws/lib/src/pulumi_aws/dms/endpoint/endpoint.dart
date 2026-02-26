import 'package:pulumi/pulumi.dart';
import '../endpoint_elasticsearch_settings/endpoint_elasticsearch_settings.dart';
import '../endpoint_kafka_settings/endpoint_kafka_settings.dart';
import '../endpoint_kinesis_settings/endpoint_kinesis_settings.dart';
import '../endpoint_mongodb_settings/endpoint_mongodb_settings.dart';
import '../endpoint_mysql_settings/endpoint_mysql_settings.dart';
import '../endpoint_oracle_settings/endpoint_oracle_settings.dart';
import '../endpoint_postgres_settings/endpoint_postgres_settings.dart';
import '../endpoint_redis_settings/endpoint_redis_settings.dart';
import '../endpoint_redshift_settings/endpoint_redshift_settings.dart';
import 'endpoint_args.dart';

/// Provides a DMS (Data Migration Service) endpoint resource. DMS endpoints can be created, updated, deleted, and imported.
///
/// > **Note:** All arguments including the password will be stored in the raw state as plain-text. ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.dms.Endpoint("test", {
/// certificateArn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
/// databaseName: "test",
/// endpointId: "test-dms-endpoint-tf",
/// endpointType: "source",
/// engineName: "aurora",
/// extraConnectionAttributes: "",
/// kmsKeyArn: "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// password: "test",
/// port: 3306,
/// serverName: "test",
/// sslMode: "none",
/// tags: {
/// Name: "test",
/// },
/// username: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dms.Endpoint("test",
/// certificate_arn="arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
/// database_name="test",
/// endpoint_id="test-dms-endpoint-tf",
/// endpoint_type="source",
/// engine_name="aurora",
/// extra_connection_attributes="",
/// kms_key_arn="arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// password="test",
/// port=3306,
/// server_name="test",
/// ssl_mode="none",
/// tags={
/// "Name": "test",
/// },
/// username="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Dms.Endpoint("test", new()
/// {
/// CertificateArn = "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
/// DatabaseName = "test",
/// EndpointId = "test-dms-endpoint-tf",
/// EndpointType = "source",
/// EngineName = "aurora",
/// ExtraConnectionAttributes = "",
/// KmsKeyArn = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// Password = "test",
/// Port = 3306,
/// ServerName = "test",
/// SslMode = "none",
/// Tags =
/// {
/// { "Name", "test" },
/// },
/// Username = "test",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dms.NewEndpoint(ctx, "test", &dms.EndpointArgs{
/// CertificateArn:            pulumi.String("arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012"),
/// DatabaseName:              pulumi.String("test"),
/// EndpointId:                pulumi.String("test-dms-endpoint-tf"),
/// EndpointType:              pulumi.String("source"),
/// EngineName:                pulumi.String("aurora"),
/// ExtraConnectionAttributes: pulumi.String(""),
/// KmsKeyArn:                 pulumi.String("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"),
/// Password:                  pulumi.String("test"),
/// Port:                      pulumi.Int(3306),
/// ServerName:                pulumi.String("test"),
/// SslMode:                   pulumi.String("none"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("test"),
/// },
/// Username: pulumi.String("test"),
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
/// import com.pulumi.aws.dms.Endpoint;
/// import com.pulumi.aws.dms.EndpointArgs;
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
/// var test = new Endpoint("test", EndpointArgs.builder()
/// .certificateArn("arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012")
/// .databaseName("test")
/// .endpointId("test-dms-endpoint-tf")
/// .endpointType("source")
/// .engineName("aurora")
/// .extraConnectionAttributes("")
/// .kmsKeyArn("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012")
/// .password("test")
/// .port(3306)
/// .serverName("test")
/// .sslMode("none")
/// .tags(Map.of("Name", "test"))
/// .username("test")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:dms:Endpoint
/// properties:
/// certificateArn: arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012
/// databaseName: test
/// endpointId: test-dms-endpoint-tf
/// endpointType: source
/// engineName: aurora
/// extraConnectionAttributes: ""
/// kmsKeyArn: arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
/// password: test
/// port: 3306
/// serverName: test
/// sslMode: none
/// tags:
/// Name: test
/// username: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import endpoints using the <span pulumi-lang-nodejs="`endpointId`" pulumi-lang-dotnet="`EndpointId`" pulumi-lang-go="`endpointId`" pulumi-lang-python="`endpoint_id`" pulumi-lang-yaml="`endpointId`" pulumi-lang-java="`endpointId`">`endpoint_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dms/endpoint:Endpoint test test-dms-endpoint-tf
/// ```
class Endpoint extends CustomResource {
  /// ARN for the certificate.
  late final Output<String> certificateArn;

  /// Name of the endpoint database.
  late final Output<String?> databaseName;

  /// Configuration block for OpenSearch settings. See below.
  late final Output<EndpointElasticsearchSettings?> elasticsearchSettings;

  /// ARN for the endpoint.
  late final Output<String> endpointArn;

  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  late final Output<String> endpointId;

  /// Type of endpoint. Valid values are <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span>, <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span>.
  late final Output<String> endpointType;

  /// Type of engine for the endpoint. Valid values are <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>, `aurora-postgresql`, `aurora-serverless`, `aurora-postgresql-serverless`,<span pulumi-lang-nodejs="`azuredb`" pulumi-lang-dotnet="`Azuredb`" pulumi-lang-go="`azuredb`" pulumi-lang-python="`azuredb`" pulumi-lang-yaml="`azuredb`" pulumi-lang-java="`azuredb`">`azuredb`</span>, `azure-sql-managed-instance`, <span pulumi-lang-nodejs="`babelfish`" pulumi-lang-dotnet="`Babelfish`" pulumi-lang-go="`babelfish`" pulumi-lang-python="`babelfish`" pulumi-lang-yaml="`babelfish`" pulumi-lang-java="`babelfish`">`babelfish`</span>, <span pulumi-lang-nodejs="`db2`" pulumi-lang-dotnet="`Db2`" pulumi-lang-go="`db2`" pulumi-lang-python="`db2`" pulumi-lang-yaml="`db2`" pulumi-lang-java="`db2`">`db2`</span>, `db2-zos`, <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>, <span pulumi-lang-nodejs="`dynamodb`" pulumi-lang-dotnet="`Dynamodb`" pulumi-lang-go="`dynamodb`" pulumi-lang-python="`dynamodb`" pulumi-lang-yaml="`dynamodb`" pulumi-lang-java="`dynamodb`">`dynamodb`</span>, <span pulumi-lang-nodejs="`elasticsearch`" pulumi-lang-dotnet="`Elasticsearch`" pulumi-lang-go="`elasticsearch`" pulumi-lang-python="`elasticsearch`" pulumi-lang-yaml="`elasticsearch`" pulumi-lang-java="`elasticsearch`">`elasticsearch`</span>, <span pulumi-lang-nodejs="`kafka`" pulumi-lang-dotnet="`Kafka`" pulumi-lang-go="`kafka`" pulumi-lang-python="`kafka`" pulumi-lang-yaml="`kafka`" pulumi-lang-java="`kafka`">`kafka`</span>, <span pulumi-lang-nodejs="`kinesis`" pulumi-lang-dotnet="`Kinesis`" pulumi-lang-go="`kinesis`" pulumi-lang-python="`kinesis`" pulumi-lang-yaml="`kinesis`" pulumi-lang-java="`kinesis`">`kinesis`</span>, <span pulumi-lang-nodejs="`mariadb`" pulumi-lang-dotnet="`Mariadb`" pulumi-lang-go="`mariadb`" pulumi-lang-python="`mariadb`" pulumi-lang-yaml="`mariadb`" pulumi-lang-java="`mariadb`">`mariadb`</span>, <span pulumi-lang-nodejs="`mongodb`" pulumi-lang-dotnet="`Mongodb`" pulumi-lang-go="`mongodb`" pulumi-lang-python="`mongodb`" pulumi-lang-yaml="`mongodb`" pulumi-lang-java="`mongodb`">`mongodb`</span>, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`opensearch`" pulumi-lang-dotnet="`Opensearch`" pulumi-lang-go="`opensearch`" pulumi-lang-python="`opensearch`" pulumi-lang-yaml="`opensearch`" pulumi-lang-java="`opensearch`">`opensearch`</span>, <span pulumi-lang-nodejs="`oracle`" pulumi-lang-dotnet="`Oracle`" pulumi-lang-go="`oracle`" pulumi-lang-python="`oracle`" pulumi-lang-yaml="`oracle`" pulumi-lang-java="`oracle`">`oracle`</span>, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>, <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>,`redshift-serverless`, <span pulumi-lang-nodejs="`sqlserver`" pulumi-lang-dotnet="`Sqlserver`" pulumi-lang-go="`sqlserver`" pulumi-lang-python="`sqlserver`" pulumi-lang-yaml="`sqlserver`" pulumi-lang-java="`sqlserver`">`sqlserver`</span>, <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span> ,<span pulumi-lang-nodejs="`sybase`" pulumi-lang-dotnet="`Sybase`" pulumi-lang-go="`sybase`" pulumi-lang-python="`sybase`" pulumi-lang-yaml="`sybase`" pulumi-lang-java="`sybase`">`sybase`</span>. Please note that some of engine names are available only for <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> endpoint type (e.g. <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>).
  late final Output<String> engineName;

  /// Additional attributes associated with the connection. For available attributes for a <span pulumi-lang-nodejs="`source`" pulumi-lang-dotnet="`Source`" pulumi-lang-go="`source`" pulumi-lang-python="`source`" pulumi-lang-yaml="`source`" pulumi-lang-java="`source`">`source`</span> Endpoint, see [Sources for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.html). For available attributes for a <span pulumi-lang-nodejs="`target`" pulumi-lang-dotnet="`Target`" pulumi-lang-go="`target`" pulumi-lang-python="`target`" pulumi-lang-yaml="`target`" pulumi-lang-java="`target`">`target`</span> Endpoint, see [Targets for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.html).
  late final Output<String> extraConnectionAttributes;

  /// Configuration block for Kafka settings. See below.
  late final Output<EndpointKafkaSettings?> kafkaSettings;

  /// Configuration block for Kinesis settings. See below.
  late final Output<EndpointKinesisSettings?> kinesisSettings;

  /// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span>, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region. When <span pulumi-lang-nodejs="`engineName`" pulumi-lang-dotnet="`EngineName`" pulumi-lang-go="`engineName`" pulumi-lang-python="`engine_name`" pulumi-lang-yaml="`engineName`" pulumi-lang-java="`engineName`">`engine_name`</span> is <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>, <span pulumi-lang-nodejs="`kmsKeyArn`" pulumi-lang-dotnet="`KmsKeyArn`" pulumi-lang-go="`kmsKeyArn`" pulumi-lang-python="`kms_key_arn`" pulumi-lang-yaml="`kmsKeyArn`" pulumi-lang-java="`kmsKeyArn`">`kms_key_arn`</span> is the KMS Key for the Redshift target and the parameter `redshift_settings.server_side_encryption_kms_key_id` encrypts the S3 intermediate storage.
  ///
  /// The following arguments are optional:
  late final Output<String> kmsKeyArn;

  /// Configuration block for MongoDB settings. See below.
  late final Output<EndpointMongodbSettings?> mongodbSettings;

  /// Configuration block for MySQL settings. See below.
  late final Output<EndpointMysqlSettings?> mysqlSettings;

  /// Configuration block for Oracle settings. See below.
  late final Output<EndpointOracleSettings?> oracleSettings;

  /// Password to be used to login to the endpoint database.
  late final Output<String?> password;

  /// Whether to pause associated running replication tasks, regardless if they are managed by Terraform, prior to modifying the endpoint. Only tasks paused by the resource will be restarted after the modification completes. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> pauseReplicationTasks;

  /// Port used by the endpoint database.
  late final Output<int?> port;

  /// Configuration block for Postgres settings. See below.
  late final Output<EndpointPostgresSettings?> postgresSettings;
  late final Output<EndpointRedisSettings?> redisSettings;

  /// Configuration block for Redshift settings. See below.
  late final Output<EndpointRedshiftSettings> redshiftSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the IAM role that specifies AWS DMS as the trusted entity and has the required permissions to access the value in the Secrets Manager secret referred to by <span pulumi-lang-nodejs="`secretsManagerArn`" pulumi-lang-dotnet="`SecretsManagerArn`" pulumi-lang-go="`secretsManagerArn`" pulumi-lang-python="`secrets_manager_arn`" pulumi-lang-yaml="`secretsManagerArn`" pulumi-lang-java="`secretsManagerArn`">`secrets_manager_arn`</span>. The role must allow the `iam:PassRole` action.
  ///
  /// > **Note:** You can specify one of two sets of values for these permissions. You can specify the values for this setting and <span pulumi-lang-nodejs="`secretsManagerArn`" pulumi-lang-dotnet="`SecretsManagerArn`" pulumi-lang-go="`secretsManagerArn`" pulumi-lang-python="`secrets_manager_arn`" pulumi-lang-yaml="`secretsManagerArn`" pulumi-lang-java="`secretsManagerArn`">`secrets_manager_arn`</span>. Or you can specify clear-text values for <span pulumi-lang-nodejs="`username`" pulumi-lang-dotnet="`Username`" pulumi-lang-go="`username`" pulumi-lang-python="`username`" pulumi-lang-yaml="`username`" pulumi-lang-java="`username`">`username`</span>, <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> , <span pulumi-lang-nodejs="`serverName`" pulumi-lang-dotnet="`ServerName`" pulumi-lang-go="`serverName`" pulumi-lang-python="`server_name`" pulumi-lang-yaml="`serverName`" pulumi-lang-java="`serverName`">`server_name`</span>, and <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span>. You can't specify both.
  late final Output<String?> secretsManagerAccessRoleArn;

  /// Full ARN, partial ARN, or friendly name of the Secrets Manager secret that contains the endpoint connection details. Supported only when <span pulumi-lang-nodejs="`engineName`" pulumi-lang-dotnet="`EngineName`" pulumi-lang-go="`engineName`" pulumi-lang-python="`engine_name`" pulumi-lang-yaml="`engineName`" pulumi-lang-java="`engineName`">`engine_name`</span> is <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>, `aurora-postgresql`, <span pulumi-lang-nodejs="`mariadb`" pulumi-lang-dotnet="`Mariadb`" pulumi-lang-go="`mariadb`" pulumi-lang-python="`mariadb`" pulumi-lang-yaml="`mariadb`" pulumi-lang-java="`mariadb`">`mariadb`</span>, <span pulumi-lang-nodejs="`mongodb`" pulumi-lang-dotnet="`Mongodb`" pulumi-lang-go="`mongodb`" pulumi-lang-python="`mongodb`" pulumi-lang-yaml="`mongodb`" pulumi-lang-java="`mongodb`">`mongodb`</span>, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`oracle`" pulumi-lang-dotnet="`Oracle`" pulumi-lang-go="`oracle`" pulumi-lang-python="`oracle`" pulumi-lang-yaml="`oracle`" pulumi-lang-java="`oracle`">`oracle`</span>, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>, <span pulumi-lang-nodejs="`redshift`" pulumi-lang-dotnet="`Redshift`" pulumi-lang-go="`redshift`" pulumi-lang-python="`redshift`" pulumi-lang-yaml="`redshift`" pulumi-lang-java="`redshift`">`redshift`</span>, or <span pulumi-lang-nodejs="`sqlserver`" pulumi-lang-dotnet="`Sqlserver`" pulumi-lang-go="`sqlserver`" pulumi-lang-python="`sqlserver`" pulumi-lang-yaml="`sqlserver`" pulumi-lang-java="`sqlserver`">`sqlserver`</span>.
  late final Output<String?> secretsManagerArn;

  /// Host name of the server.
  late final Output<String?> serverName;

  /// ARN used by the service access IAM role for dynamodb endpoints.
  late final Output<String?> serviceAccessRole;

  /// SSL mode to use for the connection. Valid values are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`require`" pulumi-lang-dotnet="`Require`" pulumi-lang-go="`require`" pulumi-lang-python="`require`" pulumi-lang-yaml="`require`" pulumi-lang-java="`require`">`require`</span>, `verify-ca`, `verify-full`
  late final Output<String> sslMode;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// User name to be used to login to the endpoint database.
  late final Output<String?> username;

  Endpoint(
    String name, {
    EndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dms/endpoint:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateArn = Output.createUnknown<String>();
    this.databaseName = Output.createUnknown<String?>();
    this.elasticsearchSettings =
        Output.createUnknown<EndpointElasticsearchSettings?>();
    this.endpointArn = Output.createUnknown<String>();
    this.endpointId = Output.createUnknown<String>();
    this.endpointType = Output.createUnknown<String>();
    this.engineName = Output.createUnknown<String>();
    this.extraConnectionAttributes = Output.createUnknown<String>();
    this.kafkaSettings = Output.createUnknown<EndpointKafkaSettings?>();
    this.kinesisSettings = Output.createUnknown<EndpointKinesisSettings?>();
    this.kmsKeyArn = Output.createUnknown<String>();
    this.mongodbSettings = Output.createUnknown<EndpointMongodbSettings?>();
    this.mysqlSettings = Output.createUnknown<EndpointMysqlSettings?>();
    this.oracleSettings = Output.createUnknown<EndpointOracleSettings?>();
    this.password = Output.createUnknown<String?>();
    this.pauseReplicationTasks = Output.createUnknown<bool?>();
    this.port = Output.createUnknown<int?>();
    this.postgresSettings = Output.createUnknown<EndpointPostgresSettings?>();
    this.redisSettings = Output.createUnknown<EndpointRedisSettings?>();
    this.redshiftSettings = Output.createUnknown<EndpointRedshiftSettings>();
    this.region = Output.createUnknown<String>();
    this.secretsManagerAccessRoleArn = Output.createUnknown<String?>();
    this.secretsManagerArn = Output.createUnknown<String?>();
    this.serverName = Output.createUnknown<String?>();
    this.serviceAccessRole = Output.createUnknown<String?>();
    this.sslMode = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.username = Output.createUnknown<String?>();
  }
}
