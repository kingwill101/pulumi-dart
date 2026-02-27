// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FrameworkShare.
class FrameworkShareArgs {
  /// Comment from the sender about the share request.
  final pulumi.Input<String>? comment;

  /// Amazon Web Services account of the recipient.
  final pulumi.Input<String> destinationAccount;

  /// Amazon Web Services region of the recipient.
  final pulumi.Input<String> destinationRegion;

  /// Unique identifier for the shared custom framework.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> frameworkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  FrameworkShareArgs({
    this.comment,
    required this.destinationAccount,
    required this.destinationRegion,
    required this.frameworkId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    map['destinationAccount'] = destinationAccount;
    map['destinationRegion'] = destinationRegion;
    map['frameworkId'] = frameworkId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory FrameworkShareArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkShareArgs(
      comment: pulumi.Input.asOptionalInput<String>(map['comment']),
      destinationAccount:
          pulumi.Input.asInput<String>(map['destinationAccount']),
      destinationRegion: pulumi.Input.asInput<String>(map['destinationRegion']),
      frameworkId: pulumi.Input.asInput<String>(map['frameworkId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
