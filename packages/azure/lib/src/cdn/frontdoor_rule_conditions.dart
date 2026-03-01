// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_conditions_client_port_condition.dart';
import 'frontdoor_rule_conditions_cookies_condition.dart';
import 'frontdoor_rule_conditions_host_name_condition.dart';
import 'frontdoor_rule_conditions_http_version_condition.dart';
import 'frontdoor_rule_conditions_is_device_condition.dart';
import 'frontdoor_rule_conditions_post_args_condition.dart';
import 'frontdoor_rule_conditions_query_string_condition.dart';
import 'frontdoor_rule_conditions_remote_address_condition.dart';
import 'frontdoor_rule_conditions_request_body_condition.dart';
import 'frontdoor_rule_conditions_request_header_condition.dart';
import 'frontdoor_rule_conditions_request_method_condition.dart';
import 'frontdoor_rule_conditions_request_scheme_condition.dart';
import 'frontdoor_rule_conditions_request_uri_condition.dart';
import 'frontdoor_rule_conditions_server_port_condition.dart';
import 'frontdoor_rule_conditions_socket_address_condition.dart';
import 'frontdoor_rule_conditions_ssl_protocol_condition.dart';
import 'frontdoor_rule_conditions_url_file_extension_condition.dart';
import 'frontdoor_rule_conditions_url_filename_condition.dart';
import 'frontdoor_rule_conditions_url_path_condition.dart';

class FrontdoorRuleConditions {
  /// A `client_port_condition` block as defined below.
  final List<FrontdoorRuleConditionsClientPortCondition>? clientPortConditions;
  /// A `cookies_condition` block as defined below.
  final List<FrontdoorRuleConditionsCookiesCondition>? cookiesConditions;
  /// A `host_name_condition` block as defined below.
  final List<FrontdoorRuleConditionsHostNameCondition>? hostNameConditions;
  /// A `http_version_condition` block as defined below.
  final List<FrontdoorRuleConditionsHttpVersionCondition>? httpVersionConditions;
  /// A `is_device_condition` block as defined below.
  final List<FrontdoorRuleConditionsIsDeviceCondition>? isDeviceConditions;
  /// A `post_args_condition` block as defined below.
  final List<FrontdoorRuleConditionsPostArgsCondition>? postArgsConditions;
  /// A `query_string_condition` block as defined below.
  final List<FrontdoorRuleConditionsQueryStringCondition>? queryStringConditions;
  /// A `remote_address_condition` block as defined below.
  final List<FrontdoorRuleConditionsRemoteAddressCondition>? remoteAddressConditions;
  /// A `request_body_condition` block as defined below.
  final List<FrontdoorRuleConditionsRequestBodyCondition>? requestBodyConditions;
  /// A `request_header_condition` block as defined below.
  final List<FrontdoorRuleConditionsRequestHeaderCondition>? requestHeaderConditions;
  /// A `request_method_condition` block as defined below.
  final List<FrontdoorRuleConditionsRequestMethodCondition>? requestMethodConditions;
  /// A `request_scheme_condition` block as defined below.
  final List<FrontdoorRuleConditionsRequestSchemeCondition>? requestSchemeConditions;
  /// A `request_uri_condition` block as defined below.
  final List<FrontdoorRuleConditionsRequestUriCondition>? requestUriConditions;
  /// A `server_port_condition` block as defined below.
  final List<FrontdoorRuleConditionsServerPortCondition>? serverPortConditions;
  /// A `socket_address_condition` block as defined below.
  final List<FrontdoorRuleConditionsSocketAddressCondition>? socketAddressConditions;
  /// A `ssl_protocol_condition` block as defined below.
  final List<FrontdoorRuleConditionsSslProtocolCondition>? sslProtocolConditions;
  /// A `url_file_extension_condition` block as defined below.
  final List<FrontdoorRuleConditionsUrlFileExtensionCondition>? urlFileExtensionConditions;
  /// A `url_filename_condition` block as defined below.
  final List<FrontdoorRuleConditionsUrlFilenameCondition>? urlFilenameConditions;
  /// A `url_path_condition` block as defined below.
  final List<FrontdoorRuleConditionsUrlPathCondition>? urlPathConditions;

