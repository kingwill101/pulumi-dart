// ignore_for_file: unused_element, unnecessary_cast

import 'no_wrapper_response.dart';
import 'oidc_token_response_pubsub_v1.dart';

/// Configuration for a push delivery endpoint.
class PushConfigResponse {
  /// Optional. Endpoint configuration attributes that can be used to control different aspects of the message delivery. The only currently supported attribute is `x-goog-version`, which you can use to change the format of the pushed message. This attribute indicates the version of the data expected by the endpoint. This controls the shape of the pushed message (i.e., its fields and metadata). If not present during the `CreateSubscription` call, it will default to the version of the Pub/Sub API used to make such call. If not present in a `ModifyPushConfig` call, its value will not be changed. `GetSubscription` calls will always return a valid version, even if the subscription was created without this attribute. The only supported values for the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined in the v1 Pub/Sub API. For example: `attributes { "x-goog-version": "v1" }`
  final Map<String, String> attributes;

  /// Optional. When set, the payload to the push endpoint is not wrapped.
  final NoWrapperResponse noWrapper;

  /// Optional. If specified, Pub/Sub will generate and attach an OIDC JWT token as an `Authorization` header in the HTTP request for every pushed message.
  final OidcTokenResponsePubsubV1 oidcToken;

  /// Optional. When set, the payload to the push endpoint is in the form of the JSON representation of a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
  final Map<String, dynamic> pubsubWrapper;

  /// Optional. A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use `https://example.com/push`.
  final String pushEndpoint;

  PushConfigResponse({
    required this.attributes,
    required this.noWrapper,
    required this.oidcToken,
    required this.pubsubWrapper,
    required this.pushEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributes'] = attributes;
    map['noWrapper'] = noWrapper.toMap();
    map['oidcToken'] = oidcToken.toMap();
    map['pubsubWrapper'] = pubsubWrapper;
    map['pushEndpoint'] = pushEndpoint;
    return map;
  }

  factory PushConfigResponse.fromMap(Map<String, dynamic> map) {
    return PushConfigResponse(
      attributes: (map['attributes'] as Map).cast<String, String>(),
      noWrapper: NoWrapperResponse.fromMap(
          (map['noWrapper'] as Map).cast<String, dynamic>()),
      oidcToken: OidcTokenResponsePubsubV1.fromMap(
          (map['oidcToken'] as Map).cast<String, dynamic>()),
      pubsubWrapper: (map['pubsubWrapper'] as Map).cast<String, dynamic>(),
      pushEndpoint: map['pushEndpoint'] as String,
    );
  }
}
