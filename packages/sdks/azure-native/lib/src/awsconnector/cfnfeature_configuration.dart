// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnfeature_additional_configuration.dart';

/// Definition of CFNFeatureConfiguration
class CFNFeatureConfiguration {
  /// Property additionalConfiguration
  final List<CFNFeatureAdditionalConfiguration>? additionalConfiguration;
  /// Property name
  final String? name;
  /// Property status
  final String? status;

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
      'additionalConfiguration': ?additionalConfiguration == null ? null : pulumi.Input.encodeList<CFNFeatureAdditionalConfiguration, Map<String, dynamic>>(additionalConfiguration!, (value) => value.toMap()),
      'name': ?name,
      'status': ?status,
    };
  }

  factory CFNFeatureConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNFeatureConfiguration(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : pulumi.Input.decodeList<CFNFeatureAdditionalConfiguration>(map['additionalConfiguration'], (value) => CFNFeatureAdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

