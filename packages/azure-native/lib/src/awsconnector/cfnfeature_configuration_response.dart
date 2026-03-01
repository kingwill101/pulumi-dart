// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnfeature_additional_configuration_response.dart';

/// Definition of CFNFeatureConfiguration
class CFNFeatureConfigurationResponse {
  /// Property additionalConfiguration
  final List<CFNFeatureAdditionalConfigurationResponse>? additionalConfiguration;
  /// Property name
  final String? name;
  /// Property status
  final String? status;

  /// Creates a new [CFNFeatureConfigurationResponse].
  /// [additionalConfiguration] Property additionalConfiguration
  /// [name] Property name
  /// [status] Property status
  CFNFeatureConfigurationResponse({
    this.additionalConfiguration,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?additionalConfiguration == null ? null : pulumi.Input.encodeList<CFNFeatureAdditionalConfigurationResponse, Map<String, dynamic>>(additionalConfiguration!, (value) => value.toMap()),
      'name': ?name,
      'status': ?status,
    };
  }

  factory CFNFeatureConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNFeatureConfigurationResponse(
      additionalConfiguration: map['additionalConfiguration'] == null ? null : pulumi.Input.decodeList<CFNFeatureAdditionalConfigurationResponse>(map['additionalConfiguration'], (value) => CFNFeatureAdditionalConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

