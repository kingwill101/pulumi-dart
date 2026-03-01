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
    required pulumi.Output<String> clientId,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> metadataEndpoint,
    pulumi.Output<String>? opid,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<bool>? useInApiDocumentation,
    pulumi.Output<bool>? useInTestConsole,
  }) :
      clientId = pulumi.Input.asInput<String>(clientId),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      metadataEndpoint = pulumi.Input.asInput<String>(metadataEndpoint),
      opid = pulumi.Input.asOptionalInput<String>(opid),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      useInApiDocumentation = pulumi.Input.asOptionalInput<bool>(useInApiDocumentation),
      useInTestConsole = pulumi.Input.asOptionalInput<bool>(useInTestConsole);

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
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      metadataEndpoint: pulumi.Output.create<String>(map['metadataEndpoint'] as String),
      opid: map['opid'] == null ? null : pulumi.Output.create<String>(map['opid'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      useInApiDocumentation: map['useInApiDocumentation'] == null ? null : pulumi.Output.create<bool>(map['useInApiDocumentation'] as bool),
      useInTestConsole: map['useInTestConsole'] == null ? null : pulumi.Output.create<bool>(map['useInTestConsole'] as bool),
    );
  }
}

