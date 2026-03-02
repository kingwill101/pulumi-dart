// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnfeature_additional_configuration.dart';

/// Definition of CFNFeatureConfiguration
class CFNFeatureConfiguration {
  /// Property additionalConfiguration
  final pulumi.Input<List<CFNFeatureAdditionalConfiguration>>? additionalConfiguration;
  /// Property name
  final pulumi.Input<String>? name;
  /// Property status
  final pulumi.Input<String>? status;

  /// Creates a new [CFNFeatureConfiguration].
  /// [additionalConfiguration] Property additionalConfiguration
  /// [name] Property name
  /// [status] Property status
  CFNFeatureConfiguration({
    this.additionalConfiguration,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?pulumi.Input.mapOptionalInputValue<List<CFNFeatureAdditionalConfiguration>, List<Map<String, dynamic>>>(additionalConfiguration, (value) => pulumi.Input.encodeList<CFNFeatureAdditionalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'status': ?status,
    };
  }

  factory CFNFeatureConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNFeatureConfiguration(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : (pulumi.Input.decodeList<CFNFeatureAdditionalConfiguration>(map['additionalConfiguration'], (value) => CFNFeatureAdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

