// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_default_result_configuration.dart';
import 'membership_payment_configuration.dart';

/// {@template pulumi_cleanrooms_membership_membership_args_doc}
/// The set of arguments for Membership.
/// {@endtemplate}
/// {@macro pulumi_cleanrooms_membership_membership_args_doc}
class MembershipArgs {
  /// The ID of the collaboration to which the member was invited.
  final pulumi.Input<String> collaborationId;
  /// The default configuration for a query result.
  final pulumi.Input<MembershipDefaultResultConfiguration?>? defaultResultConfiguration;
  final pulumi.Input<MembershipPaymentConfiguration?>? paymentConfiguration;
  /// An indicator as to whether query logging has been enabled or disabled for the membership.
  final pulumi.Input<String> queryLogStatus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key value pairs which tag the membership.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [MembershipArgs].
  /// [collaborationId] The ID of the collaboration to which the member was invited.
  /// [defaultResultConfiguration] The default configuration for a query result.
  /// [paymentConfiguration] Optional.
  /// [queryLogStatus] An indicator as to whether query logging has been enabled or disabled for the membership.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key value pairs which tag the membership.
  const MembershipArgs({
    required this.collaborationId,
    this.defaultResultConfiguration,
    this.paymentConfiguration,
    required this.queryLogStatus,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collaborationId': collaborationId,
      'defaultResultConfiguration': ?pulumi.Input.mapOptionalInputValue<MembershipDefaultResultConfiguration, Map<String, dynamic>>(defaultResultConfiguration, (value) => value.toMap()),
      'paymentConfiguration': ?pulumi.Input.mapOptionalInputValue<MembershipPaymentConfiguration, Map<String, dynamic>>(paymentConfiguration, (value) => value.toMap()),
      'queryLogStatus': queryLogStatus,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory MembershipArgs.fromMap(Map<String, dynamic> map) {
    return MembershipArgs(
      collaborationId: pulumi.Input.fromValue(map['collaborationId'] as String),
      defaultResultConfiguration: (() { final guardedValue = map['defaultResultConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MembershipDefaultResultConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paymentConfiguration: (() { final guardedValue = map['paymentConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MembershipPaymentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queryLogStatus: pulumi.Input.fromValue(map['queryLogStatus'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
