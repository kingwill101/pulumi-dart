// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AttachedDisk.
class AttachedDiskArgs {
  /// Specifies a unique device name of your choice that is
  /// reflected into the /dev/disk/by-id/google-* tree of a Linux operating
  /// system running within the instance. This name can be used to
  /// reference the device for mounting, resizing, and so on, from within
  /// the instance.
  ///
  /// If not specified, the server chooses a default device name to apply
  /// to this disk, in the form persistent-disks-x, where x is a number
  /// assigned by Google Compute Engine.
  final Input<String>? deviceName;

  /// `name` or `self_link` of the disk that will be attached.
  ///
  ///
  /// - - -
  final Input<String> disk;

  /// `name` or `self_link` of the compute instance that the disk will be attached to.
  /// If the `self_link` is provided then `zone` and `project` are extracted from the
  /// self link. If only the name is used then `zone` and `project` must be defined
  /// as properties on the resource or provider.
  final Input<String> instance;

  /// The disk interface used for attaching this disk.
  ///
  /// This field is only used for specific cases, please don't specify
  /// this field without advice from Google. Not specifying the field
  /// will allow the the server to assign the correct interface.
  ///
  /// Possible values:
  /// "SCSI"
  /// "NVME"
  final Input<String>? interface;

  /// The mode in which to attach this disk, either READ_WRITE or
  /// READ_ONLY. If not specified, the default is to attach the disk in
  /// READ_WRITE mode.
  ///
  /// Possible values:
  /// "READ_ONLY"
  /// "READ_WRITE"
  final Input<String>? mode;

  /// The project that the referenced compute instance is a part of. If `instance` is referenced by its
  /// `self_link` the project defined in the link will take precedence.
  final Input<String>? project;

  /// The zone that the referenced compute instance is located within. If `instance` is referenced by its
  /// `self_link` the zone defined in the link will take precedence.
  final Input<String>? zone;

  AttachedDiskArgs({
    this.deviceName,
    required this.disk,
    required this.instance,
    this.interface,
    this.mode,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    map['disk'] = disk;
    map['instance'] = instance;
    final interfaceValue = interface;
    if (interfaceValue != null) {
      map['interface'] = interfaceValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory AttachedDiskArgs.fromMap(Map<String, dynamic> map) {
    return AttachedDiskArgs(
      deviceName: Input.asOptionalInput<String>(map['deviceName']),
      disk: Input.asInput<String>(map['disk']),
      instance: Input.asInput<String>(map['instance']),
      interface: Input.asOptionalInput<String>(map['interface']),
      mode: Input.asOptionalInput<String>(map['mode']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