  /// Creates a new [FrontdoorRuleConditions].
  /// [clientPortConditions] A `client_port_condition` block as defined below.
  /// [cookiesConditions] A `cookies_condition` block as defined below.
  /// [hostNameConditions] A `host_name_condition` block as defined below.
  /// [httpVersionConditions] A `http_version_condition` block as defined below.
  /// [isDeviceConditions] A `is_device_condition` block as defined below.
  /// [postArgsConditions] A `post_args_condition` block as defined below.
  /// [queryStringConditions] A `query_string_condition` block as defined below.
  /// [remoteAddressConditions] A `remote_address_condition` block as defined below.
  /// [requestBodyConditions] A `request_body_condition` block as defined below.
  /// [requestHeaderConditions] A `request_header_condition` block as defined below.
  /// [requestMethodConditions] A `request_method_condition` block as defined below.
  /// [requestSchemeConditions] A `request_scheme_condition` block as defined below.
  /// [requestUriConditions] A `request_uri_condition` block as defined below.
  /// [serverPortConditions] A `server_port_condition` block as defined below.
  /// [socketAddressConditions] A `socket_address_condition` block as defined below.
  /// [sslProtocolConditions] A `ssl_protocol_condition` block as defined below.
  /// [urlFileExtensionConditions] A `url_file_extension_condition` block as defined below.
  /// [urlFilenameConditions] A `url_filename_condition` block as defined below.
  /// [urlPathConditions] A `url_path_condition` block as defined below.
  FrontdoorRuleConditions({
    this.clientPortConditions,
    this.cookiesConditions,
    this.hostNameConditions,
    this.httpVersionConditions,
    this.isDeviceConditions,
    this.postArgsConditions,
    this.queryStringConditions,
    this.remoteAddressConditions,
    this.requestBodyConditions,
    this.requestHeaderConditions,
    this.requestMethodConditions,
    this.requestSchemeConditions,
    this.requestUriConditions,
    this.serverPortConditions,
    this.socketAddressConditions,
    this.sslProtocolConditions,
    this.urlFileExtensionConditions,
    this.urlFilenameConditions,
    this.urlPathConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPortConditions': ?clientPortConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsClientPortCondition, Map<String, dynamic>>(clientPortConditions!, (value) => value.toMap()),
      'cookiesConditions': ?cookiesConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsCookiesCondition, Map<String, dynamic>>(cookiesConditions!, (value) => value.toMap()),
      'hostNameConditions': ?hostNameConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsHostNameCondition, Map<String, dynamic>>(hostNameConditions!, (value) => value.toMap()),
      'httpVersionConditions': ?httpVersionConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsHttpVersionCondition, Map<String, dynamic>>(httpVersionConditions!, (value) => value.toMap()),
      'isDeviceConditions': ?isDeviceConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsIsDeviceCondition, Map<String, dynamic>>(isDeviceConditions!, (value) => value.toMap()),
      'postArgsConditions': ?postArgsConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsPostArgsCondition, Map<String, dynamic>>(postArgsConditions!, (value) => value.toMap()),
      'queryStringConditions': ?queryStringConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsQueryStringCondition, Map<String, dynamic>>(queryStringConditions!, (value) => value.toMap()),
      'remoteAddressConditions': ?remoteAddressConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsRemoteAddressCondition, Map<String, dynamic>>(remoteAddressConditions!, (value) => value.toMap()),
      'requestBodyConditions': ?requestBodyConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsRequestBodyCondition, Map<String, dynamic>>(requestBodyConditions!, (value) => value.toMap()),
      'requestHeaderConditions': ?requestHeaderConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsRequestHeaderCondition, Map<String, dynamic>>(requestHeaderConditions!, (value) => value.toMap()),
      'requestMethodConditions': ?requestMethodConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsRequestMethodCondition, Map<String, dynamic>>(requestMethodConditions!, (value) => value.toMap()),
      'requestSchemeConditions': ?requestSchemeConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsRequestSchemeCondition, Map<String, dynamic>>(requestSchemeConditions!, (value) => value.toMap()),
      'requestUriConditions': ?requestUriConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsRequestUriCondition, Map<String, dynamic>>(requestUriConditions!, (value) => value.toMap()),
      'serverPortConditions': ?serverPortConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsServerPortCondition, Map<String, dynamic>>(serverPortConditions!, (value) => value.toMap()),
      'socketAddressConditions': ?socketAddressConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsSocketAddressCondition, Map<String, dynamic>>(socketAddressConditions!, (value) => value.toMap()),
      'sslProtocolConditions': ?sslProtocolConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsSslProtocolCondition, Map<String, dynamic>>(sslProtocolConditions!, (value) => value.toMap()),
      'urlFileExtensionConditions': ?urlFileExtensionConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsUrlFileExtensionCondition, Map<String, dynamic>>(urlFileExtensionConditions!, (value) => value.toMap()),
      'urlFilenameConditions': ?urlFilenameConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsUrlFilenameCondition, Map<String, dynamic>>(urlFilenameConditions!, (value) => value.toMap()),
      'urlPathConditions': ?urlPathConditions == null ? null : pulumi.Input.encodeList<FrontdoorRuleConditionsUrlPathCondition, Map<String, dynamic>>(urlPathConditions!, (value) => value.toMap()),
    };
  }

