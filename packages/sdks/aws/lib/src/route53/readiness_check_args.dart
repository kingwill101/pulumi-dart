// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_recovery_readiness_readiness_check_readiness_check_args_doc}
/// The set of arguments for ReadinessCheck.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_readiness_readiness_check_readiness_check_args_doc}
class ReadinessCheckArgs {
  /// Unique name describing the readiness check.
  final pulumi.Input<String> readinessCheckName;
  /// Name describing the resource set that will be monitored for readiness.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceSetName;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ReadinessCheckArgs].
  /// [readinessCheckName] Unique name describing the readiness check.
  /// [resourceSetName] Name describing the resource set that will be monitored for readiness.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  ReadinessCheckArgs({
    required this.readinessCheckName,
    required this.resourceSetName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readinessCheckName': readinessCheckName,
      'resourceSetName': resourceSetName,
      'tags': ?tags,
    };
  }

  factory ReadinessCheckArgs.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckArgs(
      readinessCheckName: (map['readinessCheckName'] as String).input(),
      resourceSetName: (map['resourceSetName'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

