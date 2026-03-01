// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_field_response.dart';

/// The collection of request properties
class WebTestPropertiesResponseRequest {
  /// Follow redirects for this web test.
  final bool? followRedirects;
  /// List of headers and their values to add to the WebTest call.
  final List<HeaderFieldResponse>? headers;
  /// Http verb to use for this web test.
  final String? httpVerb;
  /// Parse Dependent request for this WebTest.
  final bool? parseDependentRequests;
  /// Base64 encoded string body to send with this web test.
  final String? requestBody;
  /// Url location to test.
  final String? requestUrl;

  /// Creates a new [WebTestPropertiesResponseRequest].
  /// [followRedirects] Follow redirects for this web test.
  /// [headers] List of headers and their values to add to the WebTest call.
  /// [httpVerb] Http verb to use for this web test.
  /// [parseDependentRequests] Parse Dependent request for this WebTest.
  /// [requestBody] Base64 encoded string body to send with this web test.
  /// [requestUrl] Url location to test.
  WebTestPropertiesResponseRequest({
    this.followRedirects,
    this.headers,
    this.httpVerb,
    this.parseDependentRequests,
    this.requestBody,
    this.requestUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'followRedirects': ?followRedirects,
      'headers': ?headers == null ? null : pulumi.Input.encodeList<HeaderFieldResponse, Map<String, dynamic>>(headers!, (value) => value.toMap()),
      'httpVerb': ?httpVerb,
      'parseDependentRequests': ?parseDependentRequests,
      'requestBody': ?requestBody,
      'requestUrl': ?requestUrl,
    };
  }

  factory WebTestPropertiesResponseRequest.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesResponseRequest(
      followRedirects: map['followRedirects'] == null ? null : map['followRedirects'] as bool,
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<HeaderFieldResponse>(map['headers'], (value) => HeaderFieldResponse.fromMap((value as Map).cast<String, dynamic>())),
      httpVerb: map['httpVerb'] == null ? null : map['httpVerb'] as String,
      parseDependentRequests: map['parseDependentRequests'] == null ? null : map['parseDependentRequests'] as bool,
      requestBody: map['requestBody'] == null ? null : map['requestBody'] as String,
      requestUrl: map['requestUrl'] == null ? null : map['requestUrl'] as String,
    );
  }
}

