// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an APM
class ApmProperties {
  /// Non-sensitive properties for the APM
  final pulumi.Input<Map<String, String>>? properties;
  /// Sensitive properties for the APM
  final pulumi.Input<Map<String, String>>? secrets;
  /// APM Type
  final pulumi.Input<String> type;

  /// Creates a new [ApmProperties].
  /// [properties] Non-sensitive properties for the APM
  /// [secrets] Sensitive properties for the APM
  /// [type] APM Type
  ApmProperties({
    this.properties,
    this.secrets,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'secrets': ?secrets,
      'type': type,
    };
  }

  factory ApmProperties.fromMap(Map<String, dynamic> map) {
    return ApmProperties(
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      secrets: map['secrets'] == null ? null : ((map['secrets'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

