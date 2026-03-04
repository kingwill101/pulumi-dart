// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_field_response.dart';

/// The collection of request properties
class WebTestPropertiesResponseRequest {
  /// Follow redirects for this web test.
  final pulumi.Input<bool>? followRedirects;

  /// List of headers and their values to add to the WebTest call.
  final pulumi.Input<List<HeaderFieldResponse>>? headers;

  /// Http verb to use for this web test.
  final pulumi.Input<String>? httpVerb;

  /// Parse Dependent request for this WebTest.
  final pulumi.Input<bool>? parseDependentRequests;

  /// Base64 encoded string body to send with this web test.
  final pulumi.Input<String>? requestBody;

  /// Url location to test.
  final pulumi.Input<String>? requestUrl;

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
      'headers':
          ?pulumi.Input.mapOptionalInputValue<
            List<HeaderFieldResponse>,
            List<Map<String, dynamic>>
          >(
            headers,
            (value) =>
                pulumi.Input.encodeList<
                  HeaderFieldResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'httpVerb': ?httpVerb,
      'parseDependentRequests': ?parseDependentRequests,
      'requestBody': ?requestBody,
      'requestUrl': ?requestUrl,
    };
  }

  factory WebTestPropertiesResponseRequest.fromMap(Map<String, dynamic> map) {
    return WebTestPropertiesResponseRequest(
      followRedirects: (() {
        final guardedValue = map['followRedirects'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HeaderFieldResponse>(
            guardedValue,
            (value) => HeaderFieldResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      httpVerb: (() {
        final guardedValue = map['httpVerb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parseDependentRequests: (() {
        final guardedValue = map['parseDependentRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requestBody: (() {
        final guardedValue = map['requestBody'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestUrl: (() {
        final guardedValue = map['requestUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
