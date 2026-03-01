// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_endpoint_change_enumeration_activity_response.dart';
import 'cloud_endpoint_last_change_enumeration_status_response.dart';

/// Cloud endpoint change enumeration status object
class CloudEndpointChangeEnumerationStatusResponse {
  /// Change enumeration activity
  final CloudEndpointChangeEnumerationActivityResponse activity;
  /// Status of last completed change enumeration
  final CloudEndpointLastChangeEnumerationStatusResponse lastEnumerationStatus;
  /// Last updated timestamp
  final String lastUpdatedTimestamp;

  /// Creates a new [CloudEndpointChangeEnumerationStatusResponse].
  /// [activity] Change enumeration activity
  /// [lastEnumerationStatus] Status of last completed change enumeration
  /// [lastUpdatedTimestamp] Last updated timestamp
  CloudEndpointChangeEnumerationStatusResponse({
    required this.activity,
    required this.lastEnumerationStatus,
    required this.lastUpdatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity.toMap(),
      'lastEnumerationStatus': lastEnumerationStatus.toMap(),
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
    };
  }

  factory CloudEndpointChangeEnumerationStatusResponse.fromMap(Map<String, dynamic> map) {
    return CloudEndpointChangeEnumerationStatusResponse(
      activity: CloudEndpointChangeEnumerationActivityResponse.fromMap((map['activity'] as Map).cast<String, dynamic>()),
      lastEnumerationStatus: CloudEndpointLastChangeEnumerationStatusResponse.fromMap((map['lastEnumerationStatus'] as Map).cast<String, dynamic>()),
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
    );
  }
}

