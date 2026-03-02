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
    required this.appName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedCCFArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedCCFArgs(
      appName: (map['appName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

