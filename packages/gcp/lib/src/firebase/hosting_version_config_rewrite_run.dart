// ignore_for_file: unused_element, unnecessary_cast

class HostingVersionConfigRewriteRun {
  /// Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  final String? region;

  /// User-defined ID of the Cloud Run service.
  final String serviceId;

  /// Creates a new [HostingVersionConfigRewriteRun].
  /// [region] Optional. User-provided region where the Cloud Run service is hosted. Defaults to `us-central1` if not supplied.
  /// [serviceId] User-defined ID of the Cloud Run service.
  HostingVersionConfigRewriteRun({this.region, required this.serviceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'serviceId': serviceId};
  }

  factory HostingVersionConfigRewriteRun.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfigRewriteRun(
      region: map['region'] == null ? null : map['region'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
