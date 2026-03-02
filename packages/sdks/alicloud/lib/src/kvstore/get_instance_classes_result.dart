// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_classes_class.dart';

/// Result data returned by getInstanceClasses.
class GetInstanceClassesResult {
  final String? architecture;
  /// A list of KVStore available instance classes when the `sorted_by` is "Price". include:
  final List<GetInstanceClassesClass> classes;
  final String? editionType;
  final String? engine;
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? instanceChargeType;
  /// A list of KVStore available instance classes.
  final List<String> instanceClasses;
  final String? nodeType;
  final String? outputFile;
  final String? packageType;
  final String? performanceType;
  final String? productType;
  final String? seriesType;
  final int? shardNumber;
  final String? sortedBy;
  final String? storageType;
  final String zoneId;

  /// Creates a new [GetInstanceClassesResult].
  /// [architecture] Optional.
  /// [classes] A list of KVStore available instance classes when the `sorted_by` is "Price". include:
  /// [editionType] Optional.
  /// [engine] Optional.
  /// [engineVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceChargeType] Optional.
  /// [instanceClasses] A list of KVStore available instance classes.
  /// [nodeType] Optional.
  /// [outputFile] Optional.
  /// [packageType] Optional.
  /// [performanceType] Optional.
  /// [productType] Optional.
  /// [seriesType] Optional.
  /// [shardNumber] Optional.
  /// [sortedBy] Optional.
  /// [storageType] Optional.
  /// [zoneId] Required.
  GetInstanceClassesResult({
    this.architecture,
    required this.classes,
    this.editionType,
    this.engine,
    this.engineVersion,
    required this.id,
    this.instanceChargeType,
    required this.instanceClasses,
    this.nodeType,
    this.outputFile,
    this.packageType,
    this.performanceType,
    this.productType,
    this.seriesType,
    this.shardNumber,
    this.sortedBy,
    this.storageType,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'classes': pulumi.Input.encodeList<GetInstanceClassesClass, Map<String, dynamic>>(classes, (value) => value.toMap()),
      'editionType': ?editionType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': id,
      'instanceChargeType': ?instanceChargeType,
      'instanceClasses': instanceClasses,
      'nodeType': ?nodeType,
      'outputFile': ?outputFile,
      'packageType': ?packageType,
      'performanceType': ?performanceType,
      'productType': ?productType,
      'seriesType': ?seriesType,
      'shardNumber': ?shardNumber,
      'sortedBy': ?sortedBy,
      'storageType': ?storageType,
      'zoneId': zoneId,
    };
  }

  factory GetInstanceClassesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesResult(
      architecture: map['architecture'] == null ? null : map['architecture']! as String,
      classes: pulumi.Input.decodeList<GetInstanceClassesClass>(map['classes'], (value) => GetInstanceClassesClass.fromMap((value as Map).cast<String, dynamic>())),
      editionType: map['editionType'] == null ? null : map['editionType']! as String,
      engine: map['engine'] == null ? null : map['engine']! as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion']! as String,
      id: map['id'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType']! as String,
      instanceClasses: (map['instanceClasses'] as List).cast<String>(),
      nodeType: map['nodeType'] == null ? null : map['nodeType']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      packageType: map['packageType'] == null ? null : map['packageType']! as String,
      performanceType: map['performanceType'] == null ? null : map['performanceType']! as String,
      productType: map['productType'] == null ? null : map['productType']! as String,
      seriesType: map['seriesType'] == null ? null : map['seriesType']! as String,
      shardNumber: map['shardNumber'] == null ? null : map['shardNumber']! as int,
      sortedBy: map['sortedBy'] == null ? null : map['sortedBy']! as String,
      storageType: map['storageType'] == null ? null : map['storageType']! as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

