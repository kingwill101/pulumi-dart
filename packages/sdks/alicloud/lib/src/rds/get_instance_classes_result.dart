// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_classes_instance_class.dart';

/// Result data returned by getInstanceClasses.
class GetInstanceClassesResult {
  final String? category;
  final String? commodityCode;
  final String? dbInstanceClass;
  final String? dbInstanceId;
  final String? dbInstanceStorageType;
  final String? engine;
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Available in 1.60.0+) A list of Rds instance class codes.
  final List<String> ids;
  final String? instanceChargeType;
  /// A list of Rds available resource. Each element contains the following attributes:
  final List<GetInstanceClassesInstanceClass> instanceClasses;
  final bool? multiZone;
  final String? outputFile;
  final String? sortedBy;
  final String? storageType;
  final String? zoneId;

  /// Creates a new [GetInstanceClassesResult].
  /// [category] Optional.
  /// [commodityCode] Optional.
  /// [dbInstanceClass] Optional.
  /// [dbInstanceId] Optional.
  /// [dbInstanceStorageType] Optional.
  /// [engine] Optional.
  /// [engineVersion] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Available in 1.60.0+) A list of Rds instance class codes.
  /// [instanceChargeType] Optional.
  /// [instanceClasses] A list of Rds available resource. Each element contains the following attributes:
  /// [multiZone] Optional.
  /// [outputFile] Optional.
  /// [sortedBy] Optional.
  /// [storageType] Optional.
  /// [zoneId] Optional.
  GetInstanceClassesResult({
    this.category,
    this.commodityCode,
    this.dbInstanceClass,
    this.dbInstanceId,
    this.dbInstanceStorageType,
    this.engine,
    this.engineVersion,
    required this.id,
    required this.ids,
    this.instanceChargeType,
    required this.instanceClasses,
    this.multiZone,
    this.outputFile,
    this.sortedBy,
    this.storageType,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'commodityCode': ?commodityCode,
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceId': ?dbInstanceId,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': id,
      'ids': ids,
      'instanceChargeType': ?instanceChargeType,
      'instanceClasses': pulumi.Input.encodeList<GetInstanceClassesInstanceClass, Map<String, dynamic>>(instanceClasses, (value) => value.toMap()),
      'multiZone': ?multiZone,
      'outputFile': ?outputFile,
      'sortedBy': ?sortedBy,
      'storageType': ?storageType,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceClassesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesResult(
      category: map['category'] == null ? null : map['category']! as String,
      commodityCode: map['commodityCode'] == null ? null : map['commodityCode']! as String,
      dbInstanceClass: map['dbInstanceClass'] == null ? null : map['dbInstanceClass']! as String,
      dbInstanceId: map['dbInstanceId'] == null ? null : map['dbInstanceId']! as String,
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : map['dbInstanceStorageType']! as String,
      engine: map['engine'] == null ? null : map['engine']! as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType']! as String,
      instanceClasses: pulumi.Input.decodeList<GetInstanceClassesInstanceClass>(map['instanceClasses'], (value) => GetInstanceClassesInstanceClass.fromMap((value as Map).cast<String, dynamic>())),
      multiZone: map['multiZone'] == null ? null : map['multiZone']! as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      sortedBy: map['sortedBy'] == null ? null : map['sortedBy']! as String,
      storageType: map['storageType'] == null ? null : map['storageType']! as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

