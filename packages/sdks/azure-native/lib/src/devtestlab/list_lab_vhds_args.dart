// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_list_lab_vhds_args_doc}
/// Arguments for listLabVhds.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_list_lab_vhds_args_doc}
class ListLabVhdsArgs {
  /// The name of the lab.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListLabVhdsArgs].
  /// [name] The name of the lab.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListLabVhdsArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListLabVhdsArgs.fromMap(Map<String, dynamic> map) {
    return ListLabVhdsArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

