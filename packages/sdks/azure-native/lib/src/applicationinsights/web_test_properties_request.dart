// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_field.dart';

/// The collection of request properties
class WebTestPropertiesRequest {
  /// Follow redirects for this web test.
  final pulumi.Input<bool>? followRedirects;
  /// List of headers and their values to add to the WebTest call.
  final pulumi.Input<List<HeaderField>>? headers;
  /// Http verb to use for this web test.
  final pulumi.Input<String>? httpVerb;
  /// Parse Dependent request for this WebTest.
  final pulumi.Input<bool>? parseDependentRequests;
  /// Base64 encoded string body to send with this web test.
  final pulumi.Input<String>? requestBody;
  /// Url location to test.
  final pulumi.Input<String>? requestUrl;

  /// Creates a new [WebTestPropertiesRequest].
  /// [followRedirects] Follow redirects for this web test.
  /// [headers] List of headers and their values to add to the WebTest call.
  /// [httpVerb] Http verb to use for this web test.
  /// [parseDependentRequests] Parse Dependent request for this WebTest.
  /// [requestBody] Base64 encoded string body to send with this web test.
  /// [requestUrl] Url location to test.
  const WebTestPropertiesRequest({
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
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HeaderField>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HeaderField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpVerb': ?httpVerb,
      'parseDependentRequests': ?parseDependentRequests,
      'requestBody': ?requestBody,
      'requestUrl': ?requestUrl,
    };
  }

  factory WebTestPropertiesRequest.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesRequest(
      followRedirects: (() { final guardedValue = map['followRedirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HeaderField>(guardedValue, (value) => HeaderField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpVerb: (() { final guardedValue = map['httpVerb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parseDependentRequests: (() { final guardedValue = map['parseDependentRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestBody: (() { final guardedValue = map['requestBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestUrl: (() { final guardedValue = map['requestUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

