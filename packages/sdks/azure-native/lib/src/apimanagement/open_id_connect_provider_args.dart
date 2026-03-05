// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_open_id_connect_provider_args_doc}
/// The set of arguments for OpenIdConnectProvider.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_open_id_connect_provider_args_doc}
class OpenIdConnectProviderArgs {
  /// Client ID of developer console which is the client application.
  final pulumi.Input<String> clientId;
  /// Client Secret of developer console which is the client application.
  final pulumi.Input<String>? clientSecret;
  /// User-friendly description of OpenID Connect Provider.
  final pulumi.Input<String>? description;
  /// User-friendly OpenID Connect Provider name.
  final pulumi.Input<String> displayName;
  /// Metadata endpoint URI.
  final pulumi.Input<String> metadataEndpoint;
  /// Identifier of the OpenID Connect Provider.
  final pulumi.Input<String>? opid;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// If true, the Open ID Connect provider will be used in the API documentation in the developer portal. False by default if no value is provided.
  final pulumi.Input<bool>? useInApiDocumentation;
  /// If true, the Open ID Connect provider may be used in the developer portal test console. True by default if no value is provided.
  final pulumi.Input<bool>? useInTestConsole;

  /// Creates a new [OpenIdConnectProviderArgs].
  /// [clientId] Client ID of developer console which is the client application.
  /// [clientSecret] Client Secret of developer console which is the client application.
  /// [description] User-friendly description of OpenID Connect Provider.
  /// [displayName] User-friendly OpenID Connect Provider name.
  /// [metadataEndpoint] Metadata endpoint URI.
  /// [opid] Identifier of the OpenID Connect Provider.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [useInApiDocumentation] If true, the Open ID Connect provider will be used in the API documentation in the developer portal. False by default if no value is provided.
  /// [useInTestConsole] If true, the Open ID Connect provider may be used in the developer portal test console. True by default if no value is provided.
  OpenIdConnectProviderArgs({
    required this.clientId,
    this.clientSecret,
    this.description,
    required this.displayName,
    required this.metadataEndpoint,
    this.opid,
    required this.resourceGroupName,
    required this.serviceName,
    this.useInApiDocumentation,
    this.useInTestConsole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'description': ?description,
      'displayName': displayName,
      'metadataEndpoint': metadataEndpoint,
      'opid': ?opid,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'useInApiDocumentation': ?useInApiDocumentation,
      'useInTestConsole': ?useInTestConsole,
    };
  }

  factory OpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectProviderArgs(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      metadataEndpoint: pulumi.Input.fromValue(map['metadataEndpoint'] as String),
      opid: (() { final guardedValue = map['opid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      useInApiDocumentation: (() { final guardedValue = map['useInApiDocumentation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useInTestConsole: (() { final guardedValue = map['useInTestConsole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

