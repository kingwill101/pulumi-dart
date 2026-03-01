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
    required pulumi.Output<String> creditName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceName,
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
      creditName: pulumi.Output.create<String>(map['creditName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceName: pulumi.Output.create<String>(map['sourceName'] as String),
    );
  }
}

