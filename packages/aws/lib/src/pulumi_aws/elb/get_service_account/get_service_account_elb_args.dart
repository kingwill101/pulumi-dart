// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceAccount.
class GetServiceAccountElbArgs {
  /// Name of the Region whose AWS ELB account ID is desired. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetServiceAccountElbArgs({
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

  factory GetServiceAccountElbArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountElbArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
