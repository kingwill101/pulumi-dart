// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_framework_share_framework_share_args_doc}
/// The set of arguments for FrameworkShare.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_framework_share_framework_share_args_doc}
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

  /// Creates a new [FrameworkShareArgs].
  /// [comment] Comment from the sender about the share request.
  /// [destinationAccount] Amazon Web Services account of the recipient.
  /// [destinationRegion] Amazon Web Services region of the recipient.
  /// [frameworkId] Unique identifier for the shared custom framework.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  FrameworkShareArgs({
    this.comment,
    required this.destinationAccount,
    required this.destinationRegion,
    required this.frameworkId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'destinationAccount': destinationAccount,
      'destinationRegion': destinationRegion,
      'frameworkId': frameworkId,
      'region': ?region,
    };
  }

  factory FrameworkShareArgs.fromMap(Map<String, dynamic> map) {
    return FrameworkShareArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAccount: pulumi.Input.fromValue(map['destinationAccount'] as String),
      destinationRegion: pulumi.Input.fromValue(map['destinationRegion'] as String),
      frameworkId: pulumi.Input.fromValue(map['frameworkId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

