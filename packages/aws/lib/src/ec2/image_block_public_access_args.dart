// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_image_block_public_access_image_block_public_access_args_doc}
/// The set of arguments for ImageBlockPublicAccess.
/// {@endtemplate}
/// {@macro pulumi_ec2_image_block_public_access_image_block_public_access_args_doc}
class ImageBlockPublicAccessArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The state of block public access for AMIs at the account level in the configured AWS Region. Valid values: `unblocked` and `block-new-sharing`.
  final pulumi.Input<String> state;

  /// Creates a new [ImageBlockPublicAccessArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The state of block public access for AMIs at the account level in the configured AWS Region. Valid values: `unblocked` and `block-new-sharing`.
  ImageBlockPublicAccessArgs({String? region, required String state})
    : region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'state': state};
  }

  factory ImageBlockPublicAccessArgs.fromMap(Map<String, dynamic> map) {
    return ImageBlockPublicAccessArgs(
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] as String,
    );
  }
}
