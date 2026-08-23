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
  /// The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `workerType`.
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
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [numberOfNodes] The number of AWS Glue Data Processing Units (DPUs) to allocate to this endpoint. Conflicts with `workerType`.
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
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcId] he ID of the VPC used by this endpoint.
  /// [workerType] The type of predefined worker that is allocated to this endpoint. Accepts a value of Standard, G.1X, or G.2X.
  /// [yarnEndpointAddress] The YARN endpoint address used by this endpoint.
  /// [zeppelinRemoteSparkInterpreterPort] The Apache Zeppelin port for the remote Apache Spark interpreter.
  const DevEndpointState({
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
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraJarsS3Path: (() { final guardedValue = map['extraJarsS3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraPythonLibsS3Path: (() { final guardedValue = map['extraPythonLibsS3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glueVersion: (() { final guardedValue = map['glueVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfNodes: (() { final guardedValue = map['numberOfNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      numberOfWorkers: (() { final guardedValue = map['numberOfWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateAddress: (() { final guardedValue = map['privateAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicAddress: (() { final guardedValue = map['publicAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeys: (() { final guardedValue = map['publicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityConfiguration: (() { final guardedValue = map['securityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workerType: (() { final guardedValue = map['workerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      yarnEndpointAddress: (() { final guardedValue = map['yarnEndpointAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zeppelinRemoteSparkInterpreterPort: (() { final guardedValue = map['zeppelinRemoteSparkInterpreterPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
