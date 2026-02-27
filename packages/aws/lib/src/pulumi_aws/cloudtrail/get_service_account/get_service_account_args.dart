// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceAccount.
class GetServiceAccountArgs {
  /// Name of the Region whose AWS CloudTrail account ID is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetServiceAccountArgs({
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

  factory GetServiceAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
