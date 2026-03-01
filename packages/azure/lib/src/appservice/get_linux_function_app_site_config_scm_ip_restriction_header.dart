// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader {
  /// A list of Azure Front Door IDs.
  final List<String> xAzureFdids;
  /// Should a Front Door Health Probe be expected?
  final List<String> xFdHealthProbes;
  /// A list of addresses for which matching is applied.
  final List<String> xForwardedFors;
  /// A list of Hosts for which matching is applied.
  final List<String> xForwardedHosts;

  /// Creates a new [GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader].
  /// [xAzureFdids] A list of Azure Front Door IDs.
  /// [xFdHealthProbes] Should a Front Door Health Probe be expected?
  /// [xForwardedFors] A list of addresses for which matching is applied.
  /// [xForwardedHosts] A list of Hosts for which matching is applied.
  GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader({
    required this.xAzureFdids,
    required this.xFdHealthProbes,
    required this.xForwardedFors,
    required this.xForwardedHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xAzureFdids': xAzureFdids,
      'xFdHealthProbes': xFdHealthProbes,
      'xForwardedFors': xForwardedFors,
      'xForwardedHosts': xForwardedHosts,
    };
  }

  factory GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppSiteConfigScmIpRestrictionHeader(
      xAzureFdids: (map['xAzureFdids'] as List).cast<String>(),
      xFdHealthProbes: (map['xFdHealthProbes'] as List).cast<String>(),
      xForwardedFors: (map['xForwardedFors'] as List).cast<String>(),
      xForwardedHosts: (map['xForwardedHosts'] as List).cast<String>(),
    );
  }
}

