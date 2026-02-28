// ignore_for_file: unused_element, unnecessary_cast


/// Details for attachment of the disk to a VM.
class VmAttachmentDetailsVmmigrationV1alpha1 {
  /// Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String? deviceName;

  /// Creates a new [VmAttachmentDetailsVmmigrationV1alpha1].
  /// [deviceName] Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  VmAttachmentDetailsVmmigrationV1alpha1({
    this.deviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
    };
  }

  factory VmAttachmentDetailsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmAttachmentDetailsVmmigrationV1alpha1(
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
    );
  }
}

