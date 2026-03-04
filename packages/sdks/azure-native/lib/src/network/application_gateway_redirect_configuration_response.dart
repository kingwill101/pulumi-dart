// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Redirect configuration of an application gateway.
class ApplicationGatewayRedirectConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Include path in the redirected url.
  final pulumi.Input<bool>? includePath;

  /// Include query string in the redirected url.
  final pulumi.Input<bool>? includeQueryString;

  /// Name of the redirect configuration that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Path rules specifying redirect configuration.
  final pulumi.Input<List<SubResourceResponse>>? pathRules;

  /// HTTP redirection type.
  final pulumi.Input<String>? redirectType;

  /// Request routing specifying redirect configuration.
  final pulumi.Input<List<SubResourceResponse>>? requestRoutingRules;

  /// Reference to a listener to redirect the request to.
  final pulumi.Input<SubResourceResponse>? targetListener;

  /// Url to redirect the request to.
  final pulumi.Input<String>? targetUrl;

  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Url path maps specifying default redirect configuration.
  final pulumi.Input<List<SubResourceResponse>>? urlPathMaps;

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
      'pathRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            pathRules,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'redirectType': ?redirectType,
      'requestRoutingRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            requestRoutingRules,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetListener':
          ?pulumi.Input.mapOptionalInputValue<
            SubResourceResponse,
            Map<String, dynamic>
          >(targetListener, (value) => value.toMap()),
      'targetUrl': ?targetUrl,
      'type': type,
      'urlPathMaps':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            urlPathMaps,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationGatewayRedirectConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayRedirectConfigurationResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      includePath: (() {
        final guardedValue = map['includePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeQueryString: (() {
        final guardedValue = map['includeQueryString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pathRules: (() {
        final guardedValue = map['pathRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      redirectType: (() {
        final guardedValue = map['redirectType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestRoutingRules: (() {
        final guardedValue = map['requestRoutingRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      targetListener: (() {
        final guardedValue = map['targetListener'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResourceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      targetUrl: (() {
        final guardedValue = map['targetUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      urlPathMaps: (() {
        final guardedValue = map['urlPathMaps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
