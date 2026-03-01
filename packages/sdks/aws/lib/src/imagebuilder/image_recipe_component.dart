// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_recipe_component_parameter.dart';

class ImageRecipeComponent {
  /// Amazon Resource Name (ARN) of the Image Builder Component to associate.
  final String componentArn;
  /// Configuration block(s) for parameters to configure the component. Detailed below.
  final List<ImageRecipeComponentParameter>? parameters;

  /// Creates a new [ImageRecipeComponent].
  /// [componentArn] Amazon Resource Name (ARN) of the Image Builder Component to associate.
  /// [parameters] Configuration block(s) for parameters to configure the component. Detailed below.
  ImageRecipeComponent({
    required this.componentArn,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': componentArn,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ImageRecipeComponentParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
    };
  }

  factory ImageRecipeComponent.fromMap(Map<String, dynamic> map) {
    return ImageRecipeComponent(
      componentArn: map['componentArn'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ImageRecipeComponentParameter>(map['parameters'], (value) => ImageRecipeComponentParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

