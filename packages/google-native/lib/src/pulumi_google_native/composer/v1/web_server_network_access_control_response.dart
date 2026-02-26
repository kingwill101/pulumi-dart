// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'allowed_ip_range_response.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControlResponse {
  /// A collection of allowed IP ranges with descriptions.
  final List<AllowedIpRangeResponse> allowedIpRanges;

  WebServerNetworkAccessControlResponse({
    required this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIpRanges'] =
        Input.encodeList<AllowedIpRangeResponse, Map<String, dynamic>>(
            allowedIpRanges, (value) => value.toMap());
    return map;
  }

  factory WebServerNetworkAccessControlResponse.fromMap(
      Map<String, dynamic> map) {
    return WebServerNetworkAccessControlResponse(
      allowedIpRanges: Input.decodeList<AllowedIpRangeResponse>(
          map['allowedIpRanges'],
          (value) => AllowedIpRangeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
