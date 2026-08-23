// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_arn_build_arn_build_args_doc}
/// Arguments for arnBuild.
/// {@endtemplate}
/// {@macro pulumi_index_arn_build_arn_build_args_doc}
class ArnBuildArgs {
  /// AWS account identifier
  final pulumi.Input<String> accountId;
  /// Partition in which the resource is located
  final pulumi.Input<String> partition;
  /// Region code
  final pulumi.Input<String> region;
  /// Resource section, typically composed of a resource type and identifier
  final pulumi.Input<String> resource;
  /// Service namespace
  final pulumi.Input<String> service;

  /// Creates a new [ArnBuildArgs].
  /// [accountId] AWS account identifier
  /// [partition] Partition in which the resource is located
  /// [region] Region code
  /// [resource] Resource section, typically composed of a resource type and identifier
  /// [service] Service namespace
  const ArnBuildArgs({
    required this.accountId,
    required this.partition,
    required this.region,
    required this.resource,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'partition': partition,
      'region': region,
      'resource': resource,
      'service': service,
    };
  }

  factory ArnBuildArgs.fromMap(Map<String, dynamic> map) {
    return ArnBuildArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      partition: pulumi.Input.fromValue(map['partition'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      resource: pulumi.Input.fromValue(map['resource'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
