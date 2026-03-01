// ignore_for_file: unused_element, unnecessary_cast


/// Additional information of the DPMContainer.
class DPMContainerExtendedInfoResponse {
  /// Last refresh time of the DPMContainer.
  final String? lastRefreshedAt;

  /// Creates a new [DPMContainerExtendedInfoResponse].
  /// [lastRefreshedAt] Last refresh time of the DPMContainer.
  DPMContainerExtendedInfoResponse({
    this.lastRefreshedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRefreshedAt': ?lastRefreshedAt,
    };
  }

  factory DPMContainerExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return DPMContainerExtendedInfoResponse(
      lastRefreshedAt: map['lastRefreshedAt'] == null ? null : map['lastRefreshedAt'] as String,
    );
  }
}

