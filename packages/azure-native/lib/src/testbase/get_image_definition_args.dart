// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_image_definition_args_doc}
/// Arguments for getImageDefinition.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_image_definition_args_doc}
class GetImageDefinitionArgs {
  /// The resource name of the test base image definition.
  final pulumi.Input<String> imageDefinitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetImageDefinitionArgs].
  /// [imageDefinitionName] The resource name of the test base image definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetImageDefinitionArgs({
    required String imageDefinitionName,
    required String resourceGroupName,
    required String testBaseAccountName,
  }) :
      imageDefinitionName = pulumi.Input.asInput<String>(imageDefinitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageDefinitionName': imageDefinitionName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetImageDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetImageDefinitionArgs(
      imageDefinitionName: map['imageDefinitionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
    );
  }
}

