// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ReadinessCheck.
class ReadinessCheckArgs {
  /// Unique name describing the readiness check.
  final pulumi.Input<String> readinessCheckName;

  /// Name describing the resource set that will be monitored for readiness.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceSetName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  ReadinessCheckArgs({
    required this.readinessCheckName,
    required this.resourceSetName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['readinessCheckName'] = readinessCheckName;
    map['resourceSetName'] = resourceSetName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ReadinessCheckArgs.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckArgs(
      readinessCheckName:
          pulumi.Input.asInput<String>(map['readinessCheckName']),
      resourceSetName: pulumi.Input.asInput<String>(map['resourceSetName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
