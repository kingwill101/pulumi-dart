// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOpenIdConnectProvider.
class GetOpenIdConnectProviderArgs {
  /// ARN of the OpenID Connect provider.
  final Input<String>? arn;

  /// Map of resource tags for the IAM OIDC provider.
  final Input<Map<String, String>>? tags;

  /// URL of the OpenID Connect provider.
  final Input<String>? url;

  GetOpenIdConnectProviderArgs({
    this.arn,
    this.tags,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory GetOpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenIdConnectProviderArgs(
      arn: Input.asOptionalInput<String>(map['arn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      url: Input.asOptionalInput<String>(map['url']),
    );
  }
}
