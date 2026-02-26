// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_security_action_http_header.dart';

/// The message that should be set in the case of a Flag action.
class GoogleCloudApigeeV1SecurityActionFlag {
  /// Optional. A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction. Limit 5 headers per SecurityAction. At least one is mandatory.
  final List<GoogleCloudApigeeV1SecurityActionHttpHeader>? headers;

  GoogleCloudApigeeV1SecurityActionFlag({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<
          GoogleCloudApigeeV1SecurityActionHttpHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudApigeeV1SecurityActionFlag.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityActionFlag(
      headers: map['headers'] == null
          ? null
          : Input.decodeList<GoogleCloudApigeeV1SecurityActionHttpHeader>(
              map['headers'],
              (value) => GoogleCloudApigeeV1SecurityActionHttpHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
