// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnfeature_additional_configuration_response.dart';

/// Definition of CFNFeatureConfiguration
class CFNFeatureConfigurationResponse {
  /// Property additionalConfiguration
  final pulumi.Input<List<CFNFeatureAdditionalConfigurationResponse>?>? additionalConfiguration;
  /// Property name
  final pulumi.Input<String?>? name;
  /// Property status
  final pulumi.Input<String?>? status;

  /// Creates a new [CFNFeatureConfigurationResponse].
  /// [additionalConfiguration] Property additionalConfiguration
  /// [name] Property name
  /// [status] Property status
  const CFNFeatureConfigurationResponse({
    this.additionalConfiguration,
    this.name,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfiguration': ?pulumi.Input.mapOptionalInputValue<List<CFNFeatureAdditionalConfigurationResponse>, List<Map<String, dynamic>>>(additionalConfiguration, (value) => pulumi.Input.encodeList<CFNFeatureAdditionalConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'status': ?status,
    };
  }

  factory CFNFeatureConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNFeatureConfigurationResponse(
      additionalConfiguration: (() { final guardedValue = map['additionalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CFNFeatureAdditionalConfigurationResponse>(guardedValue, (value) => CFNFeatureAdditionalConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
