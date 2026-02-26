// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceAccount.
class GetServiceAccountArgs2 {
  /// Name of the Region whose AWS ELB account ID is desired. Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetServiceAccountArgs2({
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

  factory GetServiceAccountArgs2.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountArgs2(
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
