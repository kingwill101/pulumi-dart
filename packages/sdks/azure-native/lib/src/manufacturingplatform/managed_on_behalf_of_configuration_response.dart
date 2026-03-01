// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mobo_broker_resource_response.dart';

/// Configuration of the managed on behalf of resource.
class ManagedOnBehalfOfConfigurationResponse {
  /// Associated MoboBrokerResources.
  final List<MoboBrokerResourceResponse> moboBrokerResources;

  /// Creates a new [ManagedOnBehalfOfConfigurationResponse].
  /// [moboBrokerResources] Associated MoboBrokerResources.
  ManagedOnBehalfOfConfigurationResponse({
    required this.moboBrokerResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moboBrokerResources': pulumi.Input.encodeList<MoboBrokerResourceResponse, Map<String, dynamic>>(moboBrokerResources, (value) => value.toMap()),
    };
  }

  factory ManagedOnBehalfOfConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ManagedOnBehalfOfConfigurationResponse(
      moboBrokerResources: pulumi.Input.decodeList<MoboBrokerResourceResponse>(map['moboBrokerResources'], (value) => MoboBrokerResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

