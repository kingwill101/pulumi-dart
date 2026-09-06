// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_storage_class_args_doc}
/// The set of arguments for StorageClass.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_storage_class_args_doc}
class StorageClassArgs {
  /// The access mode: [ReadWriteOnce, ReadWriteMany] or [ReadWriteOnce]
  final pulumi.Input<List<dynamic>?>? accessModes;
  /// Volume can be expanded or not
  final pulumi.Input<dynamic>? allowVolumeExpansion;
  /// Allow single data node failure
  final pulumi.Input<dynamic>? dataResilience;
  /// Failover speed: NA, Slow, Fast
  final pulumi.Input<dynamic>? failoverSpeed;
  /// Limitations of the storage class
  final pulumi.Input<List<String>?>? limitations;
  /// Additional mount options
  final pulumi.Input<List<String>?>? mountOptions;
  /// Performance tier
  final pulumi.Input<dynamic>? performance;
  /// Selection priority when multiple storage classes meet the criteria. 0: Highest, -1: Never use
  final pulumi.Input<double?>? priority;
  /// Provisioner name
  final pulumi.Input<String?>? provisioner;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the the storage class
  final pulumi.Input<String?>? storageClassName;
  /// Properties of the StorageClass
  final pulumi.Input<dynamic> typeProperties;
  /// Binding mode of volumes: Immediate, WaitForFirstConsumer
  final pulumi.Input<dynamic>? volumeBindingMode;

  /// Creates a new [StorageClassArgs].
  /// [accessModes] The access mode: [ReadWriteOnce, ReadWriteMany] or [ReadWriteOnce]
  /// [allowVolumeExpansion] Volume can be expanded or not
  /// [dataResilience] Allow single data node failure
  /// [failoverSpeed] Failover speed: NA, Slow, Fast
  /// [limitations] Limitations of the storage class
  /// [mountOptions] Additional mount options
  /// [performance] Performance tier
  /// [priority] Selection priority when multiple storage classes meet the criteria. 0: Highest, -1: Never use
  /// [provisioner] Provisioner name
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [storageClassName] The name of the the storage class
  /// [typeProperties] Properties of the StorageClass
  /// [volumeBindingMode] Binding mode of volumes: Immediate, WaitForFirstConsumer
  const StorageClassArgs({
    this.accessModes,
    this.allowVolumeExpansion,
    this.dataResilience,
    this.failoverSpeed,
    this.limitations,
    this.mountOptions,
    this.performance,
    this.priority,
    this.provisioner,
    required this.resourceUri,
    this.storageClassName,
    required this.typeProperties,
    this.volumeBindingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessModes': ?accessModes,
      'allowVolumeExpansion': ?allowVolumeExpansion,
      'dataResilience': ?dataResilience,
      'failoverSpeed': ?failoverSpeed,
      'limitations': ?limitations,
      'mountOptions': ?mountOptions,
      'performance': ?performance,
      'priority': ?priority,
      'provisioner': ?provisioner,
      'resourceUri': resourceUri,
      'storageClassName': ?storageClassName,
      'typeProperties': typeProperties,
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory StorageClassArgs.fromMap(Map<String, dynamic> map) {
    return StorageClassArgs(
      accessModes: (() { final guardedValue = map['accessModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      allowVolumeExpansion: (() { final guardedValue = map['allowVolumeExpansion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dataResilience: (() { final guardedValue = map['dataResilience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      failoverSpeed: (() { final guardedValue = map['failoverSpeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      limitations: (() { final guardedValue = map['limitations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mountOptions: (() { final guardedValue = map['mountOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      performance: (() { final guardedValue = map['performance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      provisioner: (() { final guardedValue = map['provisioner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      storageClassName: (() { final guardedValue = map['storageClassName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      typeProperties: pulumi.Input.fromValue(map['typeProperties']),
      volumeBindingMode: (() { final guardedValue = map['volumeBindingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
