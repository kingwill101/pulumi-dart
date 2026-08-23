// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV2PolicyDataRecovery {
  /// Maximum time between backups in minutes.
  final pulumi.Input<int> timeBetweenBackupsInMinutes;

  /// Creates a new [GetV2PolicyDataRecovery].
  /// [timeBetweenBackupsInMinutes] Maximum time between backups in minutes.
  const GetV2PolicyDataRecovery({
    required this.timeBetweenBackupsInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeBetweenBackupsInMinutes': timeBetweenBackupsInMinutes,
    };
  }

  factory GetV2PolicyDataRecovery.fromMap(Map<String, dynamic> map) {
    return GetV2PolicyDataRecovery(
      timeBetweenBackupsInMinutes: pulumi.Input.fromValue(map['timeBetweenBackupsInMinutes'] as int),
    );
  }
}
