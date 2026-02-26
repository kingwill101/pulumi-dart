// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'allowed_ip_range2.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControl2 {
  /// A collection of allowed IP ranges with descriptions.
  final List<AllowedIpRange2>? allowedIpRanges;

  WebServerNetworkAccessControl2({
    this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedIpRangesValue = allowedIpRanges;
    if (allowedIpRangesValue != null) {
      map['allowedIpRanges'] =
          Input.encodeList<AllowedIpRange2, Map<String, dynamic>>(
              allowedIpRangesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebServerNetworkAccessControl2.fromMap(Map<String, dynamic> map) {
    return WebServerNetworkAccessControl2(
      allowedIpRanges: map['allowedIpRanges'] == null
          ? null
          : Input.decodeList<AllowedIpRange2>(
              map['allowedIpRanges'],
              (value) => AllowedIpRange2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
