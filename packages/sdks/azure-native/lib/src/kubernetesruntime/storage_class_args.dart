// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_storage_class_type_properties.dart';

/// {@template pulumi_kubernetesruntime_storage_class_args_doc}
/// The set of arguments for StorageClass.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_storage_class_args_doc}
class StorageClassArgs {
  /// The access mode: [ReadWriteOnce, ReadWriteMany] or [ReadWriteOnce]
  final pulumi.Input<List<String>>? accessModes;
  /// Volume can be expanded or not
  final pulumi.Input<String>? allowVolumeExpansion;
  /// Allow single data node failure
  final pulumi.Input<String>? dataResilience;
  /// Failover speed: NA, Slow, Fast
  final pulumi.Input<String>? failoverSpeed;
  /// Limitations of the storage class
  final pulumi.Input<List<String>>? limitations;
  /// Additional mount options
  final pulumi.Input<List<String>>? mountOptions;
  /// Performance tier
  final pulumi.Input<String>? performance;
  /// Selection priority when multiple storage classes meet the criteria. 0: Highest, -1: Never use
  final pulumi.Input<double>? priority;
  /// Provisioner name
  final pulumi.Input<String>? provisioner;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the the storage class
  final pulumi.Input<String>? storageClassName;
  /// Properties of the StorageClass
  final pulumi.Input<BlobStorageClassTypeProperties> typeProperties;
  /// Binding mode of volumes: Immediate, WaitForFirstConsumer
  final pulumi.Input<String>? volumeBindingMode;

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
  StorageClassArgs({
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
      'typeProperties': pulumi.Input.mapInputValue<BlobStorageClassTypeProperties, Map<String, dynamic>>(typeProperties, (value) => value.toMap()),
      'volumeBindingMode': ?volumeBindingMode,
    };
  }

  factory StorageClassArgs.fromMap(Map<String, dynamic> map) {
    return StorageClassArgs(
      accessModes: map['accessModes'] == null ? null : ((map['accessModes']! as List).cast<String>()).input(),
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : (map['allowVolumeExpansion']! as String).input(),
      dataResilience: map['dataResilience'] == null ? null : (map['dataResilience']! as String).input(),
      failoverSpeed: map['failoverSpeed'] == null ? null : (map['failoverSpeed']! as String).input(),
      limitations: map['limitations'] == null ? null : ((map['limitations']! as List).cast<String>()).input(),
      mountOptions: map['mountOptions'] == null ? null : ((map['mountOptions']! as List).cast<String>()).input(),
      performance: map['performance'] == null ? null : (map['performance']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as double).input(),
      provisioner: map['provisioner'] == null ? null : (map['provisioner']! as String).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      storageClassName: map['storageClassName'] == null ? null : (map['storageClassName']! as String).input(),
      typeProperties: (BlobStorageClassTypeProperties.fromMap((map['typeProperties'] as Map).cast<String, dynamic>())).input(),
      volumeBindingMode: map['volumeBindingMode'] == null ? null : (map['volumeBindingMode']! as String).input(),
    );
  }
}

