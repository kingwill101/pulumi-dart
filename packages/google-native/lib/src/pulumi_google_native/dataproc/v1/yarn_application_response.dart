// ignore_for_file: unused_element, unnecessary_cast

/// A YARN application created by a job. Application information is a subset of org.apache.hadoop.yarn.proto.YarnProtos.ApplicationReportProto.Beta Feature: This report is available for testing purposes only. It may be changed before final release.
class YarnApplicationResponse {
  /// The application name.
  final String name;

  /// The numerical progress of the application, from 1 to 100.
  final double progress;

  /// The application state.
  final String state;

  /// Optional. The HTTP URL of the ApplicationMaster, HistoryServer, or TimelineServer that provides application-specific information. The URL uses the internal hostname, and requires a proxy server for resolution and, possibly, access.
  final String trackingUrl;

  YarnApplicationResponse({
    required this.name,
    required this.progress,
    required this.state,
    required this.trackingUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['progress'] = progress;
    map['state'] = state;
    map['trackingUrl'] = trackingUrl;
    return map;
  }

  factory YarnApplicationResponse.fromMap(Map<String, dynamic> map) {
    return YarnApplicationResponse(
      name: map['name'] as String,
      progress: map['progress'] as double,
      state: map['state'] as String,
      trackingUrl: map['trackingUrl'] as String,
    );
  }
}
