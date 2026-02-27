// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../membership_default_result_configuration/membership_default_result_configuration.dart';
import '../membership_payment_configuration/membership_payment_configuration.dart';

/// The set of arguments for Membership.
class MembershipArgs {
  /// The ID of the collaboration to which the member was invited.
  final pulumi.Input<String> collaborationId;

  /// The default configuration for a query result.
  final pulumi.Input<MembershipDefaultResultConfiguration>?
      defaultResultConfiguration;
  final pulumi.Input<MembershipPaymentConfiguration>? paymentConfiguration;

  /// An indicator as to whether query logging has been enabled or disabled for the membership.
  final pulumi.Input<String> queryLogStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key value pairs which tag the membership.
  final pulumi.Input<Map<String, String>>? tags;

  MembershipArgs({
    required this.collaborationId,
    this.defaultResultConfiguration,
    this.paymentConfiguration,
    required this.queryLogStatus,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collaborationId'] = collaborationId;
    final defaultResultConfigurationValue = defaultResultConfiguration;
    if (defaultResultConfigurationValue != null) {
      map['defaultResultConfiguration'] = pulumi.Input.mapOptionalInputValue<
              MembershipDefaultResultConfiguration, Map<String, dynamic>>(
          defaultResultConfigurationValue, (value) => value.toMap());
    }
    final paymentConfigurationValue = paymentConfiguration;
    if (paymentConfigurationValue != null) {
      map['paymentConfiguration'] = pulumi.Input.mapOptionalInputValue<
              MembershipPaymentConfiguration, Map<String, dynamic>>(
          paymentConfigurationValue, (value) => value.toMap());
    }
    map['queryLogStatus'] = queryLogStatus;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MembershipArgs.fromMap(Map<String, dynamic> map) {
    return MembershipArgs(
      collaborationId: pulumi.Input.asInput<String>(map['collaborationId']),
      defaultResultConfiguration:
          pulumi.Input.asOptionalInput<MembershipDefaultResultConfiguration>(
              map['defaultResultConfiguration']),
      paymentConfiguration:
          pulumi.Input.asOptionalInput<MembershipPaymentConfiguration>(
              map['paymentConfiguration']),
      queryLogStatus: pulumi.Input.asInput<String>(map['queryLogStatus']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
