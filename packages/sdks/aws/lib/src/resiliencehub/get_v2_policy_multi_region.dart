// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV2PolicyMultiRegion {
  /// Disaster recovery approach.
  final pulumi.Input<String> disasterRecoveryApproach;
  /// Recovery point objective in minutes.
  final pulumi.Input<int> rpoInMinutes;
  /// Recovery time objective in minutes.
  final pulumi.Input<int> rtoInMinutes;

  /// Creates a new [GetV2PolicyMultiRegion].
  /// [disasterRecoveryApproach] Disaster recovery approach.
  /// [rpoInMinutes] Recovery point objective in minutes.
  /// [rtoInMinutes] Recovery time objective in minutes.
  const GetV2PolicyMultiRegion({
    required this.disasterRecoveryApproach,
    required this.rpoInMinutes,
    required this.rtoInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disasterRecoveryApproach': disasterRecoveryApproach,
      'rpoInMinutes': rpoInMinutes,
      'rtoInMinutes': rtoInMinutes,
    };
  }

  factory GetV2PolicyMultiRegion.fromMap(Map<String, dynamic> map) {
    return GetV2PolicyMultiRegion(
      disasterRecoveryApproach: pulumi.Input.fromValue(map['disasterRecoveryApproach'] as String),
      rpoInMinutes: pulumi.Input.fromValue((map['rpoInMinutes'] as num).toInt()),
      rtoInMinutes: pulumi.Input.fromValue((map['rtoInMinutes'] as num).toInt()),
    );
  }
}
