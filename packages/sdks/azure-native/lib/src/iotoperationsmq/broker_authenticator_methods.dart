// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_custom.dart';
import 'broker_authenticator_method_sat.dart';
import 'broker_authenticator_method_svid.dart';
import 'broker_authenticator_method_username_password.dart';
import 'broker_authenticator_method_x509.dart';

/// Collection of different CrdAuthenticator methods of Broker Resource. NOTE Enum - Only one method is supported for each entry.
class BrokerAuthenticatorMethods {
  /// Custom Authentication Method.
  final pulumi.Input<BrokerAuthenticatorMethodCustom>? custom;
  /// Service Account Token Method.
  final pulumi.Input<BrokerAuthenticatorMethodSat>? sat;
  /// Service Account Token Method.
  final pulumi.Input<BrokerAuthenticatorMethodSvid>? svid;
  /// UsernamePassword Method.
  final pulumi.Input<BrokerAuthenticatorMethodUsernamePassword>? usernamePassword;
  /// X509 Method.
  final pulumi.Input<BrokerAuthenticatorMethodX509>? x509;

  /// Creates a new [BrokerAuthenticatorMethods].
  /// [custom] Custom Authentication Method.
  /// [sat] Service Account Token Method.
  /// [svid] Service Account Token Method.
  /// [usernamePassword] UsernamePassword Method.
  /// [x509] X509 Method.
  BrokerAuthenticatorMethods({
    this.custom,
    this.sat,
    this.svid,
    this.usernamePassword,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'custom': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodCustom, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'sat': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodSat, Map<String, dynamic>>(sat, (value) => value.toMap()),
      'svid': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodSvid, Map<String, dynamic>>(svid, (value) => value.toMap()),
      'usernamePassword': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodUsernamePassword, Map<String, dynamic>>(usernamePassword, (value) => value.toMap()),
      'x509': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodX509, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory BrokerAuthenticatorMethods.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethods(
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodCustom.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sat: (() { final guardedValue = map['sat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodSat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      svid: (() { final guardedValue = map['svid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodSvid.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usernamePassword: (() { final guardedValue = map['usernamePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodUsernamePassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509: (() { final guardedValue = map['x509']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodX509.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

