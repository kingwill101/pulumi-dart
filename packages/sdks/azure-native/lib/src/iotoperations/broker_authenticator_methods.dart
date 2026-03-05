// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_custom.dart';
import 'broker_authenticator_method_sat.dart';
import 'broker_authenticator_method_x509.dart';

/// Set of broker authentication policies. Only one method is supported for each entry.
class BrokerAuthenticatorMethods {
  /// Custom authentication configuration.
  final pulumi.Input<BrokerAuthenticatorMethodCustom>? customSettings;
  /// Custom authentication configuration.
  final pulumi.Input<String> method;
  /// ServiceAccountToken authentication configuration.
  final pulumi.Input<BrokerAuthenticatorMethodSat>? serviceAccountTokenSettings;
  /// X.509 authentication configuration.
  final pulumi.Input<BrokerAuthenticatorMethodX509>? x509Settings;

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
      'customSettings': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodCustom, Map<String, dynamic>>(customSettings, (value) => value.toMap()),
      'method': method,
      'serviceAccountTokenSettings': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodSat, Map<String, dynamic>>(serviceAccountTokenSettings, (value) => value.toMap()),
      'x509Settings': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodX509, Map<String, dynamic>>(x509Settings, (value) => value.toMap()),
    };
  }

  factory BrokerAuthenticatorMethods.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethods(
      customSettings: (() { final guardedValue = map['customSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodCustom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      method: pulumi.Input.fromValue(map['method'] as String),
      serviceAccountTokenSettings: (() { final guardedValue = map['serviceAccountTokenSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodSat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509Settings: (() { final guardedValue = map['x509Settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodX509.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

