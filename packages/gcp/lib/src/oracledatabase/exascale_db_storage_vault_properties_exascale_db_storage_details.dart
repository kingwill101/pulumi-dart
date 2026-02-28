// ignore_for_file: unused_element, unnecessary_cast

class ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails {
  /// (Output)
  /// The available storage capacity for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final int? availableSizeGbs;

  /// The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  final int totalSizeGbs;

  /// Creates a new [ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails].
  /// [availableSizeGbs] (Output)
  /// [totalSizeGbs] The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails({
    this.availableSizeGbs,
    required this.totalSizeGbs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availableSizeGbsValue = availableSizeGbs;
    if (availableSizeGbsValue != null) {
      map['availableSizeGbs'] = availableSizeGbsValue;
    }
    map['totalSizeGbs'] = totalSizeGbs;
    return map;
  }

  factory ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails.fromMap(
      Map<String, dynamic> map) {
    return ExascaleDbStorageVaultPropertiesExascaleDbStorageDetails(
      availableSizeGbs: map['availableSizeGbs'] == null
          ? null
          : map['availableSizeGbs'] as int,
      totalSizeGbs: map['totalSizeGbs'] as int,
    );
  }
}
