// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_custom_response.dart';
import 'broker_authenticator_method_sat_response.dart';
import 'broker_authenticator_method_x509_response.dart';

/// Set of broker authentication policies. Only one method is supported for each entry.
class BrokerAuthenticatorMethodsResponse {
  /// Custom authentication configuration.
  final pulumi.Input<BrokerAuthenticatorMethodCustomResponse>? customSettings;
  /// Custom authentication configuration.
  final pulumi.Input<String> method;
  /// ServiceAccountToken authentication configuration.
  final pulumi.Input<BrokerAuthenticatorMethodSatResponse>? serviceAccountTokenSettings;
  /// X.509 authentication configuration.
  final pulumi.Input<BrokerAuthenticatorMethodX509Response>? x509Settings;

  /// Creates a new [BrokerAuthenticatorMethodsResponse].
  /// [customSettings] Custom authentication configuration.
  /// [method] Custom authentication configuration.
  /// [serviceAccountTokenSettings] ServiceAccountToken authentication configuration.
  /// [x509Settings] X.509 authentication configuration.
  BrokerAuthenticatorMethodsResponse({
    this.customSettings,
    required this.method,
    this.serviceAccountTokenSettings,
    this.x509Settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSettings': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodCustomResponse, Map<String, dynamic>>(customSettings, (value) => value.toMap()),
      'method': method,
      'serviceAccountTokenSettings': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodSatResponse, Map<String, dynamic>>(serviceAccountTokenSettings, (value) => value.toMap()),
      'x509Settings': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodX509Response, Map<String, dynamic>>(x509Settings, (value) => value.toMap()),
    };
  }

  factory BrokerAuthenticatorMethodsResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodsResponse(
      customSettings: (() { final guardedValue = map['customSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodCustomResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      serviceAccountTokenSettings: (() { final guardedValue = map['serviceAccountTokenSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodSatResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509Settings: (() { final guardedValue = map['x509Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodX509Response.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

