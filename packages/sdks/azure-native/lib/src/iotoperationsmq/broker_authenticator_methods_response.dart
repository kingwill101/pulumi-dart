// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_method_custom_response.dart';
import 'broker_authenticator_method_sat_response.dart';
import 'broker_authenticator_method_svid_response.dart';
import 'broker_authenticator_method_username_password_response.dart';
import 'broker_authenticator_method_x509_response.dart';

/// Collection of different CrdAuthenticator methods of Broker Resource. NOTE Enum - Only one method is supported for each entry.
class BrokerAuthenticatorMethodsResponse {
  /// Custom Authentication Method.
  final pulumi.Input<BrokerAuthenticatorMethodCustomResponse>? custom;
  /// Service Account Token Method.
  final pulumi.Input<BrokerAuthenticatorMethodSatResponse>? sat;
  /// Service Account Token Method.
  final pulumi.Input<BrokerAuthenticatorMethodSvidResponse>? svid;
  /// UsernamePassword Method.
  final pulumi.Input<BrokerAuthenticatorMethodUsernamePasswordResponse>? usernamePassword;
  /// X509 Method.
  final pulumi.Input<BrokerAuthenticatorMethodX509Response>? x509;

  /// Creates a new [BrokerAuthenticatorMethodsResponse].
  /// [custom] Custom Authentication Method.
  /// [sat] Service Account Token Method.
  /// [svid] Service Account Token Method.
  /// [usernamePassword] UsernamePassword Method.
  /// [x509] X509 Method.
  const BrokerAuthenticatorMethodsResponse({
    this.custom,
    this.sat,
    this.svid,
    this.usernamePassword,
    this.x509,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'custom': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodCustomResponse, Map<String, dynamic>>(custom, (value) => value.toMap()),
      'sat': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodSatResponse, Map<String, dynamic>>(sat, (value) => value.toMap()),
      'svid': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodSvidResponse, Map<String, dynamic>>(svid, (value) => value.toMap()),
      'usernamePassword': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodUsernamePasswordResponse, Map<String, dynamic>>(usernamePassword, (value) => value.toMap()),
      'x509': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticatorMethodX509Response, Map<String, dynamic>>(x509, (value) => value.toMap()),
    };
  }

  factory BrokerAuthenticatorMethodsResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodsResponse(
      custom: (() { final guardedValue = map['custom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodCustomResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sat: (() { final guardedValue = map['sat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodSatResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      svid: (() { final guardedValue = map['svid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodSvidResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usernamePassword: (() { final guardedValue = map['usernamePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodUsernamePasswordResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509: (() { final guardedValue = map['x509']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerAuthenticatorMethodX509Response.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

