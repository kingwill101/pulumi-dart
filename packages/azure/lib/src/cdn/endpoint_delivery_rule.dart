// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_delivery_rule_cache_expiration_action.dart';
import 'endpoint_delivery_rule_cache_key_query_string_action.dart';
import 'endpoint_delivery_rule_cookies_condition.dart';
import 'endpoint_delivery_rule_device_condition.dart';
import 'endpoint_delivery_rule_http_version_condition.dart';
import 'endpoint_delivery_rule_modify_request_header_action.dart';
import 'endpoint_delivery_rule_modify_response_header_action.dart';
import 'endpoint_delivery_rule_post_arg_condition.dart';
import 'endpoint_delivery_rule_query_string_condition.dart';
import 'endpoint_delivery_rule_remote_address_condition.dart';
import 'endpoint_delivery_rule_request_body_condition.dart';
import 'endpoint_delivery_rule_request_header_condition.dart';
import 'endpoint_delivery_rule_request_method_condition.dart';
import 'endpoint_delivery_rule_request_scheme_condition.dart';
import 'endpoint_delivery_rule_request_uri_condition.dart';
import 'endpoint_delivery_rule_url_file_extension_condition.dart';
import 'endpoint_delivery_rule_url_file_name_condition.dart';
import 'endpoint_delivery_rule_url_path_condition.dart';
import 'endpoint_delivery_rule_url_redirect_action.dart';
import 'endpoint_delivery_rule_url_rewrite_action.dart';

class EndpointDeliveryRule {
  /// A `cache_expiration_action` block as defined above.
  final EndpointDeliveryRuleCacheExpirationAction? cacheExpirationAction;
  /// A `cache_key_query_string_action` block as defined above.
  final EndpointDeliveryRuleCacheKeyQueryStringAction? cacheKeyQueryStringAction;
  /// A `cookies_condition` block as defined above.
  final List<EndpointDeliveryRuleCookiesCondition>? cookiesConditions;
  /// A `device_condition` block as defined below.
  final EndpointDeliveryRuleDeviceCondition? deviceCondition;
  /// A `http_version_condition` block as defined below.
  final List<EndpointDeliveryRuleHttpVersionCondition>? httpVersionConditions;
  /// A `modify_request_header_action` block as defined below.
  final List<EndpointDeliveryRuleModifyRequestHeaderAction>? modifyRequestHeaderActions;
  /// A `modify_response_header_action` block as defined below.
  final List<EndpointDeliveryRuleModifyResponseHeaderAction>? modifyResponseHeaderActions;
  /// The Name which should be used for this Delivery Rule.
  final String name;
  /// The order used for this rule. The order values should be sequential and begin at `1`.
  final int order;
  /// A `post_arg_condition` block as defined below.
  final List<EndpointDeliveryRulePostArgCondition>? postArgConditions;
  /// A `query_string_condition` block as defined below.
  final List<EndpointDeliveryRuleQueryStringCondition>? queryStringConditions;
  /// A `remote_address_condition` block as defined below.
  final List<EndpointDeliveryRuleRemoteAddressCondition>? remoteAddressConditions;
  /// A `request_body_condition` block as defined below.
  final List<EndpointDeliveryRuleRequestBodyCondition>? requestBodyConditions;
  /// A `request_header_condition` block as defined below.
  final List<EndpointDeliveryRuleRequestHeaderCondition>? requestHeaderConditions;
  /// A `request_method_condition` block as defined below.
  final EndpointDeliveryRuleRequestMethodCondition? requestMethodCondition;
  /// A `request_scheme_condition` block as defined below.
  final EndpointDeliveryRuleRequestSchemeCondition? requestSchemeCondition;
  /// A `request_uri_condition` block as defined below.
  final List<EndpointDeliveryRuleRequestUriCondition>? requestUriConditions;
  /// A `url_file_extension_condition` block as defined below.
  final List<EndpointDeliveryRuleUrlFileExtensionCondition>? urlFileExtensionConditions;
  /// A `url_file_name_condition` block as defined below.
  final List<EndpointDeliveryRuleUrlFileNameCondition>? urlFileNameConditions;
  /// A `url_path_condition` block as defined below.
  final List<EndpointDeliveryRuleUrlPathCondition>? urlPathConditions;
  /// A `url_redirect_action` block as defined below.
  final EndpointDeliveryRuleUrlRedirectAction? urlRedirectAction;
  /// A `url_rewrite_action` block as defined below.
  final EndpointDeliveryRuleUrlRewriteAction? urlRewriteAction;

