// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_package_args_doc}
/// Arguments for getPackage.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_package_args_doc}
class GetPackageArgs {
  /// The resource name of the Test Base Package.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetPackageArgs].
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetPackageArgs({
    required String packageName,
    required String resourceGroupName,
    required String testBaseAccountName,
  }) :
      packageName = pulumi.Input.asInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetPackageArgs.fromMap(Map<String, dynamic> map) {
    return GetPackageArgs(
      packageName: map['packageName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
    );
  }
}

