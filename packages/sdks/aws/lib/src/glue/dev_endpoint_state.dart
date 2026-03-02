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
    this.arguments,
    this.arn,
    this.availabilityZone,
    this.extraJarsS3Path,
    this.extraPythonLibsS3Path,
    this.failureReason,
    this.glueVersion,
    this.name,
    this.numberOfNodes,
    this.numberOfWorkers,
    this.privateAddress,
    this.publicAddress,
    this.publicKey,
    this.publicKeys,
    this.region,
    this.roleArn,
    this.securityConfiguration,
    this.securityGroupIds,
    this.status,
    this.subnetId,
    this.tags,
    this.tagsAll,
    this.vpcId,
    this.workerType,
    this.yarnEndpointAddress,
    this.zeppelinRemoteSparkInterpreterPort,
  });

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
      arguments: map['arguments'] == null ? null : (((map['arguments'] as Map).cast<String, String>()).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      extraJarsS3Path: map['extraJarsS3Path'] == null ? null : ((map['extraJarsS3Path'] as String).input()).input(),
      extraPythonLibsS3Path: map['extraPythonLibsS3Path'] == null ? null : ((map['extraPythonLibsS3Path'] as String).input()).input(),
      failureReason: map['failureReason'] == null ? null : ((map['failureReason'] as String).input()).input(),
      glueVersion: map['glueVersion'] == null ? null : ((map['glueVersion'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      numberOfNodes: map['numberOfNodes'] == null ? null : ((map['numberOfNodes'] as int).input()).input(),
      numberOfWorkers: map['numberOfWorkers'] == null ? null : ((map['numberOfWorkers'] as int).input()).input(),
      privateAddress: map['privateAddress'] == null ? null : ((map['privateAddress'] as String).input()).input(),
      publicAddress: map['publicAddress'] == null ? null : ((map['publicAddress'] as String).input()).input(),
      publicKey: map['publicKey'] == null ? null : ((map['publicKey'] as String).input()).input(),
      publicKeys: map['publicKeys'] == null ? null : (((map['publicKeys'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      securityConfiguration: map['securityConfiguration'] == null ? null : ((map['securityConfiguration'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
      workerType: map['workerType'] == null ? null : ((map['workerType'] as String).input()).input(),
      yarnEndpointAddress: map['yarnEndpointAddress'] == null ? null : ((map['yarnEndpointAddress'] as String).input()).input(),
      zeppelinRemoteSparkInterpreterPort: map['zeppelinRemoteSparkInterpreterPort'] == null ? null : ((map['zeppelinRemoteSparkInterpreterPort'] as int).input()).input(),
    );
  }
}

