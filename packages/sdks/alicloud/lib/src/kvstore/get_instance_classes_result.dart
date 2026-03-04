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
      'classes':
          pulumi.Input.encodeList<
            GetInstanceClassesClass,
            Map<String, dynamic>
          >(classes, (value) => value.toMap()),
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
      architecture: (() {
        final guardedValue = map['architecture'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      classes: pulumi.Input.decodeList<GetInstanceClassesClass>(
        map['classes']!,
        (value) => GetInstanceClassesClass.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      editionType: (() {
        final guardedValue = map['editionType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      engineVersion: (() {
        final guardedValue = map['engineVersion'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      instanceChargeType: (() {
        final guardedValue = map['instanceChargeType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      instanceClasses: (map['instanceClasses'] as List).cast<String>(),
      nodeType: (() {
        final guardedValue = map['nodeType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      packageType: (() {
        final guardedValue = map['packageType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      performanceType: (() {
        final guardedValue = map['performanceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      productType: (() {
        final guardedValue = map['productType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      seriesType: (() {
        final guardedValue = map['seriesType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      shardNumber: (() {
        final guardedValue = map['shardNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      sortedBy: (() {
        final guardedValue = map['sortedBy'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      zoneId: map['zoneId'] as String,
    );
  }
}
