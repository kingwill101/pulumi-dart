// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_security_action_http_header_response.dart';

/// The message that should be set in the case of a Flag action.
class GoogleCloudApigeeV1SecurityActionFlagResponse {
  /// Optional. A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction. Limit 5 headers per SecurityAction. At least one is mandatory.
  final List<GoogleCloudApigeeV1SecurityActionHttpHeaderResponse> headers;

  GoogleCloudApigeeV1SecurityActionFlagResponse({
    required this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headers'] = Input.encodeList<
        GoogleCloudApigeeV1SecurityActionHttpHeaderResponse,
        Map<String, dynamic>>(headers, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudApigeeV1SecurityActionFlagResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityActionFlagResponse(
      headers:
          Input.decodeList<GoogleCloudApigeeV1SecurityActionHttpHeaderResponse>(
              map['headers'],
              (value) =>
                  GoogleCloudApigeeV1SecurityActionHttpHeaderResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
