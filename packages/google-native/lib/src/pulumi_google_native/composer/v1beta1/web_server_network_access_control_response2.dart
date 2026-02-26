// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'allowed_ip_range_response2.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControlResponse2 {
  /// A collection of allowed IP ranges with descriptions.
  final List<AllowedIpRangeResponse2> allowedIpRanges;

  WebServerNetworkAccessControlResponse2({
    required this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIpRanges'] =
        Input.encodeList<AllowedIpRangeResponse2, Map<String, dynamic>>(
            allowedIpRanges, (value) => value.toMap());
    return map;
  }

  factory WebServerNetworkAccessControlResponse2.fromMap(
      Map<String, dynamic> map) {
    return WebServerNetworkAccessControlResponse2(
      allowedIpRanges: Input.decodeList<AllowedIpRangeResponse2>(
          map['allowedIpRanges'],
          (value) => AllowedIpRangeResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
