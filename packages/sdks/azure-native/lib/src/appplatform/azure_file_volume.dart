// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Azure File volume. Azure File shares are mounted as volumes.
class AzureFileVolume {
  /// If set to true, it will create and mount a dedicated directory for every individual app instance.
  final pulumi.Input<bool>? enableSubPath;
  /// These are the mount options for a persistent disk.
  final pulumi.Input<List<String>>? mountOptions;
  /// The mount path of the persistent disk.
  final pulumi.Input<String> mountPath;
  /// Indicates whether the persistent disk is a readOnly one.
  final pulumi.Input<bool>? readOnly;
  /// The share name of the Azure File share.
  final pulumi.Input<String>? shareName;
  /// The type of the underlying resource to mount as a persistent disk.
  /// Expected value is 'AzureFileVolume'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureFileVolume].
  /// [enableSubPath] If set to true, it will create and mount a dedicated directory for every individual app instance.
  /// [mountOptions] These are the mount options for a persistent disk.
  /// [mountPath] The mount path of the persistent disk.
  /// [readOnly] Indicates whether the persistent disk is a readOnly one.
  /// [shareName] The share name of the Azure File share.
  /// [type] The type of the underlying resource to mount as a persistent disk.
  AzureFileVolume({
    this.enableSubPath,
    this.mountOptions,
    required this.mountPath,
    this.readOnly,
    this.shareName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableSubPath': ?enableSubPath,
      'mountOptions': ?mountOptions,
      'mountPath': mountPath,
      'readOnly': ?readOnly,
      'shareName': ?shareName,
      'type': type,
    };
  }

  factory AzureFileVolume.fromMap(Map<String, dynamic> map) {
    return AzureFileVolume(
      enableSubPath: map['enableSubPath'] == null ? null : (map['enableSubPath'] as bool).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions'] as List).cast<String>()).input(),
      mountPath: (map['mountPath'] as String).input(),
      readOnly: map['readOnly'] == null ? null : (map['readOnly'] as bool).input(),
      shareName: map['shareName'] == null ? null : (map['shareName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

