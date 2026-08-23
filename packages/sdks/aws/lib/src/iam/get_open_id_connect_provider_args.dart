// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_get_open_id_connect_provider_get_open_id_connect_provider_args_doc}
/// Arguments for getOpenIdConnectProvider.
/// {@endtemplate}
/// {@macro pulumi_iam_get_open_id_connect_provider_get_open_id_connect_provider_args_doc}
class GetOpenIdConnectProviderArgs {
  /// ARN of the OpenID Connect provider.
  final pulumi.Input<String>? arn;
  /// Map of resource tags for the IAM OIDC provider.
  final pulumi.Input<Map<String, String>>? tags;
  /// URL of the OpenID Connect provider.
  final pulumi.Input<String>? url;

  /// Creates a new [GetOpenIdConnectProviderArgs].
  /// [arn] ARN of the OpenID Connect provider.
  /// [tags] Map of resource tags for the IAM OIDC provider.
  /// [url] URL of the OpenID Connect provider.
  const GetOpenIdConnectProviderArgs({
    this.arn,
    this.tags,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'tags': ?tags,
      'url': ?url,
    };
  }

  factory GetOpenIdConnectProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetOpenIdConnectProviderArgs(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
