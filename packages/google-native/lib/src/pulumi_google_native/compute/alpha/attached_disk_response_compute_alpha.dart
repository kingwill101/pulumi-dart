// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attached_disk_initialize_params_response.dart';
import 'customer_encryption_key_response.dart';
import 'guest_os_feature_response.dart';
import 'initial_state_config_response.dart';

/// An instance-attached disk resource.
class AttachedDiskResponseComputeAlpha {
  /// The architecture of the attached disk. Valid values are ARM64 or X86_64.
  final String architecture;

  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final bool autoDelete;

  /// Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final bool boot;

  /// Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  final String deviceName;

  /// Encrypts or decrypts a disk using a customer-supplied encryption key. If you are creating a new disk, this field encrypts the new disk using an encryption key that you provide. If you are attaching an existing disk that is already encrypted, this field decrypts the disk using the customer-supplied encryption key. If you encrypt a disk using a customer-supplied key, you must provide the same key again when you attempt to use this resource at a later time. For example, you must provide the key when you create a snapshot or an image from the disk or when you attach the disk to a virtual machine instance. If you do not provide an encryption key, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later. Instance templates do not store customer-supplied encryption keys, so you cannot use your own keys to encrypt disks in a managed instance group.
  final CustomerEncryptionKeyResponse diskEncryptionKey;

  /// The size of the disk in GB.
  final String diskSizeGb;

  /// [Input Only] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error.
  final bool forceAttach;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final List<GuestOsFeatureResponse> guestOsFeatures;

  /// A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  final int index;

  /// [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  final AttachedDiskInitializeParamsResponse initializeParams;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
  final String interface;

  /// Type of the resource. Always compute#attachedDisk for attached disks.
  final String kind;

  /// Any valid publicly visible licenses.
  final List<String> licenses;

  /// Whether to indicate the attached disk is locked. The locked disk is not allowed to be detached from the instance, or to be used as the source of the snapshot creation, and the image creation. The instance with at least one locked attached disk is not allow to be used as source of machine image creation, instant snapshot creation, and not allowed to be deleted with --keep-disk parameter set to true for locked disks.
  final bool locked;

  /// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
  final String mode;

  /// For LocalSSD disks on VM Instances in STOPPED or SUSPENDED state, this field is set to PRESERVED if the LocalSSD data has been saved to a persistent location by customer request. (see the discard_local_ssd option on Stop/Suspend). Read-only in the api.
  final String savedState;

  /// shielded vm initial state stored on disk
  final InitialStateConfigResponse shieldedInstanceInitialState;

  /// Specifies a valid partial or full URL to an existing Persistent Disk resource. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD. If desired, you can also attach existing non-root persistent disks using this property. This field is only applicable for persistent disks. Note that for InstanceTemplate, specify the disk name for zonal disk, and the URL for regional disk.
  final String source;

  /// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
  final String type;

  /// A list of user provided licenses. It represents a list of URLs to the license resource. Unlike regular licenses, user provided licenses can be modified after the disk is created.
  final List<String> userLicenses;

  AttachedDiskResponseComputeAlpha({
    required this.architecture,
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.diskEncryptionKey,
    required this.diskSizeGb,
    required this.forceAttach,
    required this.guestOsFeatures,
    required this.index,
    required this.initializeParams,
    required this.interface,
    required this.kind,
    required this.licenses,
    required this.locked,
    required this.mode,
    required this.savedState,
    required this.shieldedInstanceInitialState,
    required this.source,
    required this.type,
    required this.userLicenses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['architecture'] = architecture;
    map['autoDelete'] = autoDelete;
    map['boot'] = boot;
    map['deviceName'] = deviceName;
    map['diskEncryptionKey'] = diskEncryptionKey.toMap();
    map['diskSizeGb'] = diskSizeGb;
    map['forceAttach'] = forceAttach;
    map['guestOsFeatures'] =
        pulumi.Input.encodeList<GuestOsFeatureResponse, Map<String, dynamic>>(
            guestOsFeatures, (value) => value.toMap());
    map['index'] = index;
    map['initializeParams'] = initializeParams.toMap();
    map['interface'] = interface;
    map['kind'] = kind;
    map['licenses'] = licenses;
    map['locked'] = locked;
    map['mode'] = mode;
    map['savedState'] = savedState;
    map['shieldedInstanceInitialState'] = shieldedInstanceInitialState.toMap();
    map['source'] = source;
    map['type'] = type;
    map['userLicenses'] = userLicenses;
    return map;
  }

  factory AttachedDiskResponseComputeAlpha.fromMap(Map<String, dynamic> map) {
    return AttachedDiskResponseComputeAlpha(
      architecture: map['architecture'] as String,
      autoDelete: map['autoDelete'] as bool,
      boot: map['boot'] as bool,
      deviceName: map['deviceName'] as String,
      diskEncryptionKey: CustomerEncryptionKeyResponse.fromMap(
          (map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      diskSizeGb: map['diskSizeGb'] as String,
      forceAttach: map['forceAttach'] as bool,
      guestOsFeatures: pulumi.Input.decodeList<GuestOsFeatureResponse>(
          map['guestOsFeatures'],
          (value) => GuestOsFeatureResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      index: map['index'] as int,
      initializeParams: AttachedDiskInitializeParamsResponse.fromMap(
          (map['initializeParams'] as Map).cast<String, dynamic>()),
      interface: map['interface'] as String,
      kind: map['kind'] as String,
      licenses: (map['licenses'] as List).cast<String>(),
      locked: map['locked'] as bool,
      mode: map['mode'] as String,
      savedState: map['savedState'] as String,
      shieldedInstanceInitialState: InitialStateConfigResponse.fromMap(
          (map['shieldedInstanceInitialState'] as Map).cast<String, dynamic>()),
      source: map['source'] as String,
      type: map['type'] as String,
      userLicenses: (map['userLicenses'] as List).cast<String>(),
    );
  }
}
