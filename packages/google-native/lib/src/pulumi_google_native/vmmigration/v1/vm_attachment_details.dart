// ignore_for_file: unused_element, unnecessary_cast

/// Details for attachment of the disk to a VM.
class VmAttachmentDetails {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String? deviceName;

  VmAttachmentDetails({
    this.deviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    return map;
  }

  factory VmAttachmentDetails.fromMap(Map<String, dynamic> map) {
    return VmAttachmentDetails(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
    );
  }
}
