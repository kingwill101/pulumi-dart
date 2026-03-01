// ignore_for_file: unused_element, unnecessary_cast

import 'broker_authenticator_method_custom_response.dart';
import 'broker_authenticator_method_sat_response.dart';
import 'broker_authenticator_method_svid_response.dart';
import 'broker_authenticator_method_username_password_response.dart';
import 'broker_authenticator_method_x509_response.dart';

/// Collection of different CrdAuthenticator methods of Broker Resource. NOTE Enum - Only one method is supported for each entry.
class BrokerAuthenticatorMethodsResponse {
  /// Custom Authentication Method.
  final BrokerAuthenticatorMethodCustomResponse? custom;
  /// Service Account Token Method.
  final BrokerAuthenticatorMethodSatResponse? sat;
  /// Service Account Token Method.
  final BrokerAuthenticatorMethodSvidResponse? svid;
  /// UsernamePassword Method.
  final BrokerAuthenticatorMethodUsernamePasswordResponse? usernamePassword;
  /// X509 Method.
  final BrokerAuthenticatorMethodX509Response? x509;

  /// Creates a new [BrokerAuthenticatorMethodsResponse].
  /// [custom] Custom Authentication Method.
  /// [sat] Service Account Token Method.
  /// [svid] Service Account Token Method.
  /// [usernamePassword] UsernamePassword Method.
  /// [x509] X509 Method.
  BrokerAuthenticatorMethodsResponse({
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

  factory BrokerAuthenticatorMethodsResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodsResponse(
      custom: map['custom'] == null ? null : BrokerAuthenticatorMethodCustomResponse.fromMap((map['custom'] as Map).cast<String, dynamic>()),
      sat: map['sat'] == null ? null : BrokerAuthenticatorMethodSatResponse.fromMap((map['sat'] as Map).cast<String, dynamic>()),
      svid: map['svid'] == null ? null : BrokerAuthenticatorMethodSvidResponse.fromMap((map['svid'] as Map).cast<String, dynamic>()),
      usernamePassword: map['usernamePassword'] == null ? null : BrokerAuthenticatorMethodUsernamePasswordResponse.fromMap((map['usernamePassword'] as Map).cast<String, dynamic>()),
      x509: map['x509'] == null ? null : BrokerAuthenticatorMethodX509Response.fromMap((map['x509'] as Map).cast<String, dynamic>()),
    );
  }
}

