import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_activity_stream_args.dart';

/// Manages RDS Aurora Cluster Database Activity Streams.
///
/// Database Activity Streams have some limits and requirements, refer to the [Monitoring Amazon Aurora using Database Activity Streams](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html) documentation for detailed limitations and requirements.
///
/// > **Note:** This resource always calls the RDS [`StartActivityStream`][2] API with the `ApplyImmediately` parameter set to `true`. This is because the provider needs the activity stream to be started in order for it to get the associated attributes.
///
/// > **Note:** This resource depends on having at least one `aws.rds.ClusterInstance` created. To avoid race conditions when all resources are being created together, add an explicit resource reference using the resource `depends_on` meta-argument.
///
/// > **Note:** This resource is available in all regions except the following: `cn-north-1`, `cn-northwest-1`, `us-gov-east-1`, `us-gov-west-1`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Cluster("default", {
///     clusterIdentifier: "aurora-cluster-demo",
///     availabilityZones: [
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     databaseName: "mydb",
///     masterUsername: "foo",
///     masterPassword: "mustbeeightcharaters",
///     engine: aws.rds.EngineType.AuroraPostgresql,
///     engineVersion: "13.4",
/// });
/// const defaultClusterInstance = new aws.rds.ClusterInstance("default", {
///     identifier: "aurora-instance-demo",
///     clusterIdentifier: _default.clusterIdentifier,
///     engine: _default.engine.apply((x) => aws.rds.EngineType[x]),
///     instanceClass: aws.rds.InstanceType.R6G_Large,
/// });
/// const defaultKey = new aws.kms.Key("default", {description: "AWS KMS Key to encrypt Database Activity Stream"});
/// const defaultClusterActivityStream = new aws.rds.ClusterActivityStream("default", {
///     resourceArn: _default.arn,
///     mode: "async",
///     kmsKeyId: defaultKey.keyId,
/// }, {
///     dependsOn: [defaultClusterInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Cluster("default",
///     cluster_identifier="aurora-cluster-demo",
///     availability_zones=[
///         "us-west-2a",
///         "us-west-2b",
///         "us-west-2c",
///     ],
///     database_name="mydb",
///     master_username="foo",
///     master_password="mustbeeightcharaters",
///     engine=aws.rds.EngineType.AURORA_POSTGRESQL,
///     engine_version="13.4")
/// default_cluster_instance = aws.rds.ClusterInstance("default",
///     identifier="aurora-instance-demo",
///     cluster_identifier=default.cluster_identifier,
///     engine=default.engine.apply(lambda x: aws.rds.EngineType(x)),
///     instance_class=aws.rds.InstanceType.R6_G_LARGE)
/// default_key = aws.kms.Key("default", description="AWS KMS Key to encrypt Database Activity Stream")
/// default_cluster_activity_stream = aws.rds.ClusterActivityStream("default",
///     resource_arn=default.arn,
///     mode="async",
///     kms_key_id=default_key.key_id,
///     opts = pulumi.ResourceOptions(depends_on=[default_cluster_instance]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.Cluster("default", new()
///     {
///         ClusterIdentifier = "aurora-cluster-demo",
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///             "us-west-2b",
///             "us-west-2c",
///         },
///         DatabaseName = "mydb",
///         MasterUsername = "foo",
///         MasterPassword = "mustbeeightcharaters",
///         Engine = Aws.Rds.EngineType.AuroraPostgresql,
///         EngineVersion = "13.4",
///     });
///
///     var defaultClusterInstance = new Aws.Rds.ClusterInstance("default", new()
///     {
///         Identifier = "aurora-instance-demo",
///         ClusterIdentifier = @default.ClusterIdentifier,
///         Engine = @default.Engine.Apply(System.Enum.Parse<Aws.Rds.EngineType>),
///         InstanceClass = Aws.Rds.InstanceType.R6G_Large,
///     });
///
///     var defaultKey = new Aws.Kms.Key("default", new()
///     {
///         Description = "AWS KMS Key to encrypt Database Activity Stream",
///     });
///
///     var defaultClusterActivityStream = new Aws.Rds.ClusterActivityStream("default", new()
///     {
///         ResourceArn = @default.Arn,
///         Mode = "async",
///         KmsKeyId = defaultKey.KeyId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultClusterInstance,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := rds.NewCluster(ctx, "default", &rds.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("aurora-cluster-demo"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 				pulumi.String("us-west-2b"),
/// 				pulumi.String("us-west-2c"),
/// 			},
/// 			DatabaseName:   pulumi.String("mydb"),
/// 			MasterUsername: pulumi.String("foo"),
/// 			MasterPassword: pulumi.String("mustbeeightcharaters"),
/// 			Engine:         pulumi.String(rds.EngineTypeAuroraPostgresql),
/// 			EngineVersion:  pulumi.String("13.4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultClusterInstance, err := rds.NewClusterInstance(ctx, "default", &rds.ClusterInstanceArgs{
/// 			Identifier:        pulumi.String("aurora-instance-demo"),
/// 			ClusterIdentifier: _default.ClusterIdentifier,
/// 			Engine:            _default.Engine.ApplyT(func(x *string) rds.EngineType { return rds.EngineType(*x) }).(rds.EngineTypeOutput),
/// 			InstanceClass:     pulumi.String(rds.InstanceType_R6G_Large),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKey, err := kms.NewKey(ctx, "default", &kms.KeyArgs{
/// 			Description: pulumi.String("AWS KMS Key to encrypt Database Activity Stream"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewClusterActivityStream(ctx, "default", &rds.ClusterActivityStreamArgs{
/// 			ResourceArn: _default.Arn,
/// 			Mode:        pulumi.String("async"),
/// 			KmsKeyId:    defaultKey.KeyId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultClusterInstance,
/// 		}))
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
/// import com.pulumi.aws.rds.Cluster;
/// import com.pulumi.aws.rds.ClusterArgs;
/// import com.pulumi.aws.rds.ClusterInstance;
/// import com.pulumi.aws.rds.ClusterInstanceArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.ClusterActivityStream;
/// import com.pulumi.aws.rds.ClusterActivityStreamArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterIdentifier("aurora-cluster-demo")
///             .availabilityZones(
///                 "us-west-2a",
///                 "us-west-2b",
///                 "us-west-2c")
///             .databaseName("mydb")
///             .masterUsername("foo")
///             .masterPassword("mustbeeightcharaters")
///             .engine("aurora-postgresql")
///             .engineVersion("13.4")
///             .build());
///
///         var defaultClusterInstance = new ClusterInstance("defaultClusterInstance", ClusterInstanceArgs.builder()
///             .identifier("aurora-instance-demo")
///             .clusterIdentifier(default_.clusterIdentifier())
///             .engine(default_.engine())
///             .instanceClass("db.r6g.large")
///             .build());
///
///         var defaultKey = new Key("defaultKey", KeyArgs.builder()
///             .description("AWS KMS Key to encrypt Database Activity Stream")
///             .build());
///
///         var defaultClusterActivityStream = new ClusterActivityStream("defaultClusterActivityStream", ClusterActivityStreamArgs.builder()
///             .resourceArn(default_.arn())
///             .mode("async")
///             .kmsKeyId(defaultKey.keyId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultClusterInstance)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Cluster
///     properties:
///       clusterIdentifier: aurora-cluster-demo
///       availabilityZones:
///         - us-west-2a
///         - us-west-2b
///         - us-west-2c
///       databaseName: mydb
///       masterUsername: foo
///       masterPassword: mustbeeightcharaters
///       engine: aurora-postgresql
///       engineVersion: '13.4'
///   defaultClusterInstance:
///     type: aws:rds:ClusterInstance
///     name: default
///     properties:
///       identifier: aurora-instance-demo
///       clusterIdentifier: ${default.clusterIdentifier}
///       engine: ${default.engine}
///       instanceClass: db.r6g.large
///   defaultKey:
///     type: aws:kms:Key
///     name: default
///     properties:
///       description: AWS KMS Key to encrypt Database Activity Stream
///   defaultClusterActivityStream:
///     type: aws:rds:ClusterActivityStream
///     name: default
///     properties:
///       resourceArn: ${default.arn}
///       mode: async
///       kmsKeyId: ${defaultKey.keyId}
///     options:
///       dependsOn:
///         - ${defaultClusterInstance}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS Aurora Cluster Database Activity Streams using the `resource_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/clusterActivityStream:ClusterActivityStream default arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster-demo
/// ```
///
/// [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/DBActivityStreams.html
/// [2]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartActivityStream.html
/// [3]: https://docs.aws.amazon.com/cli/latest/reference/rds/start-activity-stream.html
class ClusterActivityStream extends pulumi.CustomResource {
  /// Specifies whether the database activity stream includes engine-native audit fields. This option only applies to an Oracle DB instance. By default, no engine-native audit fields are included. Defaults `false`.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/start-activity-stream.html).
  late final pulumi.Output<bool?> engineNativeAuditFieldsIncluded;

  /// The name of the Amazon Kinesis data stream to be used for the database activity stream.
  late final pulumi.Output<String> kinesisStreamName;

  /// The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
  late final pulumi.Output<String> kmsKeyId;

  /// Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. One of: `sync`, `async`.
  late final pulumi.Output<String> mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the DB cluster.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ClusterActivityStream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterActivityStream]. {@macro pulumi_rds_cluster_activity_stream_cluster_activity_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterActivityStream(
    String name, {
    ClusterActivityStreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterActivityStream:ClusterActivityStream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.engineNativeAuditFieldsIncluded =
        registerOutput<bool?>('engineNativeAuditFieldsIncluded');
    this.kinesisStreamName = registerOutput<String>('kinesisStreamName');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.mode = registerOutput<String>('mode');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
