// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_identitytoolkit_admin_v2_request_logging.dart';

/// Configuration related to monitoring project activity.
class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig {
  /// Configuration for logging requests made to this project to Stackdriver Logging
  final GoogleCloudIdentitytoolkitAdminV2RequestLogging? requestLogging;

  /// Creates a new [GoogleCloudIdentitytoolkitAdminV2MonitoringConfig].
  /// [requestLogging] Configuration for logging requests made to this project to Stackdriver Logging
  GoogleCloudIdentitytoolkitAdminV2MonitoringConfig({this.requestLogging});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestLogging': ?requestLogging == null
          ? null
          : requestLogging!.toMap(),
    };
  }

  factory GoogleCloudIdentitytoolkitAdminV2MonitoringConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIdentitytoolkitAdminV2MonitoringConfig(
      requestLogging: map['requestLogging'] == null
          ? null
          : GoogleCloudIdentitytoolkitAdminV2RequestLogging.fromMap(
              (map['requestLogging'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
