// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attach_new_data_disk_options.dart';

/// Request body for adding a new or existing data disk to a virtual machine.
class DataDiskProperties {
  /// Specifies options to attach a new disk to the virtual machine.
  final pulumi.Input<AttachNewDataDiskOptions>? attachNewDataDiskOptions;
  /// Specifies the existing lab disk id to attach to virtual machine.
  final pulumi.Input<String>? existingLabDiskId;
  /// Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
  final pulumi.Input<String>? hostCaching;

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
      'attachNewDataDiskOptions': ?pulumi.Input.mapOptionalInputValue<AttachNewDataDiskOptions, Map<String, dynamic>>(attachNewDataDiskOptions, (value) => value.toMap()),
      'existingLabDiskId': ?existingLabDiskId,
      'hostCaching': ?hostCaching,
    };
  }

  factory DataDiskProperties.fromMap(Map<String, dynamic> map) {
    return DataDiskProperties(
      attachNewDataDiskOptions: map['attachNewDataDiskOptions'] == null ? null : (AttachNewDataDiskOptions.fromMap((map['attachNewDataDiskOptions']! as Map).cast<String, dynamic>())).input(),
      existingLabDiskId: map['existingLabDiskId'] == null ? null : (map['existingLabDiskId']! as String).input(),
      hostCaching: map['hostCaching'] == null ? null : (map['hostCaching']! as String).input(),
    );
  }
}

