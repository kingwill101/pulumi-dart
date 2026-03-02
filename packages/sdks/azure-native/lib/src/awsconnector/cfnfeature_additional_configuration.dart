// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNFeatureAdditionalConfiguration
class CFNFeatureAdditionalConfiguration {
  /// Property name
  final pulumi.Input<String>? name;
  /// Property status
  final pulumi.Input<String>? status;

  /// Creates a new [CFNFeatureAdditionalConfiguration].
  /// [name] Property name
  /// [status] Property status
  CFNFeatureAdditionalConfiguration({
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status': ?status,
    };
  }

  factory CFNFeatureAdditionalConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNFeatureAdditionalConfiguration(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

