// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_recipe_component_parameter.dart';

class GetImageRecipeComponent {
  /// ARN of the Image Builder Component.
  final pulumi.Input<String> componentArn;

  /// Set of parameters that are used to configure the component.
  final pulumi.Input<List<GetImageRecipeComponentParameter>> parameters;

  /// Creates a new [GetImageRecipeComponent].
  /// [componentArn] ARN of the Image Builder Component.
  /// [parameters] Set of parameters that are used to configure the component.
  GetImageRecipeComponent({
    required this.componentArn,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': componentArn,
      'parameters':
          pulumi.Input.mapInputValue<
            List<GetImageRecipeComponentParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  GetImageRecipeComponentParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetImageRecipeComponent.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeComponent(
      componentArn: pulumi.Input.fromValue(map['componentArn'] as String),
      parameters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetImageRecipeComponentParameter>(
          map['parameters']!,
          (value) => GetImageRecipeComponentParameter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
