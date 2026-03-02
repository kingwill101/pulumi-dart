// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchConfigurationMetadataOption {
  /// State of the metadata service: `enabled`, `disabled`.
  final pulumi.Input<String> httpEndpoint;
  /// The desired HTTP PUT response hop limit for instance metadata requests.
  final pulumi.Input<int> httpPutResponseHopLimit;
  /// If session tokens are required: `optional`, `required`.
  final pulumi.Input<String> httpTokens;

  /// Creates a new [GetLaunchConfigurationMetadataOption].
  /// [httpEndpoint] State of the metadata service: `enabled`, `disabled`.
  /// [httpPutResponseHopLimit] The desired HTTP PUT response hop limit for instance metadata requests.
  /// [httpTokens] If session tokens are required: `optional`, `required`.
  GetLaunchConfigurationMetadataOption({
    required this.httpEndpoint,
    required this.httpPutResponseHopLimit,
    required this.httpTokens,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpEndpoint': httpEndpoint,
      'httpPutResponseHopLimit': httpPutResponseHopLimit,
      'httpTokens': httpTokens,
    };
  }

  factory GetLaunchConfigurationMetadataOption.fromMap(Map<String, dynamic> map) {
    return GetLaunchConfigurationMetadataOption(
      httpEndpoint: (map['httpEndpoint'] as String).input(),
      httpPutResponseHopLimit: (map['httpPutResponseHopLimit'] as int).input(),
      httpTokens: (map['httpTokens'] as String).input(),
    );
  }
}

