// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_request_logging.dart';

/// Configuration related to monitoring project activity.
class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  final GoogleCloudIdentitytoolkitAdminV2RequestLogging? requestLogging;

  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig({
    this.requestLogging,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestLoggingValue = requestLogging;
    if (requestLoggingValue != null) {
      map['requestLogging'] = requestLoggingValue.toMap();
    }
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2MonitoringConfig(
      requestLogging: map['requestLogging'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromMap(
              (map['requestLogging'] as Map).cast<String, dynamic>()),
    );
  }
}
