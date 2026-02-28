// ignore_for_file: unused_element, unnecessary_cast

import 'gcsresponse.dart';
import 'nfsresponse.dart';

/// Volume describes a volume and parameters for it to be mounted to a VM.
class VolumeResponse {
  /// Device name of an attached disk volume, which should align with a device_name specified by job.allocation_policy.instances[0].policy.disks[i].device_name or defined by the given instance template in job.allocation_policy.instances[0].instance_template.
  final String deviceName;
  /// A Google Cloud Storage (GCS) volume.
  final GCSResponse gcs;
  /// For Google Cloud Storage (GCS), mount options are the options supported by the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing persistent disks, mount options provided by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are supported. This is due to restrictions of multi-writer mode (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms). For other attached disks and Network File System (NFS), mount options are these supported by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html).
  final List<String> mountOptions;
  /// The mount path for the volume, e.g. /mnt/disks/share.
  final String mountPath;
  /// A Network File System (NFS) volume. For example, a Filestore file share.
  final NFSResponse nfs;

  /// Creates a new [VolumeResponse].
  /// [deviceName] Device name of an attached disk volume, which should align with a device_name specified by job.allocation_policy.instances[0].policy.disks[i].device_name or defined by the given instance template in job.allocation_policy.instances[0].instance_template.
  /// [gcs] A Google Cloud Storage (GCS) volume.
  /// [mountOptions] For Google Cloud Storage (GCS), mount options are the options supported by the gcsfuse tool (https://github.com/GoogleCloudPlatform/gcsfuse). For existing persistent disks, mount options provided by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html) except writing are supported. This is due to restrictions of multi-writer mode (https://cloud.google.com/compute/docs/disks/sharing-disks-between-vms). For other attached disks and Network File System (NFS), mount options are these supported by the mount command (https://man7.org/linux/man-pages/man8/mount.8.html).
  /// [mountPath] The mount path for the volume, e.g. /mnt/disks/share.
  /// [nfs] A Network File System (NFS) volume. For example, a Filestore file share.
  VolumeResponse({
    required this.deviceName,
    required this.gcs,
    required this.mountOptions,
    required this.mountPath,
    required this.nfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'gcs': gcs.toMap(),
      'mountOptions': mountOptions,
      'mountPath': mountPath,
      'nfs': nfs.toMap(),
    };
  }

  factory VolumeResponse.fromMap(Map<String, dynamic> map) {
    return VolumeResponse(
      deviceName: map['deviceName'] as String,
      gcs: GCSResponse.fromMap((map['gcs'] as Map).cast<String, dynamic>()),
      mountOptions: (map['mountOptions'] as List).cast<String>(),
      mountPath: map['mountPath'] as String,
      nfs: NFSResponse.fromMap((map['nfs'] as Map).cast<String, dynamic>()),
    );
  }
}

