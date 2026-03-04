// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attach_new_data_disk_options_response.dart';

/// Request body for adding a new or existing data disk to a virtual machine.
class DataDiskPropertiesResponse {
  /// Specifies options to attach a new disk to the virtual machine.
  final pulumi.Input<AttachNewDataDiskOptionsResponse>?
  attachNewDataDiskOptions;

  /// Specifies the existing lab disk id to attach to virtual machine.
  final pulumi.Input<String>? existingLabDiskId;

  /// Caching option for a data disk (i.e. None, ReadOnly, ReadWrite).
  final pulumi.Input<String>? hostCaching;

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
      'attachNewDataDiskOptions':
          ?pulumi.Input.mapOptionalInputValue<
            AttachNewDataDiskOptionsResponse,
            Map<String, dynamic>
          >(attachNewDataDiskOptions, (value) => value.toMap()),
      'existingLabDiskId': ?existingLabDiskId,
      'hostCaching': ?hostCaching,
    };
  }

  factory DataDiskPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskPropertiesResponse(
      attachNewDataDiskOptions: (() {
        final guardedValue = map['attachNewDataDiskOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AttachNewDataDiskOptionsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      existingLabDiskId: (() {
        final guardedValue = map['existingLabDiskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostCaching: (() {
        final guardedValue = map['hostCaching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
