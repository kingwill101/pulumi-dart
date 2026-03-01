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

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
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

