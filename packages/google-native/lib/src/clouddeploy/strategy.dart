// ignore_for_file: unused_element, unnecessary_cast

import 'canary.dart';
import 'standard.dart';

/// Strategy contains deployment strategy information.
class Strategy {
  /// Canary deployment strategy provides progressive percentage based deployments to a Target.
  final Canary? canary;

  /// Standard deployment strategy executes a single deploy and allows verifying the deployment.
  final Standard? standard;

  /// Creates a new [Strategy].
  /// [canary] Canary deployment strategy provides progressive percentage based deployments to a Target.
  /// [standard] Standard deployment strategy executes a single deploy and allows verifying the deployment.
  Strategy({this.canary, this.standard});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canary': ?canary == null ? null : canary!.toMap(),
      'standard': ?standard == null ? null : standard!.toMap(),
    };
  }

  factory Strategy.fromMap(Map<String, dynamic> map) {
    return Strategy(
      canary: map['canary'] == null
          ? null
          : Canary.fromMap((map['canary'] as Map).cast<String, dynamic>()),
      standard: map['standard'] == null
          ? null
          : Standard.fromMap((map['standard'] as Map).cast<String, dynamic>()),
    );
  }
}
