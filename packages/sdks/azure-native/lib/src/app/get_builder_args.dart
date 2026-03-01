// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_builder_args_doc}
/// Arguments for getBuilder.
/// {@endtemplate}
/// {@macro pulumi_app_get_builder_args_doc}
class GetBuilderArgs {
  /// The name of the builder.
  final pulumi.Input<String> builderName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBuilderArgs].
  /// [builderName] The name of the builder.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBuilderArgs({
    required pulumi.Output<String> builderName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      builderName = pulumi.Input.asInput<String>(builderName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderName': builderName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBuilderArgs.fromMap(Map<String, dynamic> map) {
    return GetBuilderArgs(
      builderName: pulumi.Output.create<String>(map['builderName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