  /// Creates a new [EndpointDeliveryRule].
  /// [cacheExpirationAction] A `cache_expiration_action` block as defined above.
  /// [cacheKeyQueryStringAction] A `cache_key_query_string_action` block as defined above.
  /// [cookiesConditions] A `cookies_condition` block as defined above.
  /// [deviceCondition] A `device_condition` block as defined below.
  /// [httpVersionConditions] A `http_version_condition` block as defined below.
  /// [modifyRequestHeaderActions] A `modify_request_header_action` block as defined below.
  /// [modifyResponseHeaderActions] A `modify_response_header_action` block as defined below.
  /// [name] The Name which should be used for this Delivery Rule.
  /// [order] The order used for this rule. The order values should be sequential and begin at `1`.
  /// [postArgConditions] A `post_arg_condition` block as defined below.
  /// [queryStringConditions] A `query_string_condition` block as defined below.
  /// [remoteAddressConditions] A `remote_address_condition` block as defined below.
  /// [requestBodyConditions] A `request_body_condition` block as defined below.
  /// [requestHeaderConditions] A `request_header_condition` block as defined below.
  /// [requestMethodCondition] A `request_method_condition` block as defined below.
  /// [requestSchemeCondition] A `request_scheme_condition` block as defined below.
  /// [requestUriConditions] A `request_uri_condition` block as defined below.
  /// [urlFileExtensionConditions] A `url_file_extension_condition` block as defined below.
  /// [urlFileNameConditions] A `url_file_name_condition` block as defined below.
  /// [urlPathConditions] A `url_path_condition` block as defined below.
  /// [urlRedirectAction] A `url_redirect_action` block as defined below.
  /// [urlRewriteAction] A `url_rewrite_action` block as defined below.
  EndpointDeliveryRule({
    this.cacheExpirationAction,
    this.cacheKeyQueryStringAction,
    this.cookiesConditions,
    this.deviceCondition,
    this.httpVersionConditions,
    this.modifyRequestHeaderActions,
    this.modifyResponseHeaderActions,
    required this.name,
    required this.order,
    this.postArgConditions,
    this.queryStringConditions,
    this.remoteAddressConditions,
    this.requestBodyConditions,
    this.requestHeaderConditions,
    this.requestMethodCondition,
    this.requestSchemeCondition,
    this.requestUriConditions,
    this.urlFileExtensionConditions,
    this.urlFileNameConditions,
    this.urlPathConditions,
    this.urlRedirectAction,
    this.urlRewriteAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheExpirationAction': ?cacheExpirationAction == null ? null : cacheExpirationAction!.toMap(),
      'cacheKeyQueryStringAction': ?cacheKeyQueryStringAction == null ? null : cacheKeyQueryStringAction!.toMap(),
      'cookiesConditions': ?cookiesConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleCookiesCondition, Map<String, dynamic>>(cookiesConditions!, (value) => value.toMap()),
      'deviceCondition': ?deviceCondition == null ? null : deviceCondition!.toMap(),
      'httpVersionConditions': ?httpVersionConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleHttpVersionCondition, Map<String, dynamic>>(httpVersionConditions!, (value) => value.toMap()),
      'modifyRequestHeaderActions': ?modifyRequestHeaderActions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleModifyRequestHeaderAction, Map<String, dynamic>>(modifyRequestHeaderActions!, (value) => value.toMap()),
      'modifyResponseHeaderActions': ?modifyResponseHeaderActions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleModifyResponseHeaderAction, Map<String, dynamic>>(modifyResponseHeaderActions!, (value) => value.toMap()),
      'name': name,
      'order': order,
      'postArgConditions': ?postArgConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRulePostArgCondition, Map<String, dynamic>>(postArgConditions!, (value) => value.toMap()),
      'queryStringConditions': ?queryStringConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleQueryStringCondition, Map<String, dynamic>>(queryStringConditions!, (value) => value.toMap()),
      'remoteAddressConditions': ?remoteAddressConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleRemoteAddressCondition, Map<String, dynamic>>(remoteAddressConditions!, (value) => value.toMap()),
      'requestBodyConditions': ?requestBodyConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleRequestBodyCondition, Map<String, dynamic>>(requestBodyConditions!, (value) => value.toMap()),
      'requestHeaderConditions': ?requestHeaderConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleRequestHeaderCondition, Map<String, dynamic>>(requestHeaderConditions!, (value) => value.toMap()),
      'requestMethodCondition': ?requestMethodCondition == null ? null : requestMethodCondition!.toMap(),
      'requestSchemeCondition': ?requestSchemeCondition == null ? null : requestSchemeCondition!.toMap(),
      'requestUriConditions': ?requestUriConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleRequestUriCondition, Map<String, dynamic>>(requestUriConditions!, (value) => value.toMap()),
      'urlFileExtensionConditions': ?urlFileExtensionConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleUrlFileExtensionCondition, Map<String, dynamic>>(urlFileExtensionConditions!, (value) => value.toMap()),
      'urlFileNameConditions': ?urlFileNameConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleUrlFileNameCondition, Map<String, dynamic>>(urlFileNameConditions!, (value) => value.toMap()),
      'urlPathConditions': ?urlPathConditions == null ? null : pulumi.Input.encodeList<EndpointDeliveryRuleUrlPathCondition, Map<String, dynamic>>(urlPathConditions!, (value) => value.toMap()),
      'urlRedirectAction': ?urlRedirectAction == null ? null : urlRedirectAction!.toMap(),
      'urlRewriteAction': ?urlRewriteAction == null ? null : urlRewriteAction!.toMap(),
    };
  }

