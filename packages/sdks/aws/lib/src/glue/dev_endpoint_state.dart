// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DevEndpoint resources.
class DevEndpointState {
  /// A map of arguments used to configure the endpoint.
  final pulumi.Input<Map<String, String>>? arguments;
  /// The ARN of the endpoint.
  final pulumi.Input<String>? arn;
  /// The AWS availability zone where this endpoint is located.
  final pulumi.Input<String>? availabilityZone;
  /// Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint.
  final pulumi.Input<String>? extraJarsS3Path;
  /// Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma.
  final pulumi.Input<String>? extraPythonLibsS3Path;
  /// The reason for a current failure in this endpoint.
  final pulumi.Input<String>? failureReason;
  /// Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9.
  final pulumi.Input<String>? glueVersion;
  /// The name of this endpoint. It must be unique in your account.
  final pulumi.Input<String>? name;
  /// The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `worker_type`.
  final pulumi.Input<int>? numberOfNodes;
  /// The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X.
  final pulumi.Input<int>? numberOfWorkers;
  /// A private IP address to access the endpoint within a VPC, if this endpoint is created within one.
  final pulumi.Input<String>? privateAddress;
  /// The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint.
  final pulumi.Input<String>? publicAddress;
  /// The public key to be used by this endpoint for authentication.
  final pulumi.Input<String>? publicKey;
  /// A list of public keys to be used by this endpoint for authentication.
  final pulumi.Input<List<String>>? publicKeys;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role for this endpoint.
  final pulumi.Input<String>? roleArn;
  /// The name of the Security Configuration structure to be used with this endpoint.
  final pulumi.Input<String>? securityConfiguration;
  /// Security group IDs for the security groups to be used by this endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The current status of this endpoint.
  final pulumi.Input<String>? status;
  /// The subnet ID for the new endpoint to use.
  final pulumi.Input<String>? subnetId;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// he ID of the VPC used by this endpoint.
  final pulumi.Input<String>? vpcId;
  /// The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  final pulumi.Input<String>? workerType;
  /// The YARN endpoint address used by this endpoint.
  final pulumi.Input<String>? yarnEndpointAddress;
  /// The Apache Zeppelin port for the remote Apache Spark interpreter.
  final pulumi.Input<int>? zeppelinRemoteSparkInterpreterPort;

