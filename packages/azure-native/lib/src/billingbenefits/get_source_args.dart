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
    required String creditName,
    required String resourceGroupName,
    required String sourceName,
  }) :
      creditName = pulumi.Input.asInput<String>(creditName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceName = pulumi.Input.asInput<String>(sourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creditName': creditName,
      'resourceGroupName': resourceGroupName,
      'sourceName': sourceName,
    };
  }

  factory GetSourceArgs.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs(
      creditName: map['creditName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sourceName: map['sourceName'] as String,
    );
  }
}

