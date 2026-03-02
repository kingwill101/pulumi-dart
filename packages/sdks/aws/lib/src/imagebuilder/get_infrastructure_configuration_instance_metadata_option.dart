// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInfrastructureConfigurationInstanceMetadataOption {
  /// Number of hops that an instance can traverse to reach its destonation.
  final pulumi.Input<int> httpPutResponseHopLimit;
  /// Whether a signed token is required for instance metadata retrieval requests.
  final pulumi.Input<String> httpTokens;

  /// Creates a new [GetInfrastructureConfigurationInstanceMetadataOption].
  /// [httpPutResponseHopLimit] Number of hops that an instance can traverse to reach its destonation.
  /// [httpTokens] Whether a signed token is required for instance metadata retrieval requests.
  GetInfrastructureConfigurationInstanceMetadataOption({
    required this.httpPutResponseHopLimit,
    required this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpPutResponseHopLimit': httpPutResponseHopLimit,
      'httpTokens': httpTokens,
    };
  }

  factory GetInfrastructureConfigurationInstanceMetadataOption.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationInstanceMetadataOption(
      httpPutResponseHopLimit: (map['httpPutResponseHopLimit'] as int).input(),
      httpTokens: (map['httpTokens'] as String).input(),
    );
  }
}

