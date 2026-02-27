// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DevEndpoint.
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

  DevEndpointArgs({
    this.arguments,
    this.extraJarsS3Path,
    this.extraPythonLibsS3Path,
    this.glueVersion,
    this.name,
    this.numberOfNodes,
    this.numberOfWorkers,
    this.publicKey,
    this.publicKeys,
    this.region,
    required this.roleArn,
    this.securityConfiguration,
    this.securityGroupIds,
    this.subnetId,
    this.tags,
    this.workerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentsValue = arguments;
    if (argumentsValue != null) {
      map['arguments'] = argumentsValue;
    }
    final extraJarsS3PathValue = extraJarsS3Path;
    if (extraJarsS3PathValue != null) {
      map['extraJarsS3Path'] = extraJarsS3PathValue;
    }
    final extraPythonLibsS3PathValue = extraPythonLibsS3Path;
    if (extraPythonLibsS3PathValue != null) {
      map['extraPythonLibsS3Path'] = extraPythonLibsS3PathValue;
    }
    final glueVersionValue = glueVersion;
    if (glueVersionValue != null) {
      map['glueVersion'] = glueVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final numberOfNodesValue = numberOfNodes;
    if (numberOfNodesValue != null) {
      map['numberOfNodes'] = numberOfNodesValue;
    }
    final numberOfWorkersValue = numberOfWorkers;
    if (numberOfWorkersValue != null) {
      map['numberOfWorkers'] = numberOfWorkersValue;
    }
    final publicKeyValue = publicKey;
    if (publicKeyValue != null) {
      map['publicKey'] = publicKeyValue;
    }
    final publicKeysValue = publicKeys;
    if (publicKeysValue != null) {
      map['publicKeys'] = publicKeysValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final securityConfigurationValue = securityConfiguration;
    if (securityConfigurationValue != null) {
      map['securityConfiguration'] = securityConfigurationValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final workerTypeValue = workerType;
    if (workerTypeValue != null) {
      map['workerType'] = workerTypeValue;
    }
    return map;
  }

  factory DevEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DevEndpointArgs(
      arguments:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['arguments']),
      extraJarsS3Path:
          pulumi.Input.asOptionalInput<String>(map['extraJarsS3Path']),
      extraPythonLibsS3Path:
          pulumi.Input.asOptionalInput<String>(map['extraPythonLibsS3Path']),
      glueVersion: pulumi.Input.asOptionalInput<String>(map['glueVersion']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      numberOfNodes: pulumi.Input.asOptionalInput<int>(map['numberOfNodes']),
      numberOfWorkers:
          pulumi.Input.asOptionalInput<int>(map['numberOfWorkers']),
      publicKey: pulumi.Input.asOptionalInput<String>(map['publicKey']),
      publicKeys: pulumi.Input.asOptionalInput<List<String>>(map['publicKeys']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      securityConfiguration:
          pulumi.Input.asOptionalInput<String>(map['securityConfiguration']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      subnetId: pulumi.Input.asOptionalInput<String>(map['subnetId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      workerType: pulumi.Input.asOptionalInput<String>(map['workerType']),
    );
  }
}
