// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of automated cluster updates feature.
class AutomaticClusterUpdateDefinitionResponse {
  final pulumi.Input<String>? value;

  /// Creates a new [AutomaticClusterUpdateDefinitionResponse].
  /// [value] Optional.
  AutomaticClusterUpdateDefinitionResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AutomaticClusterUpdateDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterUpdateDefinitionResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

