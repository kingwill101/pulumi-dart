// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../image_recipe_component_parameter/image_recipe_component_parameter.dart';

class ImageRecipeComponent {
  /// Amazon Resource Name (ARN) of the Image Builder Component to associate.
  final String componentArn;

  /// Configuration block(s) for parameters to configure the component. Detailed below.
  final List<ImageRecipeComponentParameter>? parameters;

  ImageRecipeComponent({
    required this.componentArn,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['componentArn'] = componentArn;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.encodeList<ImageRecipeComponentParameter,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    return map;
  }

  factory ImageRecipeComponent.fromMap(Map<String, dynamic> map) {
    return ImageRecipeComponent(
      componentArn: map['componentArn'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<ImageRecipeComponentParameter>(
              map['parameters'],
              (value) => ImageRecipeComponentParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
