// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mobo_broker_resource_response.dart';

/// Managed-On-Behalf-Of configuration properties. This configuration exists for the resources where a resource provider manages those resources on behalf of the resource owner.
class ManagedOnBehalfOfConfigurationResponse {
  /// Managed-On-Behalf-Of broker resources
  final pulumi.Input<List<MoboBrokerResourceResponse>>? moboBrokerResources;

  /// Creates a new [ManagedOnBehalfOfConfigurationResponse].
  /// [moboBrokerResources] Managed-On-Behalf-Of broker resources
  const ManagedOnBehalfOfConfigurationResponse({
    this.moboBrokerResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moboBrokerResources': ?pulumi.Input.mapOptionalInputValue<List<MoboBrokerResourceResponse>, List<Map<String, dynamic>>>(moboBrokerResources, (value) => pulumi.Input.encodeList<MoboBrokerResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedOnBehalfOfConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOnBehalfOfConfigurationResponse(
      moboBrokerResources: (() { final guardedValue = map['moboBrokerResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MoboBrokerResourceResponse>(guardedValue, (value) => MoboBrokerResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
