// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enabled_standards_standards_subscription.dart';

/// Result data returned by getEnabledStandards.
class GetEnabledStandardsResult {
  final String? region;
  final List<String>? standardsSubscriptionArns;
  /// List of controls that apply to the specified standard. See below for details.
  final List<GetEnabledStandardsStandardsSubscription>? standardsSubscriptions;

  /// Creates a new [GetEnabledStandardsResult].
  /// [region] Optional.
  /// [standardsSubscriptionArns] Optional.
  /// [standardsSubscriptions] List of controls that apply to the specified standard. See below for details.
  const GetEnabledStandardsResult({
    this.region,
    this.standardsSubscriptionArns,
    this.standardsSubscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'standardsSubscriptionArns': ?standardsSubscriptionArns,
      'standardsSubscriptions': ?(() { final guardedValue = standardsSubscriptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEnabledStandardsStandardsSubscription, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetEnabledStandardsResult.fromMap(Map<String, dynamic> map) {
    return GetEnabledStandardsResult(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standardsSubscriptionArns: (() { final guardedValue = map['standardsSubscriptionArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      standardsSubscriptions: (() { final guardedValue = map['standardsSubscriptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEnabledStandardsStandardsSubscription>(guardedValue, (value) => GetEnabledStandardsStandardsSubscription.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
