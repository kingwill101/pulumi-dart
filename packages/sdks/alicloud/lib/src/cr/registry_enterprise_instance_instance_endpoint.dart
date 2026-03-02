// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_enterprise_instance_instance_endpoint_domain.dart';

class RegistryEnterpriseInstanceInstanceEndpoint {
  /// Domain List
  final pulumi.Input<List<RegistryEnterpriseInstanceInstanceEndpointDomain>>? domains;
  /// enable
  final pulumi.Input<bool>? enable;
  /// Network Access Endpoint Type
  final pulumi.Input<String>? endpointType;

  /// Creates a new [RegistryEnterpriseInstanceInstanceEndpoint].
  /// [domains] Domain List
  /// [enable] enable
  /// [endpointType] Network Access Endpoint Type
  RegistryEnterpriseInstanceInstanceEndpoint({
    this.domains,
    this.enable,
    this.endpointType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': ?pulumi.Input.mapOptionalInputValue<List<RegistryEnterpriseInstanceInstanceEndpointDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<RegistryEnterpriseInstanceInstanceEndpointDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enable': ?enable,
      'endpointType': ?endpointType,
    };
  }

  factory RegistryEnterpriseInstanceInstanceEndpoint.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseInstanceInstanceEndpoint(
      domains: map['domains'] == null ? null : (pulumi.Input.decodeList<RegistryEnterpriseInstanceInstanceEndpointDomain>(map['domains']!, (value) => RegistryEnterpriseInstanceInstanceEndpointDomain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType']! as String).input(),
    );
  }
}

