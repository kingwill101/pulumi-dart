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
  ClientArgs({
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
      attributes: map['attributes'] == null ? null : (map['attributes']!).input(),
      authenticationName: map['authenticationName'] == null ? null : (map['authenticationName']! as String).input(),
      clientCertificateAuthentication: map['clientCertificateAuthentication'] == null ? null : (ClientCertificateAuthentication.fromMap((map['clientCertificateAuthentication']! as Map).cast<String, dynamic>())).input(),
      clientName: map['clientName'] == null ? null : (map['clientName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

