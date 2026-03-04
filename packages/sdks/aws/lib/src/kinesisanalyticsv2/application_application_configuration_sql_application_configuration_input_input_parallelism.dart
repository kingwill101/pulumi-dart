// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism {
  /// The number of in-application streams to create.
  final pulumi.Input<int>? count;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism].
  /// [count] The number of in-application streams to create.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism({
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': ?count};
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputInputParallelism(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
