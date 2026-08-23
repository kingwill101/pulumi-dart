// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_runtime_dto_response.dart';

class FeatureStoreSettingsResponse {
  final pulumi.Input<ComputeRuntimeDtoResponse>? computeRuntime;
  final pulumi.Input<String>? offlineStoreConnectionName;
  final pulumi.Input<String>? onlineStoreConnectionName;

  /// Creates a new [FeatureStoreSettingsResponse].
  /// [computeRuntime] Optional.
  /// [offlineStoreConnectionName] Optional.
  /// [onlineStoreConnectionName] Optional.
  const FeatureStoreSettingsResponse({
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
      computeRuntime: (() { final guardedValue = map['computeRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeRuntimeDtoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offlineStoreConnectionName: (() { final guardedValue = map['offlineStoreConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onlineStoreConnectionName: (() { final guardedValue = map['onlineStoreConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
