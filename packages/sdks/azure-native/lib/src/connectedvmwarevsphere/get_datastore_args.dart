// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_datastore_args_doc}
/// Arguments for getDatastore.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_datastore_args_doc}
class GetDatastoreArgs {
  /// Name of the datastore.
  final pulumi.Input<String> datastoreName;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDatastoreArgs].
  /// [datastoreName] Name of the datastore.
  /// [resourceGroupName] The Resource Group Name.
  GetDatastoreArgs({
    required pulumi.Output<String> datastoreName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      datastoreName = pulumi.Input.asInput<String>(datastoreName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreName': datastoreName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDatastoreArgs(
      datastoreName: pulumi.Output.create<String>(map['datastoreName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

