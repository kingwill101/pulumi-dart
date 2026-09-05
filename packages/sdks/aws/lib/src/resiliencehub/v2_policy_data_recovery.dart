// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyDataRecovery {
  /// Maximum time between backups in minutes.
  final pulumi.Input<int> timeBetweenBackupsInMinutes;

  /// Creates a new [V2PolicyDataRecovery].
  /// [timeBetweenBackupsInMinutes] Maximum time between backups in minutes.
  const V2PolicyDataRecovery({
    required this.timeBetweenBackupsInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeBetweenBackupsInMinutes': timeBetweenBackupsInMinutes,
    };
  }

  factory V2PolicyDataRecovery.fromMap(Map<String, dynamic> map) {
    return V2PolicyDataRecovery(
      timeBetweenBackupsInMinutes: pulumi.Input.fromValue((map['timeBetweenBackupsInMinutes'] as num).toInt()),
    );
  }
}
