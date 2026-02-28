// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_test_header.dart';

class URLMapTest {
  /// Description of this test case.
  final String? description;

  /// The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters.
  /// For rules that forward requests to backends, the test passes only when expectedOutputUrl matches the request forwarded by the load balancer to backends. For rules with urlRewrite, the test verifies that the forwarded request matches hostRewrite and pathPrefixRewrite in the urlRewrite action. When service is specified, expectedOutputUrl`s scheme is ignored.
  /// For rules with urlRedirect, the test passes only if expectedOutputUrl matches the URL in the load balancer's redirect response. If urlRedirect specifies httpsRedirect, the test passes only if the scheme in expectedOutputUrl is also set to HTTPS. If urlRedirect specifies stripQuery, the test passes only if expectedOutputUrl does not contain any query parameters.
  /// expectedOutputUrl is optional when service is specified.
  final String? expectedOutputUrl;

  /// For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response.
  /// expectedRedirectResponseCode cannot be set when service is set.
  final int? expectedRedirectResponseCode;

  /// HTTP headers for this request.
  /// Structure is documented below.
  final List<URLMapTestHeader>? headers;

  /// Host portion of the URL.
  final String host;

  /// Path portion of the URL.
  final String path;

  /// The backend service or backend bucket link that should be matched by this test.
  final String? service;

  /// Creates a new [URLMapTest].
  /// [description] Description of this test case.
  /// [expectedOutputUrl] The expected output URL evaluated by the load balancer containing the scheme, host, path and query parameters.
  /// [expectedRedirectResponseCode] For rules with urlRedirect, the test passes only if expectedRedirectResponseCode matches the HTTP status code in load balancer's redirect response.
  /// [headers] HTTP headers for this request.
  /// [host] Host portion of the URL.
  /// [path] Path portion of the URL.
  /// [service] The backend service or backend bucket link that should be matched by this test.
  URLMapTest({
    this.description,
    this.expectedOutputUrl,
    this.expectedRedirectResponseCode,
    this.headers,
    required this.host,
    required this.path,
    this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expectedOutputUrlValue = expectedOutputUrl;
    if (expectedOutputUrlValue != null) {
      map['expectedOutputUrl'] = expectedOutputUrlValue;
    }
    final expectedRedirectResponseCodeValue = expectedRedirectResponseCode;
    if (expectedRedirectResponseCodeValue != null) {
      map['expectedRedirectResponseCode'] = expectedRedirectResponseCodeValue;
    }
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] =
          pulumi.Input.encodeList<URLMapTestHeader, Map<String, dynamic>>(
              headersValue, (value) => value.toMap());
    }
    map['host'] = host;
    map['path'] = path;
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    return map;
  }

  factory URLMapTest.fromMap(Map<String, dynamic> map) {
    return URLMapTest(
      description:
          map['description'] == null ? null : map['description'] as String,
      expectedOutputUrl: map['expectedOutputUrl'] == null
          ? null
          : map['expectedOutputUrl'] as String,
      expectedRedirectResponseCode: map['expectedRedirectResponseCode'] == null
          ? null
          : map['expectedRedirectResponseCode'] as int,
      headers: map['headers'] == null
          ? null
          : pulumi.Input.decodeList<URLMapTestHeader>(
              map['headers'],
              (value) => URLMapTestHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      host: map['host'] as String,
      path: map['path'] as String,
      service: map['service'] == null ? null : map['service'] as String,
    );
  }
}
