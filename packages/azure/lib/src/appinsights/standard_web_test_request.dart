// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_web_test_request_header.dart';

class StandardWebTestRequest {
  /// The WebTest request body.
  final String? body;
  /// Should the following of redirects be enabled? Defaults to `true`.
  final bool? followRedirectsEnabled;
  /// One or more `header` blocks as defined above.
  final List<StandardWebTestRequestHeader>? headers;
  /// Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', and 'OPTIONS'. Defaults to `GET`.
  final String? httpVerb;
  /// Should the parsing of dependend requests be enabled? Defaults to `true`.
  final bool? parseDependentRequestsEnabled;
  /// The WebTest request URL.
  final String url;

  /// Creates a new [StandardWebTestRequest].
  /// [body] The WebTest request body.
  /// [followRedirectsEnabled] Should the following of redirects be enabled? Defaults to `true`.
  /// [headers] One or more `header` blocks as defined above.
  /// [httpVerb] Which HTTP verb to use for the call. Options are 'GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD', and 'OPTIONS'. Defaults to `GET`.
  /// [parseDependentRequestsEnabled] Should the parsing of dependend requests be enabled? Defaults to `true`.
  /// [url] The WebTest request URL.
  StandardWebTestRequest({
    this.body,
    this.followRedirectsEnabled,
    this.headers,
    this.httpVerb,
    this.parseDependentRequestsEnabled,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'followRedirectsEnabled': ?followRedirectsEnabled,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<StandardWebTestRequestHeader, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'httpVerb': ?httpVerb,
      'parseDependentRequestsEnabled': ?parseDependentRequestsEnabled,
      'url': url,
    };
  }

  factory StandardWebTestRequest.fromMap(Map<String, dynamic> map) {
    return StandardWebTestRequest(
      body: map['body'] == null ? null : map['body'] as String,
      followRedirectsEnabled: map['followRedirectsEnabled'] == null ? null : map['followRedirectsEnabled'] as bool,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<StandardWebTestRequestHeader>(map['headers'], (value) => StandardWebTestRequestHeader.fromMap((value as Map).cast<String, dynamic>())),
      httpVerb: map['httpVerb'] == null ? null : map['httpVerb'] as String,
      parseDependentRequestsEnabled: map['parseDependentRequestsEnabled'] == null ? null : map['parseDependentRequestsEnabled'] as bool,
      url: map['url'] as String,
    );
  }
}

