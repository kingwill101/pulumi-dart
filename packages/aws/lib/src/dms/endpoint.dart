import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_elasticsearch_settings.dart';
import 'endpoint_kafka_settings.dart';
import 'endpoint_kinesis_settings.dart';
import 'endpoint_mongodb_settings.dart';
import 'endpoint_mysql_settings.dart';
import 'endpoint_oracle_settings.dart';
import 'endpoint_postgres_settings.dart';
import 'endpoint_redis_settings.dart';
import 'endpoint_redshift_settings.dart';

/// Provides a DMS (Data Migration Service) endpoint resource. DMS endpoints can be created, updated, deleted, and imported.
///
/// > **Note:** All arguments including the password will be stored in the raw state as plain-text. ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.dms.Endpoint("test", {
///     certificateArn: "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
///     databaseName: "test",
///     endpointId: "test-dms-endpoint-tf",
///     endpointType: "source",
///     engineName: "aurora",
///     extraConnectionAttributes: "",
///     kmsKeyArn: "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
///     password: "test",
///     port: 3306,
///     serverName: "test",
///     sslMode: "none",
///     tags: {
///         Name: "test",
///     },
///     username: "test",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.dms.Endpoint("test",
///     certificate_arn="arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
///     database_name="test",
///     endpoint_id="test-dms-endpoint-tf",
///     endpoint_type="source",
///     engine_name="aurora",
///     extra_connection_attributes="",
///     kms_key_arn="arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
///     password="test",
///     port=3306,
///     server_name="test",
///     ssl_mode="none",
///     tags={
///         "Name": "test",
///     },
///     username="test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Dms.Endpoint("test", new()
///     {
///         CertificateArn = "arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012",
///         DatabaseName = "test",
///         EndpointId = "test-dms-endpoint-tf",
///         EndpointType = "source",
///         EngineName = "aurora",
///         ExtraConnectionAttributes = "",
///         KmsKeyArn = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
///         Password = "test",
///         Port = 3306,
///         ServerName = "test",
///         SslMode = "none",
///         Tags =
///         {
///             { "Name", "test" },
///         },
///         Username = "test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.NewEndpoint(ctx, "test", &dms.EndpointArgs{
/// 			CertificateArn:            pulumi.String("arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012"),
/// 			DatabaseName:              pulumi.String("test"),
/// 			EndpointId:                pulumi.String("test-dms-endpoint-tf"),
/// 			EndpointType:              pulumi.String("source"),
/// 			EngineName:                pulumi.String("aurora"),
/// 			ExtraConnectionAttributes: pulumi.String(""),
/// 			KmsKeyArn:                 pulumi.String("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"),
/// 			Password:                  pulumi.String("test"),
/// 			Port:                      pulumi.Int(3306),
/// 			ServerName:                pulumi.String("test"),
/// 			SslMode:                   pulumi.String("none"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("test"),
/// 			},
/// 			Username: pulumi.String("test"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Endpoint("test", EndpointArgs.builder()
///             .certificateArn("arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012")
///             .databaseName("test")
///             .endpointId("test-dms-endpoint-tf")
///             .endpointType("source")
///             .engineName("aurora")
///             .extraConnectionAttributes("")
///             .kmsKeyArn("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012")
///             .password("test")
///             .port(3306)
///             .serverName("test")
///             .sslMode("none")
///             .tags(Map.of("Name", "test"))
///             .username("test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:dms:Endpoint
///     properties:
///       certificateArn: arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012
///       databaseName: test
///       endpointId: test-dms-endpoint-tf
///       endpointType: source
///       engineName: aurora
///       extraConnectionAttributes: ""
///       kmsKeyArn: arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
///       password: test
///       port: 3306
///       serverName: test
///       sslMode: none
///       tags:
///         Name: test
///       username: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import endpoints using the `endpoint_id`. For example:
///
/// ```sh
/// $ pulumi import aws:dms/endpoint:Endpoint test test-dms-endpoint-tf
/// ```
class Endpoint extends pulumi.CustomResource {
  /// ARN for the certificate.
  late final pulumi.Output<String> certificateArn;

  /// Name of the endpoint database.
  late final pulumi.Output<String?> databaseName;

  /// Configuration block for OpenSearch settings. See below.
  late final pulumi.Output<EndpointElasticsearchSettings?>
  elasticsearchSettings;

  /// ARN for the endpoint.
  late final pulumi.Output<String> endpointArn;

  /// Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens.
  late final pulumi.Output<String> endpointId;

  /// Type of endpoint. Valid values are `source`, `target`.
  late final pulumi.Output<String> endpointType;

  /// Type of engine for the endpoint. Valid values are `aurora`, `aurora-postgresql`, `aurora-serverless`, `aurora-postgresql-serverless`,`azuredb`, `azure-sql-managed-instance`, `babelfish`, `db2`, `db2-zos`, `docdb`, `dynamodb`, `elasticsearch`, `kafka`, `kinesis`, `mariadb`, `mongodb`, `mysql`, `opensearch`, `oracle`, `postgres`, `redshift`,`redshift-serverless`, `sqlserver`, `neptune` ,`sybase`. Please note that some of engine names are available only for `target` endpoint type (e.g. `redshift`).
  late final pulumi.Output<String> engineName;

