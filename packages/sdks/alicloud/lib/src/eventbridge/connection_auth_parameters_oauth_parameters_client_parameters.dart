// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthParametersOauthParametersClientParameters {
  /// The ID of the client.
  final pulumi.Input<String>? clientId;
  /// The AccessKey secret of the client.
  final pulumi.Input<String>? clientSecret;

  /// Creates a new [ConnectionAuthParametersOauthParametersClientParameters].
  /// [clientId] The ID of the client.
  /// [clientSecret] The AccessKey secret of the client.
  ConnectionAuthParametersOauthParametersClientParameters({
    this.clientId,
    this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
    };
  }

  factory ConnectionAuthParametersOauthParametersClientParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersOauthParametersClientParameters(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

