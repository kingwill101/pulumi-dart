// ignore_for_file: unused_element, unnecessary_cast


/// Details on the Estimated External Storage for AVS Assessment.
class AvsEstimatedExternalStorageResponse {
  /// Total monthly cost for type of storage.
  final double? monthlyPrice;
  /// Recommended External Storage.
  final String? storageType;
  /// Predicted storage utilization.
  final double? storageUtilization;
  /// Predicted total Storage used in GB.
  final double? totalStorageInGB;

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
      monthlyPrice: map['monthlyPrice'] == null ? null : map['monthlyPrice'] as double,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      storageUtilization: map['storageUtilization'] == null ? null : map['storageUtilization'] as double,
      totalStorageInGB: map['totalStorageInGB'] == null ? null : map['totalStorageInGB'] as double,
    );
  }
}

