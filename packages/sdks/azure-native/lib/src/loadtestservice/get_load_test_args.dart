// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadtestservice_get_load_test_args_doc}
/// Arguments for getLoadTest.
/// {@endtemplate}
/// {@macro pulumi_loadtestservice_get_load_test_args_doc}
class GetLoadTestArgs {
  /// Load Test name
  final pulumi.Input<String> loadTestName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLoadTestArgs].
  /// [loadTestName] Load Test name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLoadTestArgs({
    required this.loadTestName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadTestName': loadTestName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLoadTestArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadTestArgs(
      loadTestName: pulumi.Input.fromValue(map['loadTestName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
