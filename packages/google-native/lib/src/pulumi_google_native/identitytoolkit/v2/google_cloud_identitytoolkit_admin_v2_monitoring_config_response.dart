// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_request_logging_response.dart';

/// Configuration related to monitoring project activity.
class GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  final GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse requestLogging;

  GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse({
    required this.requestLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestLogging'] = requestLogging.toMap();
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2MonitoringConfigResponse(
      requestLogging:
          GoogleCloudIdentitytoolkitAdminV2RequestLoggingResponse.fromMap(
              (map['requestLogging'] as Map).cast<String, dynamic>()),
    );
  }
}
