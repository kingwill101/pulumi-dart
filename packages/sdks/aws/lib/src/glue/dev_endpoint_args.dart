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
      arguments: (() {
        final guardedValue = map['arguments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      extraJarsS3Path: (() {
        final guardedValue = map['extraJarsS3Path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extraPythonLibsS3Path: (() {
        final guardedValue = map['extraPythonLibsS3Path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      glueVersion: (() {
        final guardedValue = map['glueVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      numberOfNodes: (() {
        final guardedValue = map['numberOfNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      numberOfWorkers: (() {
        final guardedValue = map['numberOfWorkers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      publicKey: (() {
        final guardedValue = map['publicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicKeys: (() {
        final guardedValue = map['publicKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      securityConfiguration: (() {
        final guardedValue = map['securityConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityGroupIds: (() {
        final guardedValue = map['securityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workerType: (() {
        final guardedValue = map['workerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
