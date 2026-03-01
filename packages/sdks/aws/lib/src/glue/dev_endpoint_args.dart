// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_glue_dev_endpoint_dev_endpoint_args_doc}
/// The set of arguments for DevEndpoint.
/// {@endtemplate}
/// {@macro pulumi_glue_dev_endpoint_dev_endpoint_args_doc}
class DevEndpointArgs {
  /// A map of arguments used to configure the endpoint.
  final pulumi.Input<Map<String, String>>? arguments;
  /// Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint.
  final pulumi.Input<String>? extraJarsS3Path;
  /// Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma.
  final pulumi.Input<String>? extraPythonLibsS3Path;
  /// Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9.
  final pulumi.Input<String>? glueVersion;
  /// The name of this endpoint. It must be unique in your account.
  final pulumi.Input<String>? name;
  /// The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `worker_type`.
  final pulumi.Input<int>? numberOfNodes;
  /// The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X.
  final pulumi.Input<int>? numberOfWorkers;
  /// The public key to be used by this endpoint for authentication.
  final pulumi.Input<String>? publicKey;
  /// A list of public keys to be used by this endpoint for authentication.
  final pulumi.Input<List<String>>? publicKeys;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role for this endpoint.
  final pulumi.Input<String> roleArn;
  /// The name of the Security Configuration structure to be used with this endpoint.
  final pulumi.Input<String>? securityConfiguration;
  /// Security group IDs for the security groups to be used by this endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The subnet ID for the new endpoint to use.
  final pulumi.Input<String>? subnetId;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  final pulumi.Input<String>? workerType;

  /// Creates a new [DevEndpointArgs].
  /// [arguments] A map of arguments used to configure the endpoint.
  /// [extraJarsS3Path] Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint.
  /// [extraPythonLibsS3Path] Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma.
  /// [glueVersion] Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9.
  /// [name] The name of this endpoint. It must be unique in your account.
  /// [numberOfNodes] The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `worker_type`.
  /// [numberOfWorkers] The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X.
  /// [publicKey] The public key to be used by this endpoint for authentication.
  /// [publicKeys] A list of public keys to be used by this endpoint for authentication.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The IAM role for this endpoint.
  /// [securityConfiguration] The name of the Security Configuration structure to be used with this endpoint.
  /// [securityGroupIds] Security group IDs for the security groups to be used by this endpoint.
  /// [subnetId] The subnet ID for the new endpoint to use.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [workerType] The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  DevEndpointArgs({
    pulumi.Output<Map<String, String>>? arguments,
    pulumi.Output<String>? extraJarsS3Path,
    pulumi.Output<String>? extraPythonLibsS3Path,
    pulumi.Output<String>? glueVersion,
    pulumi.Output<String>? name,
    pulumi.Output<int>? numberOfNodes,
    pulumi.Output<int>? numberOfWorkers,
    pulumi.Output<String>? publicKey,
    pulumi.Output<List<String>>? publicKeys,
    pulumi.Output<String>? region,
    required pulumi.Output<String> roleArn,
    pulumi.Output<String>? securityConfiguration,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workerType,
  }) :
      arguments = pulumi.Input.asOptionalInput<Map<String, String>>(arguments),
      extraJarsS3Path = pulumi.Input.asOptionalInput<String>(extraJarsS3Path),
      extraPythonLibsS3Path = pulumi.Input.asOptionalInput<String>(extraPythonLibsS3Path),
      glueVersion = pulumi.Input.asOptionalInput<String>(glueVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfNodes = pulumi.Input.asOptionalInput<int>(numberOfNodes),
      numberOfWorkers = pulumi.Input.asOptionalInput<int>(numberOfWorkers),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      publicKeys = pulumi.Input.asOptionalInput<List<String>>(publicKeys),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      securityConfiguration = pulumi.Input.asOptionalInput<String>(securityConfiguration),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workerType = pulumi.Input.asOptionalInput<String>(workerType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'extraJarsS3Path': ?extraJarsS3Path,
      'extraPythonLibsS3Path': ?extraPythonLibsS3Path,
      'glueVersion': ?glueVersion,
      'name': ?name,
      'numberOfNodes': ?numberOfNodes,
      'numberOfWorkers': ?numberOfWorkers,
      'publicKey': ?publicKey,
      'publicKeys': ?publicKeys,
      'region': ?region,
      'roleArn': roleArn,
      'securityConfiguration': ?securityConfiguration,
      'securityGroupIds': ?securityGroupIds,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'workerType': ?workerType,
    };
  }

  factory DevEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DevEndpointArgs(
      arguments: map['arguments'] == null ? null : pulumi.Output.create<Map<String, String>>((map['arguments'] as Map).cast<String, String>()),
      extraJarsS3Path: map['extraJarsS3Path'] == null ? null : pulumi.Output.create<String>(map['extraJarsS3Path'] as String),
      extraPythonLibsS3Path: map['extraPythonLibsS3Path'] == null ? null : pulumi.Output.create<String>(map['extraPythonLibsS3Path'] as String),
      glueVersion: map['glueVersion'] == null ? null : pulumi.Output.create<String>(map['glueVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfNodes: map['numberOfNodes'] == null ? null : pulumi.Output.create<int>(map['numberOfNodes'] as int),
      numberOfWorkers: map['numberOfWorkers'] == null ? null : pulumi.Output.create<int>(map['numberOfWorkers'] as int),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      publicKeys: map['publicKeys'] == null ? null : pulumi.Output.create<List<String>>((map['publicKeys'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      securityConfiguration: map['securityConfiguration'] == null ? null : pulumi.Output.create<String>(map['securityConfiguration'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workerType: map['workerType'] == null ? null : pulumi.Output.create<String>(map['workerType'] as String),
    );
  }
}

