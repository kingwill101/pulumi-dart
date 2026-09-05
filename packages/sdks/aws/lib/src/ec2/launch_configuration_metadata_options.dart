// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchConfigurationMetadataOptions {
  /// The state of the metadata service: `enabled`, `disabled`.
  final pulumi.Input<String?>? httpEndpoint;
  /// The desired HTTP PUT response hop limit for instance metadata requests.
  final pulumi.Input<int?>? httpPutResponseHopLimit;
  /// If session tokens are required: `optional`, `required`.
  final pulumi.Input<String?>? httpTokens;

  /// Creates a new [LaunchConfigurationMetadataOptions].
  /// [httpEndpoint] The state of the metadata service: `enabled`, `disabled`.
  /// [httpPutResponseHopLimit] The desired HTTP PUT response hop limit for instance metadata requests.
  /// [httpTokens] If session tokens are required: `optional`, `required`.
  const LaunchConfigurationMetadataOptions({
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
      httpEndpoint: (() { final guardedValue = map['httpEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpPutResponseHopLimit: (() { final guardedValue = map['httpPutResponseHopLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      httpTokens: (() { final guardedValue = map['httpTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
