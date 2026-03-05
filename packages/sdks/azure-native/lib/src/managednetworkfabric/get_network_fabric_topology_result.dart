// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// Result data returned by getNetworkFabricTopology.
class GetNetworkFabricTopologyResult {
  /// Gets the configuration state.
  final String configurationState;
  /// The error object.
  final ErrorDetailResponse? error;
  /// URL for the details of the response.
  final String? url;

  /// Creates a new [GetNetworkFabricTopologyResult].
  /// [configurationState] Gets the configuration state.
  /// [error] The error object.
  /// [url] URL for the details of the response.
  GetNetworkFabricTopologyResult({
    required this.configurationState,
    this.error,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationState': configurationState,
      'error': ?error?.toMap(),
      'url': ?url,
    };
  }

  factory GetNetworkFabricTopologyResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkFabricTopologyResult(
      configurationState: map['configurationState'] as String,
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

