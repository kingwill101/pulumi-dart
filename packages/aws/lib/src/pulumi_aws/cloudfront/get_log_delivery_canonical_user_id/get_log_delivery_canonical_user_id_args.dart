// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getLogDeliveryCanonicalUserId.
class GetLogDeliveryCanonicalUserIdArgs {
  /// Name of the Region whose canonical user ID is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetLogDeliveryCanonicalUserIdArgs({
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetLogDeliveryCanonicalUserIdArgs.fromMap(Map<String, dynamic> map) {
    return GetLogDeliveryCanonicalUserIdArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
