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
    String? availabilityZone,
    bool? enableDetails,
    List<String>? ids,
    String? instanceClass,
    String? instanceType,
    String? nameRegex,
    String? outputFile,
    String? status,
    Map<String, String>? tags,
  }) :
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceClass = pulumi.Input.asOptionalInput<String>(instanceClass),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceClass: map['instanceClass'] == null ? null : map['instanceClass'] as String,
      instanceType: map['instanceType'] == null ? null : map['instanceType'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

