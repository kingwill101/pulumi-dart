// ignore_for_file: unused_element, unnecessary_cast

import 'awselastic_block_store_volume_source_patch.dart';
import 'azure_disk_volume_source_patch.dart';
import 'azure_file_volume_source_patch.dart';
import 'ceph_fsvolume_source_patch.dart';
import 'cinder_volume_source_patch.dart';
import 'config_map_volume_source_patch.dart';
import 'csivolume_source_patch.dart';
import 'downward_apivolume_source_patch.dart';
import 'empty_dir_volume_source_patch.dart';
import 'ephemeral_volume_source_patch.dart';
import 'fcvolume_source_patch.dart';
import 'flex_volume_source_patch.dart';
import 'flocker_volume_source_patch.dart';
import 'gcepersistent_disk_volume_source_patch.dart';
import 'git_repo_volume_source_patch.dart';
import 'glusterfs_volume_source_patch.dart';
import 'host_path_volume_source_patch.dart';
import 'image_volume_source_patch.dart';
import 'iscsivolume_source_patch.dart';
import 'nfsvolume_source_patch.dart';
import 'persistent_volume_claim_volume_source_patch.dart';
import 'photon_persistent_disk_volume_source_patch.dart';
import 'portworx_volume_source_patch.dart';
import 'projected_volume_source_patch.dart';
import 'quobyte_volume_source_patch.dart';
import 'rbdvolume_source_patch.dart';
import 'scale_iovolume_source_patch.dart';
import 'secret_volume_source_patch.dart';
import 'storage_osvolume_source_patch.dart';
import 'vsphere_virtual_disk_volume_source_patch.dart';

/// Volume represents a named volume in a pod that may be accessed by any container in the pod.
class VolumePatch {
  /// awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  final AWSElasticBlockStoreVolumeSourcePatch? awsElasticBlockStore;
  /// azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  final AzureDiskVolumeSourcePatch? azureDisk;
  /// azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  final AzureFileVolumeSourcePatch? azureFile;
  /// cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  final CephFSVolumeSourcePatch? cephfs;
  /// cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final CinderVolumeSourcePatch? cinder;
  /// configMap represents a configMap that should populate this volume
  final ConfigMapVolumeSourcePatch? configMap;
  /// csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers.
  final CSIVolumeSourcePatch? csi;
  /// downwardAPI represents downward API about the pod that should populate this volume
  final DownwardAPIVolumeSourcePatch? downwardAPI;
  /// emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  final EmptyDirVolumeSourcePatch? emptyDir;
  /// ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
  ///
  /// Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
  /// tracking are needed,
  /// c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
  /// a PersistentVolumeClaim (see EphemeralVolumeSource for more
  /// information on the connection between this volume type
  /// and PersistentVolumeClaim).
  ///
  /// Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
  ///
  /// Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
  ///
  /// A pod can use both types of ephemeral volumes and persistent volumes at the same time.
  final EphemeralVolumeSourcePatch? ephemeral;
  /// fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  final FCVolumeSourcePatch? fc;
  /// flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  final FlexVolumeSourcePatch? flexVolume;
  /// flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  final FlockerVolumeSourcePatch? flocker;
  /// gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  final GCEPersistentDiskVolumeSourcePatch? gcePersistentDisk;
  /// gitRepo represents a git repository at a particular revision. Deprecated: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  final GitRepoVolumeSourcePatch? gitRepo;
  /// glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported.
  final GlusterfsVolumeSourcePatch? glusterfs;
  /// hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  final HostPathVolumeSourcePatch? hostPath;
  /// image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine. The volume is resolved at pod startup depending on which PullPolicy value is provided:
  ///
  /// - Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. - Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. - IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails.
  ///
  /// The volume gets re-resolved if the pod gets deleted and recreated, which means that new remote content will become available on pod recreation. A failure to resolve or pull the image during pod startup will block containers from starting and may add significant latency. Failures will be retried using normal volume backoff and will be reported on the pod reason and message. The types of objects that may be mounted by this volume are defined by the container runtime implementation on a host machine and at minimum must include all valid types supported by the container image field. The OCI object gets mounted in a single directory (spec.containers[*].volumeMounts.mountPath) by merging the manifest layers in the same way as for container images. The volume will be mounted read-only (ro) and non-executable files (noexec). Sub path mounts for containers are not supported (spec.containers[*].volumeMounts.subpath) before 1.33. The field spec.securityContext.fsGroupChangePolicy has no effect on this volume type.
  final ImageVolumeSourcePatch? image;
  /// iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes/#iscsi
  final ISCSIVolumeSourcePatch? iscsi;
  /// name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  final String? name;
  /// nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  final NFSVolumeSourcePatch? nfs;
  /// persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  final PersistentVolumeClaimVolumeSourcePatch? persistentVolumeClaim;
  /// photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  final PhotonPersistentDiskVolumeSourcePatch? photonPersistentDisk;
  /// portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  final PortworxVolumeSourcePatch? portworxVolume;
  /// projected items for all in one resources secrets, configmaps, and downward API
  final ProjectedVolumeSourcePatch? projected;
  /// quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  final QuobyteVolumeSourcePatch? quobyte;
  /// rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported.
  final RBDVolumeSourcePatch? rbd;
  /// scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  final ScaleIOVolumeSourcePatch? scaleIO;
  /// secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  final SecretVolumeSourcePatch? secret;
  /// storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported.
  final StorageOSVolumeSourcePatch? storageos;
  /// vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  final VsphereVirtualDiskVolumeSourcePatch? vsphereVolume;