  /// Additional attributes associated with the connection. For available attributes for a `source` Endpoint, see [Sources for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.html). For available attributes for a `target` Endpoint, see [Targets for data migration](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.html).
  late final pulumi.Output<String> extraConnectionAttributes;

  /// Configuration block for Kafka settings. See below.
  late final pulumi.Output<EndpointKafkaSettings?> kafkaSettings;

  /// Configuration block for Kinesis settings. See below.
  late final pulumi.Output<EndpointKinesisSettings?> kinesisSettings;

  /// ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for `kms_key_arn`, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region. When `engine_name` is `redshift`, `kms_key_arn` is the KMS Key for the Redshift target and the parameter `redshift_settings.server_side_encryption_kms_key_id` encrypts the S3 intermediate storage.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> kmsKeyArn;

  /// Configuration block for MongoDB settings. See below.
  late final pulumi.Output<EndpointMongodbSettings?> mongodbSettings;

  /// Configuration block for MySQL settings. See below.
  late final pulumi.Output<EndpointMysqlSettings?> mysqlSettings;

  /// Configuration block for Oracle settings. See below.
  late final pulumi.Output<EndpointOracleSettings?> oracleSettings;

  /// Password to be used to login to the endpoint database.
  late final pulumi.Output<String?> password;

  /// Whether to pause associated running replication tasks, regardless if they are managed by Terraform, prior to modifying the endpoint. Only tasks paused by the resource will be restarted after the modification completes. Default is `false`.
  late final pulumi.Output<bool?> pauseReplicationTasks;

  /// Port used by the endpoint database.
  late final pulumi.Output<int?> port;

  /// Configuration block for Postgres settings. See below.
  late final pulumi.Output<EndpointPostgresSettings?> postgresSettings;
  late final pulumi.Output<EndpointRedisSettings?> redisSettings;

  /// Configuration block for Redshift settings. See below.
  late final pulumi.Output<EndpointRedshiftSettings> redshiftSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the IAM role that specifies AWS DMS as the trusted entity and has the required permissions to access the value in the Secrets Manager secret referred to by `secrets_manager_arn`. The role must allow the `iam:PassRole` action.
  ///
  /// > **Note:** You can specify one of two sets of values for these permissions. You can specify the values for this setting and `secrets_manager_arn`. Or you can specify clear-text values for `username`, `password` , `server_name`, and `port`. You can't specify both.
  late final pulumi.Output<String?> secretsManagerAccessRoleArn;

  /// Full ARN, partial ARN, or friendly name of the Secrets Manager secret that contains the endpoint connection details. Supported only when `engine_name` is `aurora`, `aurora-postgresql`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, or `sqlserver`.
  late final pulumi.Output<String?> secretsManagerArn;

  /// Host name of the server.
  late final pulumi.Output<String?> serverName;

  /// ARN used by the service access IAM role for dynamodb endpoints.
  late final pulumi.Output<String?> serviceAccessRole;

  /// SSL mode to use for the connection. Valid values are `none`, `require`, `verify-ca`, `verify-full`
  late final pulumi.Output<String> sslMode;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// User name to be used to login to the endpoint database.
  late final pulumi.Output<String?> username;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_dms_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:dms/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.certificateArn = registerOutput<String>('certificateArn');
    this.databaseName = registerOutput<String?>('databaseName');
    this.elasticsearchSettings = registerOutput<EndpointElasticsearchSettings?>(
      'elasticsearchSettings',
    );
    this.endpointArn = registerOutput<String>('endpointArn');
    this.endpointId = registerOutput<String>('endpointId');
    this.endpointType = registerOutput<String>('endpointType');
    this.engineName = registerOutput<String>('engineName');
    this.extraConnectionAttributes = registerOutput<String>(
      'extraConnectionAttributes',
    );
    this.kafkaSettings = registerOutput<EndpointKafkaSettings?>(
      'kafkaSettings',
    );
    this.kinesisSettings = registerOutput<EndpointKinesisSettings?>(
      'kinesisSettings',
    );
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.mongodbSettings = registerOutput<EndpointMongodbSettings?>(
      'mongodbSettings',
    );
    this.mysqlSettings = registerOutput<EndpointMysqlSettings?>(
      'mysqlSettings',
    );
    this.oracleSettings = registerOutput<EndpointOracleSettings?>(
      'oracleSettings',
    );
    this.password = registerOutput<String?>('password');
    this.pauseReplicationTasks = registerOutput<bool?>('pauseReplicationTasks');
    this.port = registerOutput<int?>('port');
    this.postgresSettings = registerOutput<EndpointPostgresSettings?>(
      'postgresSettings',
    );
    this.redisSettings = registerOutput<EndpointRedisSettings?>(
      'redisSettings',
    );
    this.redshiftSettings = registerOutput<EndpointRedshiftSettings>(
      'redshiftSettings',
    );
    this.region = registerOutput<String>('region');
    this.secretsManagerAccessRoleArn = registerOutput<String?>(
      'secretsManagerAccessRoleArn',
    );
    this.secretsManagerArn = registerOutput<String?>('secretsManagerArn');
    this.serverName = registerOutput<String?>('serverName');
    this.serviceAccessRole = registerOutput<String?>('serviceAccessRole');
    this.sslMode = registerOutput<String>('sslMode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.username = registerOutput<String?>('username');
  }
}
