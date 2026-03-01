// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_method_custom_response.dart';
import 'broker_authenticator_method_sat_response.dart';
import 'broker_authenticator_method_x509_response.dart';

/// Set of broker authentication policies. Only one method is supported for each entry.
class BrokerAuthenticatorMethodsResponse {
  /// Custom authentication configuration.
  final BrokerAuthenticatorMethodCustomResponse? customSettings;
  /// Custom authentication configuration.
  final String method;
  /// ServiceAccountToken authentication configuration.
  final BrokerAuthenticatorMethodSatResponse? serviceAccountTokenSettings;
  /// X.509 authentication configuration.
  final BrokerAuthenticatorMethodX509Response? x509Settings;

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
      'customSettings': ?customSettings == null ? null : customSettings!.toMap(),
      'method': method,
      'serviceAccountTokenSettings': ?serviceAccountTokenSettings == null ? null : serviceAccountTokenSettings!.toMap(),
      'x509Settings': ?x509Settings == null ? null : x509Settings!.toMap(),
    };
  }

  factory BrokerAuthenticatorMethodsResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodsResponse(
      customSettings: map['customSettings'] == null ? null : BrokerAuthenticatorMethodCustomResponse.fromMap((map['customSettings'] as Map).cast<String, dynamic>()),
      method: map['method'] as String,
      serviceAccountTokenSettings: map['serviceAccountTokenSettings'] == null ? null : BrokerAuthenticatorMethodSatResponse.fromMap((map['serviceAccountTokenSettings'] as Map).cast<String, dynamic>()),
      x509Settings: map['x509Settings'] == null ? null : BrokerAuthenticatorMethodX509Response.fromMap((map['x509Settings'] as Map).cast<String, dynamic>()),
    );
  }
}

