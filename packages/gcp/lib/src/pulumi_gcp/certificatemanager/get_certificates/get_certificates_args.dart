// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCertificates.
class GetCertificatesArgs {
  /// Filter expression to restrict the certificates returned.
  final pulumi.Input<String>? filter;

  /// The region in which the resource belongs. If it is not provided, `GLOBAL` is used.
  final pulumi.Input<String>? region;

  GetCertificatesArgs({
    this.filter,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetCertificatesArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificatesArgs(
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
