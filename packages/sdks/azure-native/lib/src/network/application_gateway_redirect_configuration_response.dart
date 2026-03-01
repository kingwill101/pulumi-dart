// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Redirect configuration of an application gateway.
class ApplicationGatewayRedirectConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Include path in the redirected url.
  final bool? includePath;
  /// Include query string in the redirected url.
  final bool? includeQueryString;
  /// Name of the redirect configuration that is unique within an Application Gateway.
  final String? name;
  /// Path rules specifying redirect configuration.
  final List<SubResourceResponse>? pathRules;
  /// HTTP redirection type.
  final String? redirectType;
  /// Request routing specifying redirect configuration.
  final List<SubResourceResponse>? requestRoutingRules;
  /// Reference to a listener to redirect the request to.
  final SubResourceResponse? targetListener;
  /// Url to redirect the request to.
  final String? targetUrl;
  /// Type of the resource.
  final String type;
  /// Url path maps specifying default redirect configuration.
  final List<SubResourceResponse>? urlPathMaps;

  /// Creates a new [ApplicationGatewayRedirectConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [includePath] Include path in the redirected url.
  /// [includeQueryString] Include query string in the redirected url.
  /// [name] Name of the redirect configuration that is unique within an Application Gateway.
  /// [pathRules] Path rules specifying redirect configuration.
  /// [redirectType] HTTP redirection type.
  /// [requestRoutingRules] Request routing specifying redirect configuration.
  /// [targetListener] Reference to a listener to redirect the request to.
  /// [targetUrl] Url to redirect the request to.
  /// [type] Type of the resource.
  /// [urlPathMaps] Url path maps specifying default redirect configuration.
  ApplicationGatewayRedirectConfigurationResponse({
    required this.etag,
    this.id,
    this.includePath,
    this.includeQueryString,
    this.name,
    this.pathRules,
    this.redirectType,
    this.requestRoutingRules,
    this.targetListener,
    this.targetUrl,
    required this.type,
    this.urlPathMaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'includePath': ?includePath,
      'includeQueryString': ?includeQueryString,
      'name': ?name,
      'pathRules': ?pathRules == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(pathRules!, (value) => value.toMap()),
      'redirectType': ?redirectType,
      'requestRoutingRules': ?requestRoutingRules == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(requestRoutingRules!, (value) => value.toMap()),
      'targetListener': ?targetListener == null ? null : targetListener!.toMap(),
      'targetUrl': ?targetUrl,
      'type': type,
      'urlPathMaps': ?urlPathMaps == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(urlPathMaps!, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRedirectConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRedirectConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      includePath: map['includePath'] == null ? null : map['includePath'] as bool,
      includeQueryString: map['includeQueryString'] == null ? null : map['includeQueryString'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      pathRules: map['pathRules'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['pathRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      redirectType: map['redirectType'] == null ? null : map['redirectType'] as String,
      requestRoutingRules: map['requestRoutingRules'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['requestRoutingRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      targetListener: map['targetListener'] == null ? null : SubResourceResponse.fromMap((map['targetListener'] as Map).cast<String, dynamic>()),
      targetUrl: map['targetUrl'] == null ? null : map['targetUrl'] as String,
      type: map['type'] as String,
      urlPathMaps: map['urlPathMaps'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['urlPathMaps'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

