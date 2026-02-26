// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EmailIdentityFeedbackAttributes.
class EmailIdentityFeedbackAttributesArgs {
  /// Sets the feedback forwarding configuration for the identity.
  final Input<bool>? emailForwardingEnabled;

  /// The email identity.
  final Input<String> emailIdentity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  EmailIdentityFeedbackAttributesArgs({
    this.emailForwardingEnabled,
    required this.emailIdentity,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailForwardingEnabledValue = emailForwardingEnabled;
    if (emailForwardingEnabledValue != null) {
      map['emailForwardingEnabled'] = emailForwardingEnabledValue;
    }
    map['emailIdentity'] = emailIdentity;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EmailIdentityFeedbackAttributesArgs.fromMap(
      Map<String, dynamic> map) {
    return EmailIdentityFeedbackAttributesArgs(
      emailForwardingEnabled:
          Input.asOptionalInput<bool>(map['emailForwardingEnabled']),
      emailIdentity: Input.asInput<String>(map['emailIdentity']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
