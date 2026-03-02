// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Monitoring Resource
class MonitoringProfileResponse {
  /// Resource Id of Application Insights Resource
  final pulumi.Input<String> id;

  /// Creates a new [MonitoringProfileResponse].
  /// [id] Resource Id of Application Insights Resource
  MonitoringProfileResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory MonitoringProfileResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringProfileResponse(
      id: (map['id'] as String).input(),
    );
  }
}