  /// Creates a new [VolumePatch].
  /// [awsElasticBlockStore] awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
  /// [azureDisk] azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver.
  /// [azureFile] azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver.
  /// [cephfs] cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported.
  /// [cinder] cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  /// [configMap] configMap represents a configMap that should populate this volume
  /// [csi] csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers.
  /// [downwardAPI] downwardAPI represents downward API about the pod that should populate this volume
  /// [emptyDir] emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  /// [ephemeral] ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
  /// [fc] fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  /// [flexVolume] flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead.
  /// [flocker] flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported.
  /// [gcePersistentDisk] gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  /// [gitRepo] gitRepo represents a git repository at a particular revision. Deprecated: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container.
  /// [glusterfs] glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported.
  /// [hostPath] hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
  /// [image] image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine. The volume is resolved at pod startup depending on which PullPolicy value is provided:
  /// [iscsi] iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes/#iscsi
  /// [name] name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  /// [nfs] nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
  /// [persistentVolumeClaim] persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
  /// [photonPersistentDisk] photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported.
  /// [portworxVolume] portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on.
  /// [projected] projected items for all in one resources secrets, configmaps, and downward API
  /// [quobyte] quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported.
  /// [rbd] rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported.
  /// [scaleIO] scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported.
  /// [secret] secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
  /// [storageos] storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported.
  /// [vsphereVolume] vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver.
  VolumePatch({
    this.awsElasticBlockStore,
    this.azureDisk,
    this.azureFile,
    this.cephfs,
    this.cinder,
    this.configMap,
    this.csi,
    this.downwardAPI,
    this.emptyDir,
    this.ephemeral,
    this.fc,
    this.flexVolume,
    this.flocker,
    this.gcePersistentDisk,
    this.gitRepo,
    this.glusterfs,
    this.hostPath,
    this.image,
    this.iscsi,
    this.name,
    this.nfs,
    this.persistentVolumeClaim,
    this.photonPersistentDisk,
    this.portworxVolume,
    this.projected,
    this.quobyte,
    this.rbd,
    this.scaleIO,
    this.secret,
    this.storageos,
    this.vsphereVolume,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsElasticBlockStore': ?awsElasticBlockStore == null ? null : awsElasticBlockStore!.toMap(),
      'azureDisk': ?azureDisk == null ? null : azureDisk!.toMap(),
      'azureFile': ?azureFile == null ? null : azureFile!.toMap(),
      'cephfs': ?cephfs == null ? null : cephfs!.toMap(),
      'cinder': ?cinder == null ? null : cinder!.toMap(),
      'configMap': ?configMap == null ? null : configMap!.toMap(),
      'csi': ?csi == null ? null : csi!.toMap(),
      'downwardAPI': ?downwardAPI == null ? null : downwardAPI!.toMap(),
      'emptyDir': ?emptyDir == null ? null : emptyDir!.toMap(),
      'ephemeral': ?ephemeral == null ? null : ephemeral!.toMap(),
      'fc': ?fc == null ? null : fc!.toMap(),
      'flexVolume': ?flexVolume == null ? null : flexVolume!.toMap(),
      'flocker': ?flocker == null ? null : flocker!.toMap(),
      'gcePersistentDisk': ?gcePersistentDisk == null ? null : gcePersistentDisk!.toMap(),
      'gitRepo': ?gitRepo == null ? null : gitRepo!.toMap(),
      'glusterfs': ?glusterfs == null ? null : glusterfs!.toMap(),
      'hostPath': ?hostPath == null ? null : hostPath!.toMap(),
      'image': ?image == null ? null : image!.toMap(),
      'iscsi': ?iscsi == null ? null : iscsi!.toMap(),
      'name': ?name,
      'nfs': ?nfs == null ? null : nfs!.toMap(),
      'persistentVolumeClaim': ?persistentVolumeClaim == null ? null : persistentVolumeClaim!.toMap(),
      'photonPersistentDisk': ?photonPersistentDisk == null ? null : photonPersistentDisk!.toMap(),
      'portworxVolume': ?portworxVolume == null ? null : portworxVolume!.toMap(),
      'projected': ?projected == null ? null : projected!.toMap(),
      'quobyte': ?quobyte == null ? null : quobyte!.toMap(),
      'rbd': ?rbd == null ? null : rbd!.toMap(),
      'scaleIO': ?scaleIO == null ? null : scaleIO!.toMap(),
      'secret': ?secret == null ? null : secret!.toMap(),
      'storageos': ?storageos == null ? null : storageos!.toMap(),
      'vsphereVolume': ?vsphereVolume == null ? null : vsphereVolume!.toMap(),
    };
  }

