// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_mongodb_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// The zone ID.
  final pulumi.Input<String>? availabilityZone;
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Instance IDs.
  final pulumi.Input<List<String>>? ids;
  /// The instance type.
  final pulumi.Input<String>? instanceClass;
  /// The instance architecture. Default value: `replicate`. Valid values: `replicate`, `sharding`.
  final pulumi.Input<String>? instanceType;
  /// A regex string to filter results by Instance name.
  final pulumi.Input<String>? nameRegex;
  /// The name of file that can save the collection of instances after running `pulumi preview`.
  final pulumi.Input<String>? outputFile;
  /// The instance status.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInstancesArgs].
  /// [availabilityZone] The zone ID.
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Instance IDs.
  /// [instanceClass] The instance type.
  /// [instanceType] The instance architecture. Default value: `replicate`. Valid values: `replicate`, `sharding`.
  /// [nameRegex] A regex string to filter results by Instance name.
  /// [outputFile] The name of file that can save the collection of instances after running `pulumi preview`.
  /// [status] The instance status.
  /// [tags] A mapping of tags to assign to the resource.
  GetInstancesArgs({
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

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
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

