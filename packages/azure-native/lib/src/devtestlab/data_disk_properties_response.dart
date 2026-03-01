// ignore_for_file: unused_element, unnecessary_cast

import 'attach_new_data_disk_options_response.dart';

/// Request body for adding a new or existing data disk to a virtual machine.
class DataDiskPropertiesResponse {
  /// Specifies options to attach a new disk to the virtual machine.
  final AttachNewDataDiskOptionsResponse? attachNewDataDiskOptions;
  /// Specifies the existing lab disk id to attach to virtual machine.
  final String? existingLabDiskId;
  /// Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
  final String? hostCaching;

  /// Creates a new [DataDiskPropertiesResponse].
  /// [attachNewDataDiskOptions] Specifies options to attach a new disk to the virtual machine.
  /// [existingLabDiskId] Specifies the existing lab disk id to attach to virtual machine.
  /// [hostCaching] Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
  DataDiskPropertiesResponse({
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

  factory DataDiskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskPropertiesResponse(
      attachNewDataDiskOptions: map['attachNewDataDiskOptions'] == null ? null : AttachNewDataDiskOptionsResponse.fromMap((map['attachNewDataDiskOptions'] as Map).cast<String, dynamic>()),
      existingLabDiskId: map['existingLabDiskId'] == null ? null : map['existingLabDiskId'] as String,
      hostCaching: map['hostCaching'] == null ? null : map['hostCaching'] as String,
    );
  }
}

