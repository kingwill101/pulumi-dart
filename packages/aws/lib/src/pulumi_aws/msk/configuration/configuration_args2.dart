// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Configuration.
class ConfigurationArgs2 {
  /// Description of the configuration.
  final Input<String>? description;

  /// List of Apache Kafka versions which can use this configuration.
  final Input<List<String>>? kafkaVersions;

  /// Name of the configuration.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Contents of the server.properties file. Supported properties are documented in the [MSK Developer Guide](https://docs.aws.amazon.com/msk/latest/developerguide/msk-configuration-properties.html).
  final Input<String> serverProperties;

  ConfigurationArgs2({
    this.description,
    this.kafkaVersions,
    this.name,
    this.region,
    required this.serverProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kafkaVersionsValue = kafkaVersions;
    if (kafkaVersionsValue != null) {
      map['kafkaVersions'] = kafkaVersionsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverProperties'] = serverProperties;
    return map;
  }

  factory ConfigurationArgs2.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      kafkaVersions: Input.asOptionalInput<List<String>>(map['kafkaVersions']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serverProperties: Input.asInput<String>(map['serverProperties']),
    );
  }
}
