// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_ip_range_response_composer_v1beta1.dart';

/// Network-level access control policy for the Airflow web server.
class WebServerNetworkAccessControlResponseComposerV1beta1 {
  /// A collection of allowed IP ranges with descriptions.
  final List<AllowedIpRangeResponseComposerV1beta1> allowedIpRanges;

  /// Creates a new [WebServerNetworkAccessControlResponseComposerV1beta1].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  WebServerNetworkAccessControlResponseComposerV1beta1({
    required this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedIpRanges'] = pulumi.Input.encodeList<
        AllowedIpRangeResponseComposerV1beta1,
        Map<String, dynamic>>(allowedIpRanges, (value) => value.toMap());
    return map;
  }

  factory WebServerNetworkAccessControlResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return WebServerNetworkAccessControlResponseComposerV1beta1(
      allowedIpRanges:
          pulumi.Input.decodeList<AllowedIpRangeResponseComposerV1beta1>(
              map['allowedIpRanges'],
              (value) => AllowedIpRangeResponseComposerV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
