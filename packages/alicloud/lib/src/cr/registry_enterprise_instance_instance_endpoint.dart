// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_enterprise_instance_instance_endpoint_domain.dart';

class RegistryEnterpriseInstanceInstanceEndpoint {
  /// Domain List
  final List<RegistryEnterpriseInstanceInstanceEndpointDomain>? domains;
  /// enable
  final bool? enable;
  /// Network Access Endpoint Type
  final String? endpointType;

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
      'domains': ?domains == null ? null : pulumi.Input.encodeList<RegistryEnterpriseInstanceInstanceEndpointDomain, Map<String, dynamic>>(domains!, (value) => value.toMap()),
      'enable': ?enable,
      'endpointType': ?endpointType,
    };
  }

  factory RegistryEnterpriseInstanceInstanceEndpoint.fromMap(Map<String, dynamic> map) {
    return RegistryEnterpriseInstanceInstanceEndpoint(
      domains: map['domains'] == null ? null : pulumi.Input.decodeList<RegistryEnterpriseInstanceInstanceEndpointDomain>(map['domains'], (value) => RegistryEnterpriseInstanceInstanceEndpointDomain.fromMap((value as Map).cast<String, dynamic>())),
      enable: map['enable'] == null ? null : map['enable'] as bool,
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
    );
  }
}