  factory FrontdoorRuleConditions.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditions(
      clientPortConditions: map['clientPortConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsClientPortCondition>(map['clientPortConditions'], (value) => FrontdoorRuleConditionsClientPortCondition.fromMap((value as Map).cast<String, dynamic>())),
      cookiesConditions: map['cookiesConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsCookiesCondition>(map['cookiesConditions'], (value) => FrontdoorRuleConditionsCookiesCondition.fromMap((value as Map).cast<String, dynamic>())),
      hostNameConditions: map['hostNameConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsHostNameCondition>(map['hostNameConditions'], (value) => FrontdoorRuleConditionsHostNameCondition.fromMap((value as Map).cast<String, dynamic>())),
      httpVersionConditions: map['httpVersionConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsHttpVersionCondition>(map['httpVersionConditions'], (value) => FrontdoorRuleConditionsHttpVersionCondition.fromMap((value as Map).cast<String, dynamic>())),
      isDeviceConditions: map['isDeviceConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsIsDeviceCondition>(map['isDeviceConditions'], (value) => FrontdoorRuleConditionsIsDeviceCondition.fromMap((value as Map).cast<String, dynamic>())),
      postArgsConditions: map['postArgsConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsPostArgsCondition>(map['postArgsConditions'], (value) => FrontdoorRuleConditionsPostArgsCondition.fromMap((value as Map).cast<String, dynamic>())),
      queryStringConditions: map['queryStringConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsQueryStringCondition>(map['queryStringConditions'], (value) => FrontdoorRuleConditionsQueryStringCondition.fromMap((value as Map).cast<String, dynamic>())),
      remoteAddressConditions: map['remoteAddressConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsRemoteAddressCondition>(map['remoteAddressConditions'], (value) => FrontdoorRuleConditionsRemoteAddressCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestBodyConditions: map['requestBodyConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsRequestBodyCondition>(map['requestBodyConditions'], (value) => FrontdoorRuleConditionsRequestBodyCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestHeaderConditions: map['requestHeaderConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsRequestHeaderCondition>(map['requestHeaderConditions'], (value) => FrontdoorRuleConditionsRequestHeaderCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestMethodConditions: map['requestMethodConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsRequestMethodCondition>(map['requestMethodConditions'], (value) => FrontdoorRuleConditionsRequestMethodCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestSchemeConditions: map['requestSchemeConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsRequestSchemeCondition>(map['requestSchemeConditions'], (value) => FrontdoorRuleConditionsRequestSchemeCondition.fromMap((value as Map).cast<String, dynamic>())),
      requestUriConditions: map['requestUriConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsRequestUriCondition>(map['requestUriConditions'], (value) => FrontdoorRuleConditionsRequestUriCondition.fromMap((value as Map).cast<String, dynamic>())),
      serverPortConditions: map['serverPortConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsServerPortCondition>(map['serverPortConditions'], (value) => FrontdoorRuleConditionsServerPortCondition.fromMap((value as Map).cast<String, dynamic>())),
      socketAddressConditions: map['socketAddressConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsSocketAddressCondition>(map['socketAddressConditions'], (value) => FrontdoorRuleConditionsSocketAddressCondition.fromMap((value as Map).cast<String, dynamic>())),
      sslProtocolConditions: map['sslProtocolConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsSslProtocolCondition>(map['sslProtocolConditions'], (value) => FrontdoorRuleConditionsSslProtocolCondition.fromMap((value as Map).cast<String, dynamic>())),
      urlFileExtensionConditions: map['urlFileExtensionConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsUrlFileExtensionCondition>(map['urlFileExtensionConditions'], (value) => FrontdoorRuleConditionsUrlFileExtensionCondition.fromMap((value as Map).cast<String, dynamic>())),
      urlFilenameConditions: map['urlFilenameConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsUrlFilenameCondition>(map['urlFilenameConditions'], (value) => FrontdoorRuleConditionsUrlFilenameCondition.fromMap((value as Map).cast<String, dynamic>())),
      urlPathConditions: map['urlPathConditions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleConditionsUrlPathCondition>(map['urlPathConditions'], (value) => FrontdoorRuleConditionsUrlPathCondition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

