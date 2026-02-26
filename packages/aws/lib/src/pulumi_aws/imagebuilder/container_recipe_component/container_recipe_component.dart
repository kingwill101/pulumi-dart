// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../container_recipe_component_parameter/container_recipe_component_parameter.dart';

class ContainerRecipeComponent {
  /// Amazon Resource Name (ARN) of the Image Builder Component to associate.
  final String componentArn;

  /// Configuration block(s) for parameters to configure the component. Detailed below.
  final List<ContainerRecipeComponentParameter>? parameters;

  ContainerRecipeComponent({
    required this.componentArn,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentArn'] = componentArn;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<ContainerRecipeComponentParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ContainerRecipeComponent.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeComponent(
      componentArn: map['componentArn'] as String,
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<ContainerRecipeComponentParameter>(
              map['parameters'],
              (value) => ContainerRecipeComponentParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
