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
    pulumi.Output<dynamic>? attributes,
    pulumi.Output<String>? authenticationName,
    pulumi.Output<ClientCertificateAuthentication>? clientCertificateAuthentication,
    pulumi.Output<String>? clientName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? state,
  }) :
      attributes = pulumi.Input.asOptionalInput<dynamic>(attributes),
      authenticationName = pulumi.Input.asOptionalInput<String>(authenticationName),
      clientCertificateAuthentication = pulumi.Input.asOptionalInput<ClientCertificateAuthentication>(clientCertificateAuthentication),
      clientName = pulumi.Input.asOptionalInput<String>(clientName),
      description = pulumi.Input.asOptionalInput<String>(description),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      attributes: map['attributes'] == null ? null : pulumi.Output.create<dynamic>(map['attributes']),
      authenticationName: map['authenticationName'] == null ? null : pulumi.Output.create<String>(map['authenticationName'] as String),
      clientCertificateAuthentication: map['clientCertificateAuthentication'] == null ? null : pulumi.Output.create<ClientCertificateAuthentication>(ClientCertificateAuthentication.fromMap((map['clientCertificateAuthentication'] as Map).cast<String, dynamic>())),
      clientName: map['clientName'] == null ? null : pulumi.Output.create<String>(map['clientName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

