// ignore_for_file: unused_element, unnecessary_cast

/// For display only. Details of a Google Service sending packets to a VPC network. Although the source IP might be a publicly routable address, some Google Services use special routes within Google production infrastructure to reach Compute Engine Instances. https://cloud.google.com/vpc/docs/routes#special_return_paths
class GoogleServiceInfoResponse {
  /// Recognized type of a Google Service.
  final String googleServiceType;

  /// Source IP address.
  final String sourceIp;

  /// Creates a new [GoogleServiceInfoResponse].
  /// [googleServiceType] Recognized type of a Google Service.
  /// [sourceIp] Source IP address.
  GoogleServiceInfoResponse({
    required this.googleServiceType,
    required this.sourceIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['googleServiceType'] = googleServiceType;
    map['sourceIp'] = sourceIp;
    return map;
  }

  factory GoogleServiceInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleServiceInfoResponse(
      googleServiceType: map['googleServiceType'] as String,
      sourceIp: map['sourceIp'] as String,
    );
  }
}
