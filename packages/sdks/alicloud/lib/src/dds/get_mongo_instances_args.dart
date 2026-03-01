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
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceClass,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
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
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceClass: map['instanceClass'] == null ? null : pulumi.Output.create<String>(map['instanceClass'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

