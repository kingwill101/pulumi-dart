import 'package:pulumi/pulumi.dart';
import 'dev_endpoint_args.dart';

/// Provides a Glue Development Endpoint resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a Glue Development Endpoint using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/devEndpoint:DevEndpoint example foo
/// ```
class DevEndpoint extends CustomResource {
  /// A map of arguments used to configure the endpoint.
  late final Output<Map<String, String>?> arguments;

  /// The ARN of the endpoint.
  late final Output<String> arn;

  /// The AWS availability zone where this endpoint is located.
  late final Output<String> availabilityZone;

  /// Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint.
  late final Output<String?> extraJarsS3Path;

  /// Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma.
  late final Output<String?> extraPythonLibsS3Path;

  /// The reason for a current failure in this endpoint.
  late final Output<String> failureReason;

  /// Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9.
  late final Output<String?> glueVersion;

  /// The name of this endpoint. It must be unique in your account.
  late final Output<String> name;

  /// The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `worker_type`.
  late final Output<int?> numberOfNodes;

  /// The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X.
  late final Output<int?> numberOfWorkers;

  /// A private IP address to access the endpoint within a VPC, if this endpoint is created within one.
  late final Output<String> privateAddress;

  /// The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint.
  late final Output<String> publicAddress;

  /// The public key to be used by this endpoint for authentication.
  late final Output<String?> publicKey;

  /// A list of public keys to be used by this endpoint for authentication.
  late final Output<List<String>?> publicKeys;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role for this endpoint.
  late final Output<String> roleArn;

  /// The name of the Security Configuration structure to be used with this endpoint.
  late final Output<String?> securityConfiguration;

  /// Security group IDs for the security groups to be used by this endpoint.
  late final Output<List<String>?> securityGroupIds;

  /// The current status of this endpoint.
  late final Output<String> status;

  /// The subnet ID for the new endpoint to use.
  late final Output<String?> subnetId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// he ID of the VPC used by this endpoint.
  late final Output<String> vpcId;

  /// The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  late final Output<String?> workerType;

  /// The YARN endpoint address used by this endpoint.
  late final Output<String> yarnEndpointAddress;

  /// The Apache Zeppelin port for the remote Apache Spark interpreter.
  late final Output<int> zeppelinRemoteSparkInterpreterPort;

  DevEndpoint(
    String name, {
    DevEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/devEndpoint:DevEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arguments = registerOutput<Map<String, String>?>('arguments');
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.extraJarsS3Path = registerOutput<String?>('extraJarsS3Path');
    this.extraPythonLibsS3Path =
        registerOutput<String?>('extraPythonLibsS3Path');
    this.failureReason = registerOutput<String>('failureReason');
    this.glueVersion = registerOutput<String?>('glueVersion');
    this.name = registerOutput<String>('name');
    this.numberOfNodes = registerOutput<int?>('numberOfNodes');
    this.numberOfWorkers = registerOutput<int?>('numberOfWorkers');
    this.privateAddress = registerOutput<String>('privateAddress');
    this.publicAddress = registerOutput<String>('publicAddress');
    this.publicKey = registerOutput<String?>('publicKey');
    this.publicKeys = registerOutput<List<String>?>('publicKeys');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.securityConfiguration =
        registerOutput<String?>('securityConfiguration');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.status = registerOutput<String>('status');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
    this.workerType = registerOutput<String?>('workerType');
    this.yarnEndpointAddress = registerOutput<String>('yarnEndpointAddress');
    this.zeppelinRemoteSparkInterpreterPort =
        registerOutput<int>('zeppelinRemoteSparkInterpreterPort');
  }
}
