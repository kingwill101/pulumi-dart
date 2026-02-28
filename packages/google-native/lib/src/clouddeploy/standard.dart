// ignore_for_file: unused_element, unnecessary_cast

import 'postdeploy.dart';
import 'predeploy.dart';

/// Standard represents the standard deployment strategy.
class Standard {
  /// Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  final Postdeploy? postdeploy;

  /// Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  final Predeploy? predeploy;

  /// Whether to verify a deployment.
  final bool? verify;

  /// Creates a new [Standard].
  /// [postdeploy] Optional. Configuration for the postdeploy job. If this is not configured, postdeploy job will not be present.
  /// [predeploy] Optional. Configuration for the predeploy job. If this is not configured, predeploy job will not be present.
  /// [verify] Whether to verify a deployment.
  Standard({
    this.postdeploy,
    this.predeploy,
    this.verify,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postdeployValue = postdeploy;
    if (postdeployValue != null) {
      map['postdeploy'] = postdeployValue.toMap();
    }
    final predeployValue = predeploy;
    if (predeployValue != null) {
      map['predeploy'] = predeployValue.toMap();
    }
    final verifyValue = verify;
    if (verifyValue != null) {
      map['verify'] = verifyValue;
    }
    return map;
  }

  factory Standard.fromMap(Map<String, dynamic> map) {
    return Standard(
      postdeploy: map['postdeploy'] == null
          ? null
          : Postdeploy.fromMap(
              (map['postdeploy'] as Map).cast<String, dynamic>()),
      predeploy: map['predeploy'] == null
          ? null
          : Predeploy.fromMap(
              (map['predeploy'] as Map).cast<String, dynamic>()),
      verify: map['verify'] == null ? null : map['verify'] as bool,
    );
  }
}
