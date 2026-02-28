// ignore_for_file: unused_element, unnecessary_cast

import 'gcs.dart';
import 'nfs.dart';

/// Volume describes a volume and parameters for it to be mounted to a VM.
class Volume {
  /// Device name of an attached disk volume, which should align with a device_name specified by job.allocation_policy.instances[0].policy.disks[i].device_name or defined by the given instance template in job.allocation_policy.instances[0].instance_template.
  final String? deviceName;

  /// A Google Cloud Storage (GCS) volume.
  final GCS? gcs;

  /// For Google Cloud Storage (GCS), mount options are the options supported by the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing persistent disks, mount options provided by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are supported. This is due to restrictions of multi-writer mode (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms). For other attached disks and Network File System (NFS), mount options are these supported by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html).
  final List<String>? mountOptions;

  /// The mount path for the volume, e.g. /mnt/disks/share.
  final String? mountPath;

  /// A Network File System (NFS) volume. For example, a Filestore file share.
  final NFS? nfs;

  /// Creates a new [Volume].
  /// [deviceName] Device name of an attached disk volume, which should align with a device_name specified by job.allocation_policy.instances[0].policy.disks[i].device_name or defined by the given instance template in job.allocation_policy.instances[0].instance_template.
  /// [gcs] A Google Cloud Storage (GCS) volume.
  /// [mountOptions] For Google Cloud Storage (GCS), mount options are the options supported by the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing persistent disks, mount options provided by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are supported. This is due to restrictions of multi-writer mode (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms). For other attached disks and Network File System (NFS), mount options are these supported by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html).
  /// [mountPath] The mount path for the volume, e.g. /mnt/disks/share.
  /// [nfs] A Network File System (NFS) volume. For example, a Filestore file share.
  Volume({
    this.deviceName,
    this.gcs,
    this.mountOptions,
    this.mountPath,
    this.nfs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final gcsValue = gcs;
    if (gcsValue != null) {
      map['gcs'] = gcsValue.toMap();
    }
    final mountOptionsValue = mountOptions;
    if (mountOptionsValue != null) {
      map['mountOptions'] = mountOptionsValue;
    }
    final mountPathValue = mountPath;
    if (mountPathValue != null) {
      map['mountPath'] = mountPathValue;
    }
    final nfsValue = nfs;
    if (nfsValue != null) {
      map['nfs'] = nfsValue.toMap();
    }
    return map;
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      gcs: map['gcs'] == null
          ? null
          : GCS.fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      mountOptions: map['mountOptions'] == null
          ? null
          : (map['mountOptions'] as List).cast<String>(),
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      nfs: map['nfs'] == null
          ? null
          : NFS.fromMap((map['nfs'] as Map).cast<String, dynamic>()),
    );
  }
}
