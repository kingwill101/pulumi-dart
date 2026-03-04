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
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceClass: (() {
        final guardedValue = map['instanceClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
