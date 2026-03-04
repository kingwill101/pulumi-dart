// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_configuration_lifecycle_configuration_expiration.dart';
import 'data_lake_configuration_lifecycle_configuration_transition.dart';

class DataLakeConfigurationLifecycleConfiguration {
  /// Provides data expiration details of Amazon Security Lake object.
  final pulumi.Input<DataLakeConfigurationLifecycleConfigurationExpiration>?
  expiration;

  /// Provides data storage transition details of Amazon Security Lake object.
  final pulumi.Input<
    List<DataLakeConfigurationLifecycleConfigurationTransition>
  >?
  transitions;

  /// Creates a new [DataLakeConfigurationLifecycleConfiguration].
  /// [expiration] Provides data expiration details of Amazon Security Lake object.
  /// [transitions] Provides data storage transition details of Amazon Security Lake object.
  DataLakeConfigurationLifecycleConfiguration({
    this.expiration,
    this.transitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration':
          ?pulumi.Input.mapOptionalInputValue<
            DataLakeConfigurationLifecycleConfigurationExpiration,
            Map<String, dynamic>
          >(expiration, (value) => value.toMap()),
      'transitions':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataLakeConfigurationLifecycleConfigurationTransition>,
            List<Map<String, dynamic>>
          >(
            transitions,
            (value) =>
                pulumi.Input.encodeList<
                  DataLakeConfigurationLifecycleConfigurationTransition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DataLakeConfigurationLifecycleConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DataLakeConfigurationLifecycleConfiguration(
      expiration: (() {
        final guardedValue = map['expiration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataLakeConfigurationLifecycleConfigurationExpiration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      transitions: (() {
        final guardedValue = map['transitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            DataLakeConfigurationLifecycleConfigurationTransition
          >(
            guardedValue,
            (value) =>
                DataLakeConfigurationLifecycleConfigurationTransition.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
