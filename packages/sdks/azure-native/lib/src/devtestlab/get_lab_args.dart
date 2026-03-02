// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_lab_args_doc}
/// Arguments for getLab.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_lab_args_doc}
class GetLabArgs {
  /// Specify the $expand query. Example: 'properties($select=defaultStorageAccount)'
  final pulumi.Input<String>? expand;
  /// The name of the lab.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLabArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=defaultStorageAccount)'
  /// [name] The name of the lab.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLabArgs({
    this.expand,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLabArgs.fromMap(Map<String, dynamic> map) {
    return GetLabArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

