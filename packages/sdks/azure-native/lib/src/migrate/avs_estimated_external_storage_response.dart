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
  AvsEstimatedExternalStorageResponse({
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
      monthlyPrice: map['monthlyPrice'] == null ? null : (map['monthlyPrice'] as double).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
      storageUtilization: map['storageUtilization'] == null ? null : (map['storageUtilization'] as double).input(),
      totalStorageInGB: map['totalStorageInGB'] == null ? null : (map['totalStorageInGB'] as double).input(),
    );
  }
}

