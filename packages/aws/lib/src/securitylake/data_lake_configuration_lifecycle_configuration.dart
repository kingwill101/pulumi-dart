// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_configuration_lifecycle_configuration_expiration.dart';
import 'data_lake_configuration_lifecycle_configuration_transition.dart';

class DataLakeConfigurationLifecycleConfiguration {
  /// Provides data expiration details of Amazon Security Lake object.
  final DataLakeConfigurationLifecycleConfigurationExpiration? expiration;
  /// Provides data storage transition details of Amazon Security Lake object.
  final List<DataLakeConfigurationLifecycleConfigurationTransition>? transitions;

  /// Creates a new [DataLakeConfigurationLifecycleConfiguration].
  /// [expiration] Provides data expiration details of Amazon Security Lake object.
  /// [transitions] Provides data storage transition details of Amazon Security Lake object.
  DataLakeConfigurationLifecycleConfiguration({
    this.expiration,
    this.transitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiration': ?expiration == null ? null : expiration!.toMap(),
      'transitions': ?transitions == null ? null : pulumi.Input.encodeList<DataLakeConfigurationLifecycleConfigurationTransition, Map<String, dynamic>>(transitions!, (value) => value.toMap()),
    };
  }

  factory DataLakeConfigurationLifecycleConfiguration.fromMap(Map<String, dynamic> map) {
    return DataLakeConfigurationLifecycleConfiguration(
      expiration: map['expiration'] == null ? null : DataLakeConfigurationLifecycleConfigurationExpiration.fromMap((map['expiration'] as Map).cast<String, dynamic>()),
      transitions: map['transitions'] == null ? null : pulumi.Input.decodeList<DataLakeConfigurationLifecycleConfigurationTransition>(map['transitions'], (value) => DataLakeConfigurationLifecycleConfigurationTransition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

