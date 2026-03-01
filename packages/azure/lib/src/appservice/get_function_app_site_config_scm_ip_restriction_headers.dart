// ignore_for_file: unused_element, unnecessary_cast


class GetFunctionAppSiteConfigScmIpRestrictionHeaders {
  final List<String> xAzureFdids;
  final List<String> xFdHealthProbes;
  final List<String> xForwardedFors;
  final List<String> xForwardedHosts;

  /// Creates a new [GetFunctionAppSiteConfigScmIpRestrictionHeaders].
  /// [xAzureFdids] Required.
  /// [xFdHealthProbes] Required.
  /// [xForwardedFors] Required.
  /// [xForwardedHosts] Required.
  GetFunctionAppSiteConfigScmIpRestrictionHeaders({
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

  factory GetFunctionAppSiteConfigScmIpRestrictionHeaders.fromMap(Map<String, dynamic> map) {
    return GetFunctionAppSiteConfigScmIpRestrictionHeaders(
      xAzureFdids: (map['xAzureFdids'] as List).cast<String>(),
      xFdHealthProbes: (map['xFdHealthProbes'] as List).cast<String>(),
      xForwardedFors: (map['xForwardedFors'] as List).cast<String>(),
      xForwardedHosts: (map['xForwardedHosts'] as List).cast<String>(),
    );
  }
}

