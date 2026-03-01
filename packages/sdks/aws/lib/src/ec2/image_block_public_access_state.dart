// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ImageBlockPublicAccess resources.
class ImageBlockPublicAccessState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The state of block public access for AMIs at the account level in the configured AWS Region. Valid values: `unblocked` and `block-new-sharing`.
  final pulumi.Input<String>? state;

  /// Creates a new [ImageBlockPublicAccessState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The state of block public access for AMIs at the account level in the configured AWS Region. Valid values: `unblocked` and `block-new-sharing`.
  ImageBlockPublicAccessState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'state': ?state,
    };
  }

  factory ImageBlockPublicAccessState.fromMap(Map<String, dynamic> map) {
    return ImageBlockPublicAccessState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

