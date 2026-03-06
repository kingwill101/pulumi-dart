// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_log_delivery_canonical_user_id_get_log_delivery_canonical_user_id_args_doc}
/// Arguments for getLogDeliveryCanonicalUserId.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_log_delivery_canonical_user_id_get_log_delivery_canonical_user_id_args_doc}
class GetLogDeliveryCanonicalUserIdArgs {
  /// Name of the Region whose canonical user ID is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLogDeliveryCanonicalUserIdArgs].
  /// [region] Name of the Region whose canonical user ID is desired. Defaults to the Region set in the provider configuration.
  const GetLogDeliveryCanonicalUserIdArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetLogDeliveryCanonicalUserIdArgs.fromMap(Map<String, dynamic> map) {
    return GetLogDeliveryCanonicalUserIdArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

