// ignore_for_file: unused_element, unnecessary_cast

import 'postdeploy_response.dart';
import 'predeploy_response.dart';

/// Standard represents the standard deployment strategy.
class StandardResponse {
  /// Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  final PostdeployResponse postdeploy;

  /// Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  final PredeployResponse predeploy;

  /// Whether to verify a deployment.
  final bool verify;

  /// Creates a new [StandardResponse].
  /// [postdeploy] Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to verify a deployment.
  StandardResponse({
    required this.postdeploy,
    required this.predeploy,
    required this.verify,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'postdeploy': postdeploy.toMap(),
      'predeploy': predeploy.toMap(),
      'verify': verify,
    };
  }

  factory StandardResponse.fromMap(Map<String, dynamic> map) {
    return StandardResponse(
      postdeploy: PostdeployResponse.fromMap(
        (map['postdeploy'] as Map).cast<String, dynamic>(),
      ),
      predeploy: PredeployResponse.fromMap(
        (map['predeploy'] as Map).cast<String, dynamic>(),
      ),
      verify: map['verify'] as bool,
    );
  }
}
