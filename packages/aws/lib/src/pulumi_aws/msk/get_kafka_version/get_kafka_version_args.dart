// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKafkaVersion.
class GetKafkaVersionArgs {
  /// Ordered list of preferred Kafka versions. The first match in this list will be returned. Either `preferred_versions` or `version` must be set.
  final pulumi.Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Version of MSK Kafka. For example 2.4.1.1 or "2.2.1" etc. Either `preferred_versions` or `version` must be set.
  final pulumi.Input<String>? version;

  GetKafkaVersionArgs({
    this.preferredVersions,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final preferredVersionsValue = preferredVersions;
    if (preferredVersionsValue != null) {
      map['preferredVersions'] = preferredVersionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetKafkaVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetKafkaVersionArgs(
      preferredVersions:
          pulumi.Input.asOptionalInput<List<String>>(map['preferredVersions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
