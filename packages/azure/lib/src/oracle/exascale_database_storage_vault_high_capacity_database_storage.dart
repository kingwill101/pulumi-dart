// ignore_for_file: unused_element, unnecessary_cast


class ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage {
  /// Available size in gigabytes.
  final int? availableSizeInGb;
  /// Total capacity in gigabytes. Changing this forces a new Exadata Database Storage Vault to be created.
  final int totalSizeInGb;

  /// Creates a new [ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage].
  /// [availableSizeInGb] Available size in gigabytes.
  /// [totalSizeInGb] Total capacity in gigabytes. Changing this forces a new Exadata Database Storage Vault to be created.
  ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage({
    this.availableSizeInGb,
    required this.totalSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableSizeInGb': ?availableSizeInGb,
      'totalSizeInGb': totalSizeInGb,
    };
  }

  factory ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage.fromMap(Map<String, dynamic> map) {
    return ExascaleDatabaseStorageVaultHighCapacityDatabaseStorage(
      availableSizeInGb: map['availableSizeInGb'] == null ? null : map['availableSizeInGb'] as int,
      totalSizeInGb: map['totalSizeInGb'] as int,
    );
  }
}

