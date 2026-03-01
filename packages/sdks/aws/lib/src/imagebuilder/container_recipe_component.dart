// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_recipe_component_parameter.dart';

class ContainerRecipeComponent {
  /// Amazon Resource Name (ARN) of the Image Builder Component to associate.
  final String componentArn;
  /// Configuration block(s) for parameters to configure the component. Detailed below.
  final List<ContainerRecipeComponentParameter>? parameters;

  /// Creates a new [ContainerRecipeComponent].
  /// [componentArn] Amazon Resource Name (ARN) of the Image Builder Component to associate.
  /// [parameters] Configuration block(s) for parameters to configure the component. Detailed below.
  ContainerRecipeComponent({
    required this.componentArn,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentArn': componentArn,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeList<ContainerRecipeComponentParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
    };
  }

  factory ContainerRecipeComponent.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeComponent(
      componentArn: map['componentArn'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ContainerRecipeComponentParameter>(map['parameters'], (value) => ContainerRecipeComponentParameter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

