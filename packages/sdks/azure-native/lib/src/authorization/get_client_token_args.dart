// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_client_token_args_doc}
/// Arguments for getClientToken.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_client_token_args_doc}
class GetClientTokenArgs {
  /// Optional authentication endpoint. Defaults to the endpoint of Azure Resource Manager.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [GetClientTokenArgs].
  /// [endpoint] Optional authentication endpoint. Defaults to the endpoint of Azure Resource Manager.
  GetClientTokenArgs({this.endpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endpoint': ?endpoint};
  }

  factory GetClientTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetClientTokenArgs(
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
