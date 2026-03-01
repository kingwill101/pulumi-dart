// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_favorite_process_args_doc}
/// Arguments for getFavoriteProcess.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_favorite_process_args_doc}
class GetFavoriteProcessArgs {
  /// The resource name of a favorite process in a package. If the process name contains characters that are not allowed in Azure Resource Name, we use 'actualProcessName' in request body to submit the name.
  final pulumi.Input<String> favoriteProcessResourceName;
  /// The resource name of the Test Base Package.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetFavoriteProcessArgs].
  /// [favoriteProcessResourceName] The resource name of a favorite process in a package. If the process name contains characters that are not allowed in Azure Resource Name, we use 'actualProcessName' in request body to submit the name.
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetFavoriteProcessArgs({
    required String favoriteProcessResourceName,
    required String packageName,
    required String resourceGroupName,
    required String testBaseAccountName,
  }) :
      favoriteProcessResourceName = pulumi.Input.asInput<String>(favoriteProcessResourceName),
      packageName = pulumi.Input.asInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'favoriteProcessResourceName': favoriteProcessResourceName,
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetFavoriteProcessArgs.fromMap(Map<String, dynamic> map) {
    return GetFavoriteProcessArgs(
      favoriteProcessResourceName: map['favoriteProcessResourceName'] as String,
      packageName: map['packageName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
    );
  }
}

