// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details on the Estimated External Storage for AVS Assessment.
class AvsEstimatedExternalStorageResponse {
  /// Total monthly cost for type of storage.
  final pulumi.Input<double>? monthlyPrice;
  /// Recommended External Storage.
  final pulumi.Input<String>? storageType;
  /// Predicted storage utilization.
  final pulumi.Input<double>? storageUtilization;
  /// Predicted total Storage used in GB.
  final pulumi.Input<double>? totalStorageInGB;

  /// Creates a new [AvsEstimatedExternalStorageResponse].
  /// [monthlyPrice] Total monthly cost for type of storage.
  /// [storageType] Recommended External Storage.
  /// [storageUtilization] Predicted storage utilization.
  /// [totalStorageInGB] Predicted total Storage used in GB.
  const AvsEstimatedExternalStorageResponse({
    this.monthlyPrice,
    this.storageType,
    this.storageUtilization,
    this.totalStorageInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthlyPrice': ?monthlyPrice,
      'storageType': ?storageType,
      'storageUtilization': ?storageUtilization,
      'totalStorageInGB': ?totalStorageInGB,
    };
  }

  factory AvsEstimatedExternalStorageResponse.fromMap(Map<String, dynamic> map) {
    return AvsEstimatedExternalStorageResponse(
      monthlyPrice: (() { final guardedValue = map['monthlyPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageUtilization: (() { final guardedValue = map['storageUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalStorageInGB: (() { final guardedValue = map['totalStorageInGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

