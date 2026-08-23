// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_authentication.dart';

/// {@template pulumi_eventgrid_client_args_doc}
/// The set of arguments for Client.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_client_args_doc}
class ClientArgs {
  /// Attributes for the client. Supported values are int, bool, string, string[].
  /// Example:
  /// "attributes": { "room": "345", "floor": 12, "deviceTypes": ["Fan", "Light"] }
  final pulumi.Input<dynamic>? attributes;
  /// The name presented by the client for authentication. The default value is the name of the resource.
  final pulumi.Input<String>? authenticationName;
  /// The client certificate authentication information.
  final pulumi.Input<ClientCertificateAuthentication>? clientCertificateAuthentication;
  /// The client name.
  final pulumi.Input<String>? clientName;
  /// Description for the Client resource.
  final pulumi.Input<String>? description;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Indicates if the client is enabled or not. Default value is Enabled.
  final pulumi.Input<String>? state;

  /// Creates a new [ClientArgs].
  /// [attributes] Attributes for the client. Supported values are int, bool, string, string[].
  /// [authenticationName] The name presented by the client for authentication. The default value is the name of the resource.
  /// [clientCertificateAuthentication] The client certificate authentication information.
  /// [clientName] The client name.
  /// [description] Description for the Client resource.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [state] Indicates if the client is enabled or not. Default value is Enabled.
  const ClientArgs({
    this.attributes,
    this.authenticationName,
    this.clientCertificateAuthentication,
    this.clientName,
    this.description,
    required this.namespaceName,
    required this.resourceGroupName,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'authenticationName': ?authenticationName,
      'clientCertificateAuthentication': ?pulumi.Input.mapOptionalInputValue<ClientCertificateAuthentication, Map<String, dynamic>>(clientCertificateAuthentication, (value) => value.toMap()),
      'clientName': ?clientName,
      'description': ?description,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'state': ?state,
    };
  }

  factory ClientArgs.fromMap(Map<String, dynamic> map) {
    return ClientArgs(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      authenticationName: (() { final guardedValue = map['authenticationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateAuthentication: (() { final guardedValue = map['clientCertificateAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientCertificateAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientName: (() { final guardedValue = map['clientName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
