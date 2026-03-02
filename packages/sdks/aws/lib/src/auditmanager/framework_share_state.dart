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
    this.comment,
    this.destinationAccount,
    this.destinationRegion,
    this.frameworkId,
    this.region,
    this.status,
  });

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
      comment: map['comment'] == null ? null : ((map['comment'] as String).input()).input(),
      destinationAccount: map['destinationAccount'] == null ? null : ((map['destinationAccount'] as String).input()).input(),
      destinationRegion: map['destinationRegion'] == null ? null : ((map['destinationRegion'] as String).input()).input(),
      frameworkId: map['frameworkId'] == null ? null : ((map['frameworkId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

