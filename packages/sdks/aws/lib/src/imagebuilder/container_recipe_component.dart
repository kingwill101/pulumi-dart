// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_recipe_component_parameter.dart';

class ContainerRecipeComponent {
  /// Amazon Resource Name (ARN) of the Image Builder Component to associate.
  final pulumi.Input<String> componentArn;
  /// Configuration block(s) for parameters to configure the component. Detailed below.
  final pulumi.Input<List<ContainerRecipeComponentParameter>>? parameters;

  /// Creates a new [ContainerRecipeComponent].
  /// [componentArn] Amazon Resource Name (ARN) of the Image Builder Component to associate.
  /// [parameters] Configuration block(s) for parameters to configure the component. Detailed below.
  const ContainerRecipeComponent({
    required this.componentArn,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': componentArn,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ContainerRecipeComponentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ContainerRecipeComponentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContainerRecipeComponent.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeComponent(
      componentArn: pulumi.Input.fromValue(map['componentArn'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerRecipeComponentParameter>(guardedValue, (value) => ContainerRecipeComponentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

