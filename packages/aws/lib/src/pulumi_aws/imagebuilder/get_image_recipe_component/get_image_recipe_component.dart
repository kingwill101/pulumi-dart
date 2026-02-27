// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_image_recipe_component_parameter/get_image_recipe_component_parameter.dart';

class GetImageRecipeComponent {
  /// ARN of the Image Builder Component.
  final String componentArn;

  /// Set of parameters that are used to configure the component.
  final List<GetImageRecipeComponentParameter> parameters;

  GetImageRecipeComponent({
    required this.componentArn,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentArn'] = componentArn;
    map['parameters'] = pulumi.Input.encodeList<
        GetImageRecipeComponentParameter,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    return map;
  }

  factory GetImageRecipeComponent.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeComponent(
      componentArn: map['componentArn'] as String,
      parameters: pulumi.Input.decodeList<GetImageRecipeComponentParameter>(
          map['parameters'],
          (value) => GetImageRecipeComponentParameter.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
