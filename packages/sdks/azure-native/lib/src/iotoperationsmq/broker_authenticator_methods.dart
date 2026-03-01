// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_method_custom.dart';
import 'broker_authenticator_method_sat.dart';
import 'broker_authenticator_method_svid.dart';
import 'broker_authenticator_method_username_password.dart';
import 'broker_authenticator_method_x509.dart';

/// Collection of different CrdAuthenticator methods of Broker Resource. NOTE Enum - Only one method is supported for each entry.
class BrokerAuthenticatorMethods {
  /// Custom Authentication Method.
  final BrokerAuthenticatorMethodCustom? custom;
  /// Service Account Token Method.
  final BrokerAuthenticatorMethodSat? sat;
  /// Service Account Token Method.
  final BrokerAuthenticatorMethodSvid? svid;
  /// UsernamePassword Method.
  final BrokerAuthenticatorMethodUsernamePassword? usernamePassword;
  /// X509 Method.
  final BrokerAuthenticatorMethodX509? x509;

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
      'custom': ?custom == null ? null : custom!.toMap(),
      'sat': ?sat == null ? null : sat!.toMap(),
      'svid': ?svid == null ? null : svid!.toMap(),
      'usernamePassword': ?usernamePassword == null ? null : usernamePassword!.toMap(),
      'x509': ?x509 == null ? null : x509!.toMap(),
    };
  }

  factory BrokerAuthenticatorMethods.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethods(
      custom: map['custom'] == null ? null : BrokerAuthenticatorMethodCustom.fromMap((map['custom'] as Map).cast<String, dynamic>()),
      sat: map['sat'] == null ? null : BrokerAuthenticatorMethodSat.fromMap((map['sat'] as Map).cast<String, dynamic>()),
      svid: map['svid'] == null ? null : BrokerAuthenticatorMethodSvid.fromMap((map['svid'] as Map).cast<String, dynamic>()),
      usernamePassword: map['usernamePassword'] == null ? null : BrokerAuthenticatorMethodUsernamePassword.fromMap((map['usernamePassword'] as Map).cast<String, dynamic>()),
      x509: map['x509'] == null ? null : BrokerAuthenticatorMethodX509.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

