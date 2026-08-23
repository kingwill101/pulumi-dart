// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mobo_broker_resource_response.dart';

/// For tracking mobo resources
class WithMoboBrokerResourcesResponse {
  /// Managed-On-Behalf-Of broker resources
  final pulumi.Input<List<MoboBrokerResourceResponse>> moboBrokerResources;

  /// Creates a new [WithMoboBrokerResourcesResponse].
  /// [moboBrokerResources] Managed-On-Behalf-Of broker resources
  const WithMoboBrokerResourcesResponse({
    required this.moboBrokerResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moboBrokerResources': pulumi.Input.mapInputValue<List<MoboBrokerResourceResponse>, List<Map<String, dynamic>>>(moboBrokerResources, (value) => pulumi.Input.encodeList<MoboBrokerResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WithMoboBrokerResourcesResponse.fromMap(Map<String, dynamic> map) {
    return WithMoboBrokerResourcesResponse(
      moboBrokerResources: pulumi.Input.fromValue(pulumi.Input.decodeList<MoboBrokerResourceResponse>(map['moboBrokerResources']!, (value) => MoboBrokerResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
