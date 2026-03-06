// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Azure File volume. Azure File shares are mounted as volumes.
class AzureFileVolumeResponse {
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

  /// Creates a new [AzureFileVolumeResponse].
  /// [enableSubPath] If set to true, it will create and mount a dedicated directory for every individual app instance.
  /// [mountOptions] These are the mount options for a persistent disk.
  /// [mountPath] The mount path of the persistent disk.
  /// [readOnly] Indicates whether the persistent disk is a readOnly one.
  /// [shareName] The share name of the Azure File share.
  /// [type] The type of the underlying resource to mount as a persistent disk.
  const AzureFileVolumeResponse({
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

  factory AzureFileVolumeResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileVolumeResponse(
      enableSubPath: (() { final guardedValue = map['enableSubPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      readOnly: (() { final guardedValue = map['readOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shareName: (() { final guardedValue = map['shareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

