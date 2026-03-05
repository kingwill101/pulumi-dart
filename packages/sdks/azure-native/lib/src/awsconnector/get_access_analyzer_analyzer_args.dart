// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_access_analyzer_analyzer_args_doc}
/// Arguments for getAccessAnalyzerAnalyzer.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_access_analyzer_analyzer_args_doc}
class GetAccessAnalyzerAnalyzerArgs {
  /// Name of AccessAnalyzerAnalyzer
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessAnalyzerAnalyzerArgs].
  /// [name] Name of AccessAnalyzerAnalyzer
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAccessAnalyzerAnalyzerArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessAnalyzerAnalyzerArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessAnalyzerAnalyzerArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

