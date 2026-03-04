// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbase_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_hbase_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// Instance availability zone.
  final pulumi.Input<String>? availabilityZone;

  /// The ids list of HBase instances
  final pulumi.Input<List<String>>? ids;

  /// A regex string to apply to the instance name.
  final pulumi.Input<String>? nameRegex;

  /// The name of file that can save the collection of instances after running `pulumi preview`.
  final pulumi.Input<String>? outputFile;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetInstancesArgs].
  /// [availabilityZone] Instance availability zone.
  /// [ids] The ids list of HBase instances
  /// [nameRegex] A regex string to apply to the instance name.
  /// [outputFile] The name of file that can save the collection of instances after running `pulumi preview`.
  /// [tags] A mapping of tags to assign to the resource.
  GetInstancesArgs({
    this.availabilityZone,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
