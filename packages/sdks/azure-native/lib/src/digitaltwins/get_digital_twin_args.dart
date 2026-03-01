// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_digitaltwins_get_digital_twin_args_doc}
/// Arguments for getDigitalTwin.
/// {@endtemplate}
/// {@macro pulumi_digitaltwins_get_digital_twin_args_doc}
class GetDigitalTwinArgs {
  /// The name of the resource group that contains the DigitalTwinsInstance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the DigitalTwinsInstance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetDigitalTwinArgs].
  /// [resourceGroupName] The name of the resource group that contains the DigitalTwinsInstance.
  /// [resourceName] The name of the DigitalTwinsInstance.
  GetDigitalTwinArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetDigitalTwinArgs.fromMap(Map<String, dynamic> map) {
    return GetDigitalTwinArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

