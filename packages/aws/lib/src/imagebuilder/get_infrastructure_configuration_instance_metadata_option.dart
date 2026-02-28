// ignore_for_file: unused_element, unnecessary_cast

class GetInfrastructureConfigurationInstanceMetadataOption {
  /// Number of hops that an instance can traverse to reach its destonation.
  final int httpPutResponseHopLimit;

  /// Whether a signed token is required for instance metadata retrieval requests.
  final String httpTokens;

  /// Creates a new [GetInfrastructureConfigurationInstanceMetadataOption].
  /// [httpPutResponseHopLimit] Number of hops that an instance can traverse to reach its destonation.
  /// [httpTokens] Whether a signed token is required for instance metadata retrieval requests.
  GetInfrastructureConfigurationInstanceMetadataOption({
    required this.httpPutResponseHopLimit,
    required this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpPutResponseHopLimit'] = httpPutResponseHopLimit;
    map['httpTokens'] = httpTokens;
    return map;
  }

  factory GetInfrastructureConfigurationInstanceMetadataOption.fromMap(
      Map<String, dynamic> map) {
    return GetInfrastructureConfigurationInstanceMetadataOption(
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] as int,
      httpTokens: map['httpTokens'] as String,
    );
  }
}
