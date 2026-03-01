// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workspaces_get_image_get_image_args_doc}
/// Arguments for getImage.
/// {@endtemplate}
/// {@macro pulumi_workspaces_get_image_get_image_args_doc}
class GetImageArgs {
  /// ID of the image.
  final pulumi.Input<String> imageId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetImageArgs].
  /// [imageId] ID of the image.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetImageArgs({
    required String imageId,
    String? region,
  }) :
      imageId = pulumi.Input.asInput<String>(imageId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'region': ?region,
    };
  }

  factory GetImageArgs.fromMap(Map<String, dynamic> map) {
    return GetImageArgs(
      imageId: map['imageId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

