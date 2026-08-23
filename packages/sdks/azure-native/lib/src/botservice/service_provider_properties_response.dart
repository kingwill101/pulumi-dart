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
  const ServiceProviderPropertiesResponse({
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
      devPortalUrl: pulumi.Input.fromValue(map['devPortalUrl'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      iconUrl: (() { final guardedValue = map['iconUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceProviderParameterResponse>(guardedValue, (value) => ServiceProviderParameterResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceProviderName: pulumi.Input.fromValue(map['serviceProviderName'] as String),
    );
  }
}
