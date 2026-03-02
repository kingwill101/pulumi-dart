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
      customSettings: map['customSettings'] == null ? null : (BrokerAuthenticatorMethodCustom.fromMap((map['customSettings']! as Map).cast<String, dynamic>())).input(),
      method: (map['method'] as String).input(),
      serviceAccountTokenSettings: map['serviceAccountTokenSettings'] == null ? null : (BrokerAuthenticatorMethodSat.fromMap((map['serviceAccountTokenSettings']! as Map).cast<String, dynamic>())).input(),
      x509Settings: map['x509Settings'] == null ? null : (BrokerAuthenticatorMethodX509.fromMap((map['x509Settings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

