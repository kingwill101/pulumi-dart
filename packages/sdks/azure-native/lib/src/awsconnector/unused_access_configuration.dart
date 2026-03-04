// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of UnusedAccessConfiguration
class UnusedAccessConfiguration {
  /// The specified access age in days for which to generate findings for unused access. For example, if you specify 90 days, the analyzer will generate findings for IAM entities within the accounts of the selected organization for any access that hasn't been used in 90 or more days since the analyzer's last scan. You can choose a value between 1 and 180 days.
  final pulumi.Input<int>? unusedAccessAge;

  /// Creates a new [UnusedAccessConfiguration].
  /// [unusedAccessAge] The specified access age in days for which to generate findings for unused access. For example, if you specify 90 days, the analyzer will generate findings for IAM entities within the accounts of the selected organization for any access that hasn't been used in 90 or more days since the analyzer's last scan. You can choose a value between 1 and 180 days.
  UnusedAccessConfiguration({this.unusedAccessAge});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'unusedAccessAge': ?unusedAccessAge};
  }

  factory UnusedAccessConfiguration.fromMap(Map<String, dynamic> map) {
    return UnusedAccessConfiguration(
      unusedAccessAge: (() {
        final guardedValue = map['unusedAccessAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
