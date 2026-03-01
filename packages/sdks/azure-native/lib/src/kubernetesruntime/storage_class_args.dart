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
    pulumi.Output<List<String>>? accessModes,
    pulumi.Output<String>? allowVolumeExpansion,
    pulumi.Output<String>? dataResilience,
    pulumi.Output<String>? failoverSpeed,
    pulumi.Output<List<String>>? limitations,
    pulumi.Output<List<String>>? mountOptions,
    pulumi.Output<String>? performance,
    pulumi.Output<double>? priority,
    pulumi.Output<String>? provisioner,
    required pulumi.Output<String> resourceUri,
    pulumi.Output<String>? storageClassName,
    required pulumi.Output<BlobStorageClassTypeProperties> typeProperties,
    pulumi.Output<String>? volumeBindingMode,
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
      accessModes: map['accessModes'] == null ? null : pulumi.Output.create<List<String>>((map['accessModes'] as List).cast<String>()),
      allowVolumeExpansion: map['allowVolumeExpansion'] == null ? null : pulumi.Output.create<String>(map['allowVolumeExpansion'] as String),
      dataResilience: map['dataResilience'] == null ? null : pulumi.Output.create<String>(map['dataResilience'] as String),
      failoverSpeed: map['failoverSpeed'] == null ? null : pulumi.Output.create<String>(map['failoverSpeed'] as String),
      limitations: map['limitations'] == null ? null : pulumi.Output.create<List<String>>((map['limitations'] as List).cast<String>()),
      mountOptions: map['mountOptions'] == null ? null : pulumi.Output.create<List<String>>((map['mountOptions'] as List).cast<String>()),
      performance: map['performance'] == null ? null : pulumi.Output.create<String>(map['performance'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<double>(map['priority'] as double),
      provisioner: map['provisioner'] == null ? null : pulumi.Output.create<String>(map['provisioner'] as String),
      resourceUri: pulumi.Output.create<String>(map['resourceUri'] as String),
      storageClassName: map['storageClassName'] == null ? null : pulumi.Output.create<String>(map['storageClassName'] as String),
      typeProperties: pulumi.Output.create<BlobStorageClassTypeProperties>(BlobStorageClassTypeProperties.fromMap((map['typeProperties'] as Map).cast<String, dynamic>())),
      volumeBindingMode: map['volumeBindingMode'] == null ? null : pulumi.Output.create<String>(map['volumeBindingMode'] as String),
    );
  }
}

