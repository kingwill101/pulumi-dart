// ignore_for_file: unused_element, unnecessary_cast

import 'no_wrapper.dart';
import 'oidc_token6.dart';

/// Configuration for a push delivery endpoint.
class PushConfig {
  /// Optional. Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is `x-goog-version`, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the `CreateSubscription` call, it will default to the version of the Pub/Sub API used to make such call. If not present in a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API. For example: `attributes { "x-goog-version": "v1" }`
  final Map<String, String>? attributes;

  /// Optional. When set, the payload to the push endpoint is not wrapped.
  final NoWrapper? noWrapper;

  /// Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.
  final OidcToken6? oidcToken;

  /// Optional. When set, the payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
  final Map<String, dynamic>? pubsubWrapper;

  /// Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use `https://example.com/push`.
  final String? pushEndpoint;

  PushConfig({
    this.attributes,
    this.noWrapper,
    this.oidcToken,
    this.pubsubWrapper,
    this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final noWrapperValue = noWrapper;
    if (noWrapperValue != null) {
      map['noWrapper'] = noWrapperValue.toMap();
    }
    final oidcTokenValue = oidcToken;
    if (oidcTokenValue != null) {
      map['oidcToken'] = oidcTokenValue.toMap();
    }
    final pubsubWrapperValue = pubsubWrapper;
    if (pubsubWrapperValue != null) {
      map['pubsubWrapper'] = pubsubWrapperValue;
    }
    final pushEndpointValue = pushEndpoint;
    if (pushEndpointValue != null) {
      map['pushEndpoint'] = pushEndpointValue;
    }
    return map;
  }

  factory PushConfig.fromMap(Map<String, dynamic> map) {
    return PushConfig(
      attributes: map['attributes'] == null
          ? null
          : (map['attributes'] as Map).cast<String, String>(),
      noWrapper: map['noWrapper'] == null
          ? null
          : NoWrapper.fromMap(
              (map['noWrapper'] as Map).cast<String, dynamic>()),
      oidcToken: map['oidcToken'] == null
          ? null
          : OidcToken6.fromMap(
              (map['oidcToken'] as Map).cast<String, dynamic>()),
      pubsubWrapper: map['pubsubWrapper'] == null
          ? null
          : (map['pubsubWrapper'] as Map).cast<String, dynamic>(),
      pushEndpoint:
          map['pushEndpoint'] == null ? null : map['pushEndpoint'] as String,
    );
  }
}