  factory VolumePatch.fromMap(Map<String, dynamic> map) {
    return VolumePatch(
      awsElasticBlockStore: map['awsElasticBlockStore'] == null ? null : AWSElasticBlockStoreVolumeSourcePatch.fromMap((map['awsElasticBlockStore'] as Map).cast<String, dynamic>()),
      azureDisk: map['azureDisk'] == null ? null : AzureDiskVolumeSourcePatch.fromMap((map['azureDisk'] as Map).cast<String, dynamic>()),
      azureFile: map['azureFile'] == null ? null : AzureFileVolumeSourcePatch.fromMap((map['azureFile'] as Map).cast<String, dynamic>()),
      cephfs: map['cephfs'] == null ? null : CephFSVolumeSourcePatch.fromMap((map['cephfs'] as Map).cast<String, dynamic>()),
      cinder: map['cinder'] == null ? null : CinderVolumeSourcePatch.fromMap((map['cinder'] as Map).cast<String, dynamic>()),
      configMap: map['configMap'] == null ? null : ConfigMapVolumeSourcePatch.fromMap((map['configMap'] as Map).cast<String, dynamic>()),
      csi: map['csi'] == null ? null : CSIVolumeSourcePatch.fromMap((map['csi'] as Map).cast<String, dynamic>()),
      downwardAPI: map['downwardAPI'] == null ? null : DownwardAPIVolumeSourcePatch.fromMap((map['downwardAPI'] as Map).cast<String, dynamic>()),
      emptyDir: map['emptyDir'] == null ? null : EmptyDirVolumeSourcePatch.fromMap((map['emptyDir'] as Map).cast<String, dynamic>()),
      ephemeral: map['ephemeral'] == null ? null : EphemeralVolumeSourcePatch.fromMap((map['ephemeral'] as Map).cast<String, dynamic>()),
      fc: map['fc'] == null ? null : FCVolumeSourcePatch.fromMap((map['fc'] as Map).cast<String, dynamic>()),
      flexVolume: map['flexVolume'] == null ? null : FlexVolumeSourcePatch.fromMap((map['flexVolume'] as Map).cast<String, dynamic>()),
      flocker: map['flocker'] == null ? null : FlockerVolumeSourcePatch.fromMap((map['flocker'] as Map).cast<String, dynamic>()),
      gcePersistentDisk: map['gcePersistentDisk'] == null ? null : GCEPersistentDiskVolumeSourcePatch.fromMap((map['gcePersistentDisk'] as Map).cast<String, dynamic>()),
      gitRepo: map['gitRepo'] == null ? null : GitRepoVolumeSourcePatch.fromMap((map['gitRepo'] as Map).cast<String, dynamic>()),
      glusterfs: map['glusterfs'] == null ? null : GlusterfsVolumeSourcePatch.fromMap((map['glusterfs'] as Map).cast<String, dynamic>()),
      hostPath: map['hostPath'] == null ? null : HostPathVolumeSourcePatch.fromMap((map['hostPath'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : ImageVolumeSourcePatch.fromMap((map['image'] as Map).cast<String, dynamic>()),
      iscsi: map['iscsi'] == null ? null : ISCSIVolumeSourcePatch.fromMap((map['iscsi'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      nfs: map['nfs'] == null ? null : NFSVolumeSourcePatch.fromMap((map['nfs'] as Map).cast<String, dynamic>()),
      persistentVolumeClaim: map['persistentVolumeClaim'] == null ? null : PersistentVolumeClaimVolumeSourcePatch.fromMap((map['persistentVolumeClaim'] as Map).cast<String, dynamic>()),
      photonPersistentDisk: map['photonPersistentDisk'] == null ? null : PhotonPersistentDiskVolumeSourcePatch.fromMap((map['photonPersistentDisk'] as Map).cast<String, dynamic>()),
      portworxVolume: map['portworxVolume'] == null ? null : PortworxVolumeSourcePatch.fromMap((map['portworxVolume'] as Map).cast<String, dynamic>()),
      projected: map['projected'] == null ? null : ProjectedVolumeSourcePatch.fromMap((map['projected'] as Map).cast<String, dynamic>()),
      quobyte: map['quobyte'] == null ? null : QuobyteVolumeSourcePatch.fromMap((map['quobyte'] as Map).cast<String, dynamic>()),
      rbd: map['rbd'] == null ? null : RBDVolumeSourcePatch.fromMap((map['rbd'] as Map).cast<String, dynamic>()),
      scaleIO: map['scaleIO'] == null ? null : ScaleIOVolumeSourcePatch.fromMap((map['scaleIO'] as Map).cast<String, dynamic>()),
      secret: map['secret'] == null ? null : SecretVolumeSourcePatch.fromMap((map['secret'] as Map).cast<String, dynamic>()),
      storageos: map['storageos'] == null ? null : StorageOSVolumeSourcePatch.fromMap((map['storageos'] as Map).cast<String, dynamic>()),
      vsphereVolume: map['vsphereVolume'] == null ? null : VsphereVirtualDiskVolumeSourcePatch.fromMap((map['vsphereVolume'] as Map).cast<String, dynamic>()),
    );
  }
}

