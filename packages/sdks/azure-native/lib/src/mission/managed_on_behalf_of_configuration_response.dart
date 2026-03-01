// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mobo_broker_resource_response.dart';

/// Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
class ManagedOnBehalfOfConfigurationResponse {
  /// Managed-On-Behalf-Of broker resources
  final List<MoboBrokerResourceResponse>? moboBrokerResources;

  /// Creates a new [ManagedOnBehalfOfConfigurationResponse].
  /// [moboBrokerResources] Managed-On-Behalf-Of broker resources
  ManagedOnBehalfOfConfigurationResponse({
    this.moboBrokerResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moboBrokerResources': ?moboBrokerResources == null ? null : pulumi.Input.encodeList<MoboBrokerResourceResponse, Map<String, dynamic>>(moboBrokerResources!, (value) => value.toMap()),
    };
  }

  factory ManagedOnBehalfOfConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOnBehalfOfConfigurationResponse(
      moboBrokerResources: map['moboBrokerResources'] == null ? null : pulumi.Input.decodeList<MoboBrokerResourceResponse>(map['moboBrokerResources'], (value) => MoboBrokerResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

