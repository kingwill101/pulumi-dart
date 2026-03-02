// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_initial_capacity_initial_capacity_config_worker_configuration.dart';

class ApplicationInitialCapacityInitialCapacityConfig {
  /// The resource configuration of the initial capacity configuration.
  final pulumi.Input<ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration>? workerConfiguration;
  /// The number of workers in the initial capacity configuration.
  final pulumi.Input<int> workerCount;

  /// Creates a new [ApplicationInitialCapacityInitialCapacityConfig].
  /// [workerConfiguration] The resource configuration of the initial capacity configuration.
  /// [workerCount] The number of workers in the initial capacity configuration.
  ApplicationInitialCapacityInitialCapacityConfig({
    this.workerConfiguration,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration, Map<String, dynamic>>(workerConfiguration, (value) => value.toMap()),
      'workerCount': workerCount,
    };
  }

  factory ApplicationInitialCapacityInitialCapacityConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationInitialCapacityInitialCapacityConfig(
      workerConfiguration: map['workerConfiguration'] == null ? null : (ApplicationInitialCapacityInitialCapacityConfigWorkerConfiguration.fromMap((map['workerConfiguration'] as Map).cast<String, dynamic>())).input(),
      workerCount: (map['workerCount'] as int).input(),
    );
  }
}

