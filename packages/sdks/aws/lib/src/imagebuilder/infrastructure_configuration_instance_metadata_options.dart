// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InfrastructureConfigurationInstanceMetadataOptions {
  /// The number of hops that an instance can traverse to reach its destonation.
  final pulumi.Input<int>? httpPutResponseHopLimit;
  /// Whether a signed token is required for instance metadata retrieval requests. Valid values: `required`, `optional`.
  final pulumi.Input<String>? httpTokens;

  /// Creates a new [InfrastructureConfigurationInstanceMetadataOptions].
  /// [httpPutResponseHopLimit] The number of hops that an instance can traverse to reach its destonation.
  /// [httpTokens] Whether a signed token is required for instance metadata retrieval requests. Valid values: `required`, `optional`.
  const InfrastructureConfigurationInstanceMetadataOptions({
    this.httpPutResponseHopLimit,
    this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
    };
  }

  factory InfrastructureConfigurationInstanceMetadataOptions.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationInstanceMetadataOptions(
      httpPutResponseHopLimit: (() { final guardedValue = map['httpPutResponseHopLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpTokens: (() { final guardedValue = map['httpTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
