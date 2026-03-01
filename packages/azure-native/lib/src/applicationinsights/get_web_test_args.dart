// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_web_test_args_doc}
/// Arguments for getWebTest.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_web_test_args_doc}
class GetWebTestArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights WebTest resource.
  final pulumi.Input<String> webTestName;

  /// Creates a new [GetWebTestArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [webTestName] The name of the Application Insights WebTest resource.
  GetWebTestArgs({
    required String resourceGroupName,
    required String webTestName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      webTestName = pulumi.Input.asInput<String>(webTestName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'webTestName': webTestName,
    };
  }

  factory GetWebTestArgs.fromMap(Map<String, dynamic> map) {
    return GetWebTestArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      webTestName: map['webTestName'] as String,
    );
  }
}

