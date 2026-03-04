// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbenefits_get_source_args_doc}
/// Arguments for getSource.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_get_source_args_doc}
class GetSourceArgs {
  /// Name of the credit
  final pulumi.Input<String> creditName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the credit source
  final pulumi.Input<String> sourceName;

  /// Creates a new [GetSourceArgs].
  /// [creditName] Name of the credit
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sourceName] Name of the credit source
  GetSourceArgs({
    required this.creditName,
    required this.resourceGroupName,
    required this.sourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creditName': creditName,
      'resourceGroupName': resourceGroupName,
      'sourceName': sourceName,
    };
  }

  factory GetSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs(
      creditName: pulumi.Input.fromValue(map['creditName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
    );
  }
}
