// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managedredis_get_get_args_doc}
/// Arguments for get.
/// {@endtemplate}
/// {@macro pulumi_managedredis_get_get_args_doc}
class GetArgs {
  /// The name of the Managed Redis instance.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Managed Redis instance exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetArgs].
  /// [name] The name of the Managed Redis instance.
  /// [resourceGroupName] The name of the Resource Group where the Managed Redis instance exists.
  GetArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetArgs.fromMap(Map<String, dynamic> map) {
    return GetArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

