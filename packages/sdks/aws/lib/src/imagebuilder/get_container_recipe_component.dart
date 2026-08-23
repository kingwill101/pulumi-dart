// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipe_component_parameter.dart';

class GetContainerRecipeComponent {
  /// ARN of the Image Builder Component.
  final pulumi.Input<String> componentArn;
  /// Set of parameters that are used to configure the component.
  final pulumi.Input<List<GetContainerRecipeComponentParameter>> parameters;

  /// Creates a new [GetContainerRecipeComponent].
  /// [componentArn] ARN of the Image Builder Component.
  /// [parameters] Set of parameters that are used to configure the component.
  const GetContainerRecipeComponent({
    required this.componentArn,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': componentArn,
      'parameters': pulumi.Input.mapInputValue<List<GetContainerRecipeComponentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GetContainerRecipeComponentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetContainerRecipeComponent.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipeComponent(
      componentArn: pulumi.Input.fromValue(map['componentArn'] as String),
      parameters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetContainerRecipeComponentParameter>(map['parameters']!, (value) => GetContainerRecipeComponentParameter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
