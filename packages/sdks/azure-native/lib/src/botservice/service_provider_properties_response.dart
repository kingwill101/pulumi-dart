// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_provider_parameter_response.dart';

/// The Object used to describe a Service Provider supported by Bot Service
class ServiceProviderPropertiesResponse {
  /// URL of Dev Portal
  final pulumi.Input<String> devPortalUrl;
  /// Display Name of the Service Provider
  final pulumi.Input<String> displayName;
  /// The URL of icon
  final pulumi.Input<String>? iconUrl;
  /// Id for Service Provider
  final pulumi.Input<String> id;
  /// The list of parameters for the Service Provider
  final pulumi.Input<List<ServiceProviderParameterResponse>>? parameters;
  /// Name of the Service Provider
  final pulumi.Input<String> serviceProviderName;

  /// Creates a new [ServiceProviderPropertiesResponse].
  /// [devPortalUrl] URL of Dev Portal
  /// [displayName] Display Name of the Service Provider
  /// [iconUrl] The URL of icon
  /// [id] Id for Service Provider
  /// [parameters] The list of parameters for the Service Provider
  /// [serviceProviderName] Name of the Service Provider
  ServiceProviderPropertiesResponse({
    required this.devPortalUrl,
    required this.displayName,
    this.iconUrl,
    required this.id,
    this.parameters,
    required this.serviceProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devPortalUrl': devPortalUrl,
      'displayName': displayName,
      'iconUrl': ?iconUrl,
      'id': id,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ServiceProviderParameterResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ServiceProviderParameterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceProviderName': serviceProviderName,
    };
  }

  factory ServiceProviderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceProviderPropertiesResponse(
      devPortalUrl: (map['devPortalUrl'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      iconUrl: map['iconUrl'] == null ? null : (map['iconUrl'] as String).input(),
      id: (map['id'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ServiceProviderParameterResponse>(map['parameters'], (value) => ServiceProviderParameterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceProviderName: (map['serviceProviderName'] as String).input(),
    );
  }
}

