// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_draft_package_path_args_doc}
/// Arguments for getDraftPackagePath.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_draft_package_path_args_doc}
class GetDraftPackagePathArgs {
  /// The resource name of the Test Base Draft Package.
  final pulumi.Input<String> draftPackageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetDraftPackagePathArgs].
  /// [draftPackageName] The resource name of the Test Base Draft Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetDraftPackagePathArgs({
    required String draftPackageName,
    required String resourceGroupName,
    required String testBaseAccountName,
  }) :
      draftPackageName = pulumi.Input.asInput<String>(draftPackageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'draftPackageName': draftPackageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetDraftPackagePathArgs.fromMap(Map<String, dynamic> map) {
    return GetDraftPackagePathArgs(
      draftPackageName: map['draftPackageName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
    );
  }
}