  factory EndpointDeliveryRule.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRule(
      cacheExpirationAction: map['cacheExpirationAction'] == null ? null : EndpointDeliveryRuleCacheExpirationAction.fromMap((map['cacheExpirationAction'] as Map).cast<String, dynamic>()),
      cacheKeyQueryStringAction: map['cacheKeyQueryStringAction'] == null ? null : EndpointDeliveryRuleCacheKeyQueryStringAction.fromMap((map['cacheKeyQueryStringAction'] as Map).cast<String, dynamic>()),
      cookiesConditions: map['cookiesConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleCookiesCondition>(map['cookiesConditions'], (value) => EndpointDeliveryRuleCookiesCondition.fromMap((value as Map).cast<String, dynamic>())),
      deviceCondition: map['deviceCondition'] == null ? null : EndpointDeliveryRuleDeviceCondition.fromMap((map['deviceCondition'] as Map).cast<String, dynamic>()),
      httpVersionConditions: map['httpVersionConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleHttpVersionCondition>(map['httpVersionConditions'], (value) => EndpointDeliveryRuleHttpVersionCondition.fromMap((value as Map).cast<String, dynamic>())),
      modifyRequestHeaderActions: map['modifyRequestHeaderActions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleModifyRequestHeaderAction>(map['modifyRequestHeaderActions'], (value) => EndpointDeliveryRuleModifyRequestHeaderAction.fromMap((value as Map).cast<String, dynamic>())),
      modifyResponseHeaderActions: map['modifyResponseHeaderActions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleModifyResponseHeaderAction>(map['modifyResponseHeaderActions'], (value) => EndpointDeliveryRuleModifyResponseHeaderAction.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      order: map['order'] as int,
      postArgConditions: map['postArgConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRulePostArgCondition>(map['postArgConditions'], (value) => EndpointDeliveryRulePostArgCondition.fromMap((value as Map).cast<String, dynamic>())),
      queryStringConditions: map['queryStringConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleQueryStringCondition>(map['queryStringConditions'], (value) => EndpointDeliveryRuleQueryStringCondition.fromMap((value as Map).cast<String, dynamic>())),
      remoteAddressConditions: map['remoteAddressConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleRemoteAddressCondition>(map['remoteAddressConditions'], (value) => EndpointDeliveryRuleRemoteAddressCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestBodyConditions: map['requestBodyConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleRequestBodyCondition>(map['requestBodyConditions'], (value) => EndpointDeliveryRuleRequestBodyCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestHeaderConditions: map['requestHeaderConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleRequestHeaderCondition>(map['requestHeaderConditions'], (value) => EndpointDeliveryRuleRequestHeaderCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestMethodCondition: map['requestMethodCondition'] == null ? null : EndpointDeliveryRuleRequestMethodCondition.fromMap((map['requestMethodCondition'] as Map).cast<String, dynamic>()),
      requestSchemeCondition: map['requestSchemeCondition'] == null ? null : EndpointDeliveryRuleRequestSchemeCondition.fromMap((map['requestSchemeCondition'] as Map).cast<String, dynamic>()),
      requestUriConditions: map['requestUriConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleRequestUriCondition>(map['requestUriConditions'], (value) => EndpointDeliveryRuleRequestUriCondition.fromMap((value as Map).cast<String, dynamic>())),
      urlFileExtensionConditions: map['urlFileExtensionConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleUrlFileExtensionCondition>(map['urlFileExtensionConditions'], (value) => EndpointDeliveryRuleUrlFileExtensionCondition.fromMap((value as Map).cast<String, dynamic>())),
      urlFileNameConditions: map['urlFileNameConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleUrlFileNameCondition>(map['urlFileNameConditions'], (value) => EndpointDeliveryRuleUrlFileNameCondition.fromMap((value as Map).cast<String, dynamic>())),
      urlPathConditions: map['urlPathConditions'] == null ? null : pulumi.Input.decodeList<EndpointDeliveryRuleUrlPathCondition>(map['urlPathConditions'], (value) => EndpointDeliveryRuleUrlPathCondition.fromMap((value as Map).cast<String, dynamic>())),
      urlRedirectAction: map['urlRedirectAction'] == null ? null : EndpointDeliveryRuleUrlRedirectAction.fromMap((map['urlRedirectAction'] as Map).cast<String, dynamic>()),
      urlRewriteAction: map['urlRewriteAction'] == null ? null : EndpointDeliveryRuleUrlRewriteAction.fromMap((map['urlRewriteAction'] as Map).cast<String, dynamic>()),
    );
  }
}

