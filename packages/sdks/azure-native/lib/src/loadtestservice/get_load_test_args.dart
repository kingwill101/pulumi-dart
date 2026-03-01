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
    required pulumi.Output<String> loadTestName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      loadTestName = pulumi.Input.asInput<String>(loadTestName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadTestName': loadTestName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLoadTestArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadTestArgs(
      loadTestName: pulumi.Output.create<String>(map['loadTestName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

