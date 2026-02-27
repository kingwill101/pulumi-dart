// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_container_recipe_component_parameter/get_container_recipe_component_parameter.dart';

class GetContainerRecipeComponent {
  /// ARN of the Image Builder Component.
  final String componentArn;

  /// Set of parameters that are used to configure the component.
  final List<GetContainerRecipeComponentParameter> parameters;

  GetContainerRecipeComponent({
    required this.componentArn,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentArn'] = componentArn;
    map['parameters'] = pulumi.Input.encodeList<
        GetContainerRecipeComponentParameter,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory GetContainerRecipeComponent.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipeComponent(
      componentArn: map['componentArn'] as String,
      parameters: pulumi.Input.decodeList<GetContainerRecipeComponentParameter>(
          map['parameters'],
          (value) => GetContainerRecipeComponentParameter.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
