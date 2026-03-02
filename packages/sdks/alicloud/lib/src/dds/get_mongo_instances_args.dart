// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dds_get_mongo_instances_get_mongo_instances_args_doc}
/// Arguments for getMongoInstances.
/// {@endtemplate}
/// {@macro pulumi_dds_get_mongo_instances_get_mongo_instances_args_doc}
class GetMongoInstancesArgs {
  final pulumi.Input<String>? availabilityZone;
  final pulumi.Input<bool>? enableDetails;
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? instanceClass;
  final pulumi.Input<String>? instanceType;
  final pulumi.Input<String>? nameRegex;
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetMongoInstancesArgs].
  /// [availabilityZone] Optional.
  /// [enableDetails] Optional.
  /// [ids] Optional.
  /// [instanceClass] Optional.
  /// [instanceType] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  GetMongoInstancesArgs({
    this.availabilityZone,
    this.enableDetails,
    this.ids,
    this.instanceClass,
    this.instanceType,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceClass': ?instanceClass,
      'instanceType': ?instanceType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetMongoInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoInstancesArgs(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceClass: map['instanceClass'] == null ? null : (map['instanceClass'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

