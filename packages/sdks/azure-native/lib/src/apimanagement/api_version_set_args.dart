// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_api_version_set_args_doc}
/// The set of arguments for ApiVersionSet.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_version_set_args_doc}
class ApiVersionSetArgs {
  /// Description of API Version Set.
  final pulumi.Input<String>? description;
  /// Name of API Version Set
  final pulumi.Input<String> displayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  final pulumi.Input<String>? versionHeaderName;
  /// Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  final pulumi.Input<String>? versionQueryName;
  /// Api Version Set identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? versionSetId;
  /// An value that determines where the API Version identifier will be located in a HTTP request.
  final pulumi.Input<String> versioningScheme;

  /// Creates a new [ApiVersionSetArgs].
  /// [description] Description of API Version Set.
  /// [displayName] Name of API Version Set
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [versionHeaderName] Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`.
  /// [versionQueryName] Name of query parameter that indicates the API Version if versioningScheme is set to `query`.
  /// [versionSetId] Api Version Set identifier. Must be unique in the current API Management service instance.
  /// [versioningScheme] An value that determines where the API Version identifier will be located in a HTTP request.
  ApiVersionSetArgs({
    this.description,
    required this.displayName,
    required this.resourceGroupName,
    required this.serviceName,
    this.versionHeaderName,
    this.versionQueryName,
    this.versionSetId,
    required this.versioningScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'versionHeaderName': ?versionHeaderName,
      'versionQueryName': ?versionQueryName,
      'versionSetId': ?versionSetId,
      'versioningScheme': versioningScheme,
    };
  }

  factory ApiVersionSetArgs.fromMap(Map<String, dynamic> map) {
    return ApiVersionSetArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      versionHeaderName: map['versionHeaderName'] == null ? null : (map['versionHeaderName'] as String).input(),
      versionQueryName: map['versionQueryName'] == null ? null : (map['versionQueryName'] as String).input(),
      versionSetId: map['versionSetId'] == null ? null : (map['versionSetId'] as String).input(),
      versioningScheme: (map['versioningScheme'] as String).input(),
    );
  }
}

