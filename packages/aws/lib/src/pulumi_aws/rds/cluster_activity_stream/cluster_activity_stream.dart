import 'package:pulumi/pulumi.dart';
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
class ClusterActivityStream extends CustomResource {
  /// Specifies whether the database activity stream includes engine-native audit fields. This option only applies to an Oracle DB instance. By default, no engine-native audit fields are included. Defaults `false`.
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/start-activity-stream.html).
  late final Output<bool?> engineNativeAuditFieldsIncluded;

  /// The name of the Amazon Kinesis data stream to be used for the database activity stream.
  late final Output<String> kinesisStreamName;

  /// The AWS KMS key identifier for encrypting messages in the database activity stream. The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key.
  late final Output<String> kmsKeyId;

  /// Specifies the mode of the database activity stream. Database events such as a change or access generate an activity stream event. The database session can handle these events either synchronously or asynchronously. One of: `sync`, `async`.
  late final Output<String> mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the DB cluster.
  late final Output<String> resourceArn;

  ClusterActivityStream(
    String name, {
    ClusterActivityStreamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/clusterActivityStream:ClusterActivityStream',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
