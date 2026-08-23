// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_get_kafka_version_get_kafka_version_args_doc}
/// Arguments for getKafkaVersion.
/// {@endtemplate}
/// {@macro pulumi_msk_get_kafka_version_get_kafka_version_args_doc}
class GetKafkaVersionArgs {
  /// Ordered list of preferred Kafka versions. The first match in this list will be returned. Either `preferredVersions` or `version` must be set.
  final pulumi.Input<List<String>>? preferredVersions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Version of MSK Kafka. For example 2.4.1.1 or "2.2.1" etc. Either `preferredVersions` or `version` must be set.
  final pulumi.Input<String>? version;

  /// Creates a new [GetKafkaVersionArgs].
  /// [preferredVersions] Ordered list of preferred Kafka versions. The first match in this list will be returned. Either `preferredVersions` or `version` must be set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version of MSK Kafka. For example 2.4.1.1 or "2.2.1" etc. Either `preferredVersions` or `version` must be set.
  const GetKafkaVersionArgs({
    this.preferredVersions,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredVersions': ?preferredVersions,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetKafkaVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetKafkaVersionArgs(
      preferredVersions: (() { final guardedValue = map['preferredVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
