// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_runtime_dto.dart';

/// Settings for feature store type workspace.
class FeatureStoreSettings {
  /// Compute runtime config for feature store type workspace.
  final pulumi.Input<ComputeRuntimeDto>? computeRuntime;
  final pulumi.Input<String>? offlineStoreConnectionName;
  final pulumi.Input<String>? onlineStoreConnectionName;

  /// Creates a new [FeatureStoreSettings].
  /// [computeRuntime] Compute runtime config for feature store type workspace.
  /// [offlineStoreConnectionName] Optional.
  /// [onlineStoreConnectionName] Optional.
  FeatureStoreSettings({
    this.computeRuntime,
    this.offlineStoreConnectionName,
    this.onlineStoreConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeRuntime':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeRuntimeDto,
            Map<String, dynamic>
          >(computeRuntime, (value) => value.toMap()),
      'offlineStoreConnectionName': ?offlineStoreConnectionName,
      'onlineStoreConnectionName': ?onlineStoreConnectionName,
    };
  }

  factory FeatureStoreSettings.fromMap(Map<String, dynamic> map) {
    return FeatureStoreSettings(
      computeRuntime: (() {
        final guardedValue = map['computeRuntime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeRuntimeDto.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      offlineStoreConnectionName: (() {
        final guardedValue = map['offlineStoreConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      onlineStoreConnectionName: (() {
        final guardedValue = map['onlineStoreConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
