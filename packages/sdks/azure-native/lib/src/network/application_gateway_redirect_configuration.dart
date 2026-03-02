// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Redirect configuration of an application gateway.
class ApplicationGatewayRedirectConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Include path in the redirected url.
  final pulumi.Input<bool>? includePath;
  /// Include query string in the redirected url.
  final pulumi.Input<bool>? includeQueryString;
  /// Name of the redirect configuration that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Path rules specifying redirect configuration.
  final pulumi.Input<List<SubResource>>? pathRules;
  /// HTTP redirection type.
  final pulumi.Input<String>? redirectType;
  /// Request routing specifying redirect configuration.
  final pulumi.Input<List<SubResource>>? requestRoutingRules;
  /// Reference to a listener to redirect the request to.
  final pulumi.Input<SubResource>? targetListener;
  /// Url to redirect the request to.
  final pulumi.Input<String>? targetUrl;
  /// Url path maps specifying default redirect configuration.
  final pulumi.Input<List<SubResource>>? urlPathMaps;

  /// Creates a new [ApplicationGatewayRedirectConfiguration].
  /// [id] Resource ID.
  /// [includePath] Include path in the redirected url.
  /// [includeQueryString] Include query string in the redirected url.
  /// [name] Name of the redirect configuration that is unique within an Application Gateway.
  /// [pathRules] Path rules specifying redirect configuration.
  /// [redirectType] HTTP redirection type.
  /// [requestRoutingRules] Request routing specifying redirect configuration.
  /// [targetListener] Reference to a listener to redirect the request to.
  /// [targetUrl] Url to redirect the request to.
  /// [urlPathMaps] Url path maps specifying default redirect configuration.
  ApplicationGatewayRedirectConfiguration({
    this.id,
    this.includePath,
    this.includeQueryString,
    this.name,
    this.pathRules,
    this.redirectType,
    this.requestRoutingRules,
    this.targetListener,
    this.targetUrl,
    this.urlPathMaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'includePath': ?includePath,
      'includeQueryString': ?includeQueryString,
      'name': ?name,
      'pathRules': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(pathRules, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirectType': ?redirectType,
      'requestRoutingRules': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(requestRoutingRules, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetListener': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(targetListener, (value) => value.toMap()),
      'targetUrl': ?targetUrl,
      'urlPathMaps': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(urlPathMaps, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationGatewayRedirectConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRedirectConfiguration(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      includePath: map['includePath'] == null ? null : (map['includePath']! as bool).input(),
      includeQueryString: map['includeQueryString'] == null ? null : (map['includeQueryString']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pathRules: map['pathRules'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['pathRules']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      redirectType: map['redirectType'] == null ? null : (map['redirectType']! as String).input(),
      requestRoutingRules: map['requestRoutingRules'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['requestRoutingRules']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetListener: map['targetListener'] == null ? null : (SubResource.fromMap((map['targetListener']! as Map).cast<String, dynamic>())).input(),
      targetUrl: map['targetUrl'] == null ? null : (map['targetUrl']! as String).input(),
      urlPathMaps: map['urlPathMaps'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['urlPathMaps']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

