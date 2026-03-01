// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confidentialledger_get_managed_ccfargs_doc}
/// Arguments for getManagedCCF.
/// {@endtemplate}
/// {@macro pulumi_confidentialledger_get_managed_ccfargs_doc}
class GetManagedCCFArgs {
  /// Name of the Managed CCF
  final pulumi.Input<String> appName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedCCFArgs].
  /// [appName] Name of the Managed CCF
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetManagedCCFArgs({
    required pulumi.Output<String> appName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedCCFArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedCCFArgs(
      appName: pulumi.Output.create<String>(map['appName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

