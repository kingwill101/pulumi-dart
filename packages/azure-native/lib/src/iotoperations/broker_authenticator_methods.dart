// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_method_custom.dart';
import 'broker_authenticator_method_sat.dart';
import 'broker_authenticator_method_x509.dart';

/// Set of broker authentication policies. Only one method is supported for each entry.
class BrokerAuthenticatorMethods {
  /// Custom authentication configuration.
  final BrokerAuthenticatorMethodCustom? customSettings;
  /// Custom authentication configuration.
  final String method;
  /// ServiceAccountToken authentication configuration.
  final BrokerAuthenticatorMethodSat? serviceAccountTokenSettings;
  /// X.509 authentication configuration.
  final BrokerAuthenticatorMethodX509? x509Settings;

  /// Creates a new [BrokerAuthenticatorMethods].
  /// [customSettings] Custom authentication configuration.
  /// [method] Custom authentication configuration.
  /// [serviceAccountTokenSettings] ServiceAccountToken authentication configuration.
  /// [x509Settings] X.509 authentication configuration.
  BrokerAuthenticatorMethods({
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

  factory BrokerAuthenticatorMethods.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethods(
      customSettings: map['customSettings'] == null ? null : BrokerAuthenticatorMethodCustom.fromMap((map['customSettings'] as Map).cast<String, dynamic>()),
      method: map['method'] as String,
      serviceAccountTokenSettings: map['serviceAccountTokenSettings'] == null ? null : BrokerAuthenticatorMethodSat.fromMap((map['serviceAccountTokenSettings'] as Map).cast<String, dynamic>()),
      x509Settings: map['x509Settings'] == null ? null : BrokerAuthenticatorMethodX509.fromMap((map['x509Settings'] as Map).cast<String, dynamic>()),
    );
  }
}

