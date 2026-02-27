// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ImageBlockPublicAccess.
class ImageBlockPublicAccessArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The state of block public access for AMIs at the account level in the configured AWS Region. Valid values: `unblocked` and `block-new-sharing`.
  final pulumi.Input<String> state;

  ImageBlockPublicAccessArgs({
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    return map;
  }

  factory ImageBlockPublicAccessArgs.fromMap(Map<String, dynamic> map) {
    return ImageBlockPublicAccessArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asInput<String>(map['state']),
    );
  }
}
