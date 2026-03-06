// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNFeatureAdditionalConfiguration
class CFNFeatureAdditionalConfigurationResponse {
  /// Property name
  final pulumi.Input<String>? name;
  /// Property status
  final pulumi.Input<String>? status;

  /// Creates a new [CFNFeatureAdditionalConfigurationResponse].
  /// [name] Property name
  /// [status] Property status
  const CFNFeatureAdditionalConfigurationResponse({
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status': ?status,
    };
  }

  factory CFNFeatureAdditionalConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNFeatureAdditionalConfigurationResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

