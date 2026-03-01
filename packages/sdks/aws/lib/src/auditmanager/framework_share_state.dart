// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FrameworkShare resources.
class FrameworkShareState {
  /// Comment from the sender about the share request.
  final pulumi.Input<String>? comment;
  /// Amazon Web Services account of the recipient.
  final pulumi.Input<String>? destinationAccount;
  /// Amazon Web Services region of the recipient.
  final pulumi.Input<String>? destinationRegion;
  /// Unique identifier for the shared custom framework.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? frameworkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the share request.
  final pulumi.Input<String>? status;

  /// Creates a new [FrameworkShareState].
  /// [comment] Comment from the sender about the share request.
  /// [destinationAccount] Amazon Web Services account of the recipient.
  /// [destinationRegion] Amazon Web Services region of the recipient.
  /// [frameworkId] Unique identifier for the shared custom framework.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the share request.
  FrameworkShareState({
    pulumi.Output<String>? comment,
    pulumi.Output<String>? destinationAccount,
    pulumi.Output<String>? destinationRegion,
    pulumi.Output<String>? frameworkId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      destinationAccount = pulumi.Input.asOptionalInput<String>(destinationAccount),
      destinationRegion = pulumi.Input.asOptionalInput<String>(destinationRegion),
      frameworkId = pulumi.Input.asOptionalInput<String>(frameworkId),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'destinationAccount': ?destinationAccount,
      'destinationRegion': ?destinationRegion,
      'frameworkId': ?frameworkId,
      'region': ?region,
      'status': ?status,
    };
  }

  factory FrameworkShareState.fromMap(Map<String, dynamic> map) {
    return FrameworkShareState(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      destinationAccount: map['destinationAccount'] == null ? null : pulumi.Output.create<String>(map['destinationAccount'] as String),
      destinationRegion: map['destinationRegion'] == null ? null : pulumi.Output.create<String>(map['destinationRegion'] as String),
      frameworkId: map['frameworkId'] == null ? null : pulumi.Output.create<String>(map['frameworkId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

