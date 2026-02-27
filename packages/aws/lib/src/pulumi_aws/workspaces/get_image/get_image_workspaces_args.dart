// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getImage.
class GetImageWorkspacesArgs {
  /// ID of the image.
  final pulumi.Input<String> imageId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetImageWorkspacesArgs({
    required this.imageId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageId'] = imageId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetImageWorkspacesArgs.fromMap(Map<String, dynamic> map) {
    return GetImageWorkspacesArgs(
      imageId: pulumi.Input.asInput<String>(map['imageId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
