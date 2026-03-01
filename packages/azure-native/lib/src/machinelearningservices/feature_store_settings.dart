// ignore_for_file: unused_element, unnecessary_cast

import 'compute_runtime_dto.dart';

/// Settings for feature store type workspace.
class FeatureStoreSettings {
  /// Compute runtime config for feature store type workspace.
  final ComputeRuntimeDto? computeRuntime;
  final String? offlineStoreConnectionName;
  final String? onlineStoreConnectionName;

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
      'computeRuntime': ?computeRuntime == null ? null : computeRuntime!.toMap(),
      'offlineStoreConnectionName': ?offlineStoreConnectionName,
      'onlineStoreConnectionName': ?onlineStoreConnectionName,
    };
  }

  factory FeatureStoreSettings.fromMap(Map<String, dynamic> map) {
    return FeatureStoreSettings(
      computeRuntime: map['computeRuntime'] == null ? null : ComputeRuntimeDto.fromMap((map['computeRuntime'] as Map).cast<String, dynamic>()),
      offlineStoreConnectionName: map['offlineStoreConnectionName'] == null ? null : map['offlineStoreConnectionName'] as String,
      onlineStoreConnectionName: map['onlineStoreConnectionName'] == null ? null : map['onlineStoreConnectionName'] as String,
    );
  }
}

