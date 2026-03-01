// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_image_args_doc}
class GetImageArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The name of the image.
  final pulumi.Input<String> imageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetImageArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [imageName] The name of the image.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetImageArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> imageName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      imageName = pulumi.Input.asInput<String>(imageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'imageName': imageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      imageName: pulumi.Output.create<String>(map['imageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