  /// Creates a new [DevEndpointState].
  /// [arguments] A map of arguments used to configure the endpoint.
  /// [arn] The ARN of the endpoint.
  /// [availabilityZone] The AWS availability zone where this endpoint is located.
  /// [extraJarsS3Path] Path to one or more Java Jars in an S3 bucket that should be loaded in this endpoint.
  /// [extraPythonLibsS3Path] Path(s) to one or more Python libraries in an S3 bucket that should be loaded in this endpoint. Multiple values must be complete paths separated by a comma.
  /// [failureReason] The reason for a current failure in this endpoint.
  /// [glueVersion] Specifies the versions of Python and Apache Spark to use. Defaults to AWS Glue version 0.9.
  /// [name] The name of this endpoint. It must be unique in your account.
  /// [numberOfNodes] The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `worker_type`.
  /// [numberOfWorkers] The number of workers of a defined worker type that are allocated to this endpoint. This field is available only when you choose worker type G.1X or G.2X.
  /// [privateAddress] A private IP address to access the endpoint within a VPC, if this endpoint is created within one.
  /// [publicAddress] The public IP address used by this endpoint. The PublicAddress field is present only when you create a non-VPC endpoint.
  /// [publicKey] The public key to be used by this endpoint for authentication.
  /// [publicKeys] A list of public keys to be used by this endpoint for authentication.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The IAM role for this endpoint.
  /// [securityConfiguration] The name of the Security Configuration structure to be used with this endpoint.
  /// [securityGroupIds] Security group IDs for the security groups to be used by this endpoint.
  /// [status] The current status of this endpoint.
  /// [subnetId] The subnet ID for the new endpoint to use.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] he ID of the VPC used by this endpoint.
  /// [workerType] The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  /// [yarnEndpointAddress] The YARN endpoint address used by this endpoint.
  /// [zeppelinRemoteSparkInterpreterPort] The Apache Zeppelin port for the remote Apache Spark interpreter.
  DevEndpointState({
    pulumi.Output<Map<String, String>>? arguments,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? extraJarsS3Path,
    pulumi.Output<String>? extraPythonLibsS3Path,
    pulumi.Output<String>? failureReason,
    pulumi.Output<String>? glueVersion,
    pulumi.Output<String>? name,
    pulumi.Output<int>? numberOfNodes,
    pulumi.Output<int>? numberOfWorkers,
    pulumi.Output<String>? privateAddress,
    pulumi.Output<String>? publicAddress,
    pulumi.Output<String>? publicKey,
    pulumi.Output<List<String>>? publicKeys,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? securityConfiguration,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? workerType,
    pulumi.Output<String>? yarnEndpointAddress,
    pulumi.Output<int>? zeppelinRemoteSparkInterpreterPort,
  }) :
      arguments = pulumi.Input.asOptionalInput<Map<String, String>>(arguments),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      extraJarsS3Path = pulumi.Input.asOptionalInput<String>(extraJarsS3Path),
      extraPythonLibsS3Path = pulumi.Input.asOptionalInput<String>(extraPythonLibsS3Path),
      failureReason = pulumi.Input.asOptionalInput<String>(failureReason),
      glueVersion = pulumi.Input.asOptionalInput<String>(glueVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfNodes = pulumi.Input.asOptionalInput<int>(numberOfNodes),
      numberOfWorkers = pulumi.Input.asOptionalInput<int>(numberOfWorkers),
      privateAddress = pulumi.Input.asOptionalInput<String>(privateAddress),
      publicAddress = pulumi.Input.asOptionalInput<String>(publicAddress),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      publicKeys = pulumi.Input.asOptionalInput<List<String>>(publicKeys),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      securityConfiguration = pulumi.Input.asOptionalInput<String>(securityConfiguration),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      workerType = pulumi.Input.asOptionalInput<String>(workerType),
      yarnEndpointAddress = pulumi.Input.asOptionalInput<String>(yarnEndpointAddress),
      zeppelinRemoteSparkInterpreterPort = pulumi.Input.asOptionalInput<int>(zeppelinRemoteSparkInterpreterPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'extraJarsS3Path': ?extraJarsS3Path,
      'extraPythonLibsS3Path': ?extraPythonLibsS3Path,
      'failureReason': ?failureReason,
      'glueVersion': ?glueVersion,
      'name': ?name,
      'numberOfNodes': ?numberOfNodes,
      'numberOfWorkers': ?numberOfWorkers,
      'privateAddress': ?privateAddress,
      'publicAddress': ?publicAddress,
      'publicKey': ?publicKey,
      'publicKeys': ?publicKeys,
      'region': ?region,
      'roleArn': ?roleArn,
      'securityConfiguration': ?securityConfiguration,
      'securityGroupIds': ?securityGroupIds,
      'status': ?status,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
      'workerType': ?workerType,
      'yarnEndpointAddress': ?yarnEndpointAddress,
      'zeppelinRemoteSparkInterpreterPort': ?zeppelinRemoteSparkInterpreterPort,
    };
  }

  factory DevEndpointState.fromMap(Map<String, dynamic> map) {
    return DevEndpointState(
      arguments: map['arguments'] == null ? null : pulumi.Output.create<Map<String, String>>((map['arguments'] as Map).cast<String, String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      extraJarsS3Path: map['extraJarsS3Path'] == null ? null : pulumi.Output.create<String>(map['extraJarsS3Path'] as String),
      extraPythonLibsS3Path: map['extraPythonLibsS3Path'] == null ? null : pulumi.Output.create<String>(map['extraPythonLibsS3Path'] as String),
      failureReason: map['failureReason'] == null ? null : pulumi.Output.create<String>(map['failureReason'] as String),
      glueVersion: map['glueVersion'] == null ? null : pulumi.Output.create<String>(map['glueVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      numberOfNodes: map['numberOfNodes'] == null ? null : pulumi.Output.create<int>(map['numberOfNodes'] as int),
      numberOfWorkers: map['numberOfWorkers'] == null ? null : pulumi.Output.create<int>(map['numberOfWorkers'] as int),
      privateAddress: map['privateAddress'] == null ? null : pulumi.Output.create<String>(map['privateAddress'] as String),
      publicAddress: map['publicAddress'] == null ? null : pulumi.Output.create<String>(map['publicAddress'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      publicKeys: map['publicKeys'] == null ? null : pulumi.Output.create<List<String>>((map['publicKeys'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      securityConfiguration: map['securityConfiguration'] == null ? null : pulumi.Output.create<String>(map['securityConfiguration'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      workerType: map['workerType'] == null ? null : pulumi.Output.create<String>(map['workerType'] as String),
      yarnEndpointAddress: map['yarnEndpointAddress'] == null ? null : pulumi.Output.create<String>(map['yarnEndpointAddress'] as String),
      zeppelinRemoteSparkInterpreterPort: map['zeppelinRemoteSparkInterpreterPort'] == null ? null : pulumi.Output.create<int>(map['zeppelinRemoteSparkInterpreterPort'] as int),
    );
  }
}

