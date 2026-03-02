// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_runtime_dto_response.dart';

/// Settings for feature store type workspace.
class FeatureStoreSettingsResponse {
  /// Compute runtime config for feature store type workspace.
  final pulumi.Input<ComputeRuntimeDtoResponse>? computeRuntime;
  final pulumi.Input<String>? offlineStoreConnectionName;
  final pulumi.Input<String>? onlineStoreConnectionName;

  /// Creates a new [FeatureStoreSettingsResponse].
  /// [computeRuntime] Compute runtime config for feature store type workspace.
  /// [offlineStoreConnectionName] Optional.
  /// [onlineStoreConnectionName] Optional.
  FeatureStoreSettingsResponse({
    this.computeRuntime,
    this.offlineStoreConnectionName,
    this.onlineStoreConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeRuntime': ?pulumi.Input.mapOptionalInputValue<ComputeRuntimeDtoResponse, Map<String, dynamic>>(computeRuntime, (value) => value.toMap()),
      'offlineStoreConnectionName': ?offlineStoreConnectionName,
      'onlineStoreConnectionName': ?onlineStoreConnectionName,
    };
  }

  factory FeatureStoreSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FeatureStoreSettingsResponse(
      computeRuntime: map['computeRuntime'] == null ? null : (ComputeRuntimeDtoResponse.fromMap((map['computeRuntime'] as Map).cast<String, dynamic>())).input(),
      offlineStoreConnectionName: map['offlineStoreConnectionName'] == null ? null : (map['offlineStoreConnectionName'] as String).input(),
      onlineStoreConnectionName: map['onlineStoreConnectionName'] == null ? null : (map['onlineStoreConnectionName'] as String).input(),
    );
  }
}

