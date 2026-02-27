// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_ip_range.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControl {
  /// A collection of allowed IP ranges with descriptions.
  final List<AllowedIpRange>? allowedIpRanges;

  WebServerNetworkAccessControl({
    this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedIpRangesValue = allowedIpRanges;
    if (allowedIpRangesValue != null) {
      map['allowedIpRanges'] =
          pulumi.Input.encodeList<AllowedIpRange, Map<String, dynamic>>(
              allowedIpRangesValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebServerNetworkAccessControl.fromMap(Map<String, dynamic> map) {
    return WebServerNetworkAccessControl(
      allowedIpRanges: map['allowedIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<AllowedIpRange>(
              map['allowedIpRanges'],
              (value) => AllowedIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
