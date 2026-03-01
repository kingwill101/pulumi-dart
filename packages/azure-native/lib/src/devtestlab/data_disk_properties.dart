// ignore_for_file: unused_element, unnecessary_cast

import 'attach_new_data_disk_options.dart';

/// Request body for adding a new or existing data disk to a virtual machine.
class DataDiskProperties {
  /// Specifies options to attach a new disk to the virtual machine.
  final AttachNewDataDiskOptions? attachNewDataDiskOptions;
  /// Specifies the existing lab disk id to attach to virtual machine.
  final String? existingLabDiskId;
  /// Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
  final String? hostCaching;

  /// Creates a new [DataDiskProperties].
  /// [attachNewDataDiskOptions] Specifies options to attach a new disk to the virtual machine.
  /// [existingLabDiskId] Specifies the existing lab disk id to attach to virtual machine.
  /// [hostCaching] Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
  DataDiskProperties({
    this.attachNewDataDiskOptions,
    this.existingLabDiskId,
    this.hostCaching,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachNewDataDiskOptions': ?attachNewDataDiskOptions == null ? null : attachNewDataDiskOptions!.toMap(),
      'existingLabDiskId': ?existingLabDiskId,
      'hostCaching': ?hostCaching,
    };
  }

  factory DataDiskProperties.fromMap(Map<String, dynamic> map) {
    return DataDiskProperties(
      attachNewDataDiskOptions: map['attachNewDataDiskOptions'] == null ? null : AttachNewDataDiskOptions.fromMap((map['attachNewDataDiskOptions'] as Map).cast<String, dynamic>()),
      existingLabDiskId: map['existingLabDiskId'] == null ? null : map['existingLabDiskId'] as String,
      hostCaching: map['hostCaching'] == null ? null : map['hostCaching'] as String,
    );
  }
}

