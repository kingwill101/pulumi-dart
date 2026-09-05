// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_recipe_component_parameter.dart';

class ImageRecipeComponent {
  /// ARN of the Image Builder Component to associate.
  final pulumi.Input<String> componentArn;
  /// Configuration block(s) for parameters to configure the component. Detailed below.
  final pulumi.Input<List<ImageRecipeComponentParameter>?>? parameters;

  /// Creates a new [ImageRecipeComponent].
  /// [componentArn] ARN of the Image Builder Component to associate.
  /// [parameters] Configuration block(s) for parameters to configure the component. Detailed below.
  const ImageRecipeComponent({
    required this.componentArn,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': componentArn,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ImageRecipeComponentParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ImageRecipeComponentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageRecipeComponent.fromMap(Map<String, dynamic> map) {
    return ImageRecipeComponent(
      componentArn: pulumi.Input.fromValue(map['componentArn'] as String),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageRecipeComponentParameter>(guardedValue, (value) => ImageRecipeComponentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
