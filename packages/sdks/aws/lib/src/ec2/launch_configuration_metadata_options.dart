// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationMetadataOptions {
  /// The state of the metadata service: `enabled`, `disabled`.
  final pulumi.Input<String>? httpEndpoint;
  /// The desired HTTP PUT response hop limit for instance metadata requests.
  final pulumi.Input<int>? httpPutResponseHopLimit;
  /// If session tokens are required: `optional`, `required`.
  final pulumi.Input<String>? httpTokens;

  /// Creates a new [LaunchConfigurationMetadataOptions].
  /// [httpEndpoint] The state of the metadata service: `enabled`, `disabled`.
  /// [httpPutResponseHopLimit] The desired HTTP PUT response hop limit for instance metadata requests.
  /// [httpTokens] If session tokens are required: `optional`, `required`.
  LaunchConfigurationMetadataOptions({
    this.httpEndpoint,
    this.httpPutResponseHopLimit,
    this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpoint': ?httpEndpoint,
      'httpPutResponseHopLimit': ?httpPutResponseHopLimit,
      'httpTokens': ?httpTokens,
    };
  }

  factory LaunchConfigurationMetadataOptions.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationMetadataOptions(
      httpEndpoint: map['httpEndpoint'] == null ? null : ((map['httpEndpoint'] as String).input()).input(),
      httpPutResponseHopLimit: map['httpPutResponseHopLimit'] == null ? null : ((map['httpPutResponseHopLimit'] as int).input()).input(),
      httpTokens: map['httpTokens'] == null ? null : ((map['httpTokens'] as String).input()).input(),
    );
  }
}

