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
    List<String>? accessModes,
    String? allowVolumeExpansion,
    String? dataResilience,
    String? failoverSpeed,
    List<String>? limitations,
    List<String>? mountOptions,
    String? performance,
    double? priority,
    String? provisioner,
    required String resourceUri,
    String? storageClassName,
    required BlobStorageClassTypeProperties typeProperties,
    String? volumeBindingMode,
  }) :
      accessModes = pulumi.Input.asOptionalInput<List<String>>(accessModes),
      allowVolumeExpansion = pulumi.Input.asOptionalInput<String>(allowVolumeExpansion),
      dataResilience = pulumi.Input.asOptionalInput<String>(dataResilience),
      failoverSpeed = pulumi.Input.asOptionalInput<String>(failoverSpeed),
      limitations = pulumi.Input.asOptionalInput<List<String>>(limitations),
      mountOptions = pulumi.Input.asOptionalInput<List<String>>(mountOptions),
      performance = pulumi.Input.asOptionalInput<String>(performance),
      priority = pulumi.Input.asOptionalInput<double>(priority),
      provisioner = pulumi.Input.asOptionalInput<String>(provisioner),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      storageClassName = pulumi.Input.asOptionalInput<String>(storageClassName),
      typeProperties = pulumi.Input.asInput<BlobStorageClassTypeProperties>(typeProperties),
      volumeBindingMode = pulumi.Input.asOptionalInput<String>(volumeBindingMode);

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
      accessModes: map['accessModes'] == null ? null : (map['accessModes'] as List).cast<String>(),
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : map['allowVolumeExpansion'] as String,
      dataResilience: map['dataResilience'] == null ? null : map['dataResilience'] as String,
      failoverSpeed: map['failoverSpeed'] == null ? null : map['failoverSpeed'] as String,
      limitations: map['limitations'] == null ? null : (map['limitations'] as List).cast<String>(),
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as List).cast<String>(),
      performance: map['performance'] == null ? null : map['performance'] as String,
      priority: map['priority'] == null ? null : map['priority'] as double,
      provisioner: map['provisioner'] == null ? null : map['provisioner'] as String,
      resourceUri: map['resourceUri'] as String,
      storageClassName: map['storageClassName'] == null ? null : map['storageClassName'] as String,
      typeProperties: BlobStorageClassTypeProperties.fromMap((map['typeProperties'] as Map).cast<String, dynamic>()),
      volumeBindingMode: map['volumeBindingMode'] == null ? null : map['volumeBindingMode'] as String,
    );
  }
}

