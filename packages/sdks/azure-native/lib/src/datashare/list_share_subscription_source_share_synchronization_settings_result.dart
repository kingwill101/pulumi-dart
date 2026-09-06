// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_source_synchronization_setting_response.dart';

/// Result data returned by listShareSubscriptionSourceShareSynchronizationSettings.
class ListShareSubscriptionSourceShareSynchronizationSettingsResult {
  /// The Url of next result page.
  final String? nextLink;
  /// Collection of items of type DataTransferObjects.
  final List<ScheduledSourceSynchronizationSettingResponse>? value;

  /// Creates a new [ListShareSubscriptionSourceShareSynchronizationSettingsResult].
  /// [nextLink] The Url of next result page.
  /// [value] Collection of items of type DataTransferObjects.
  const ListShareSubscriptionSourceShareSynchronizationSettingsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ScheduledSourceSynchronizationSettingResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListShareSubscriptionSourceShareSynchronizationSettingsResult.fromMap(Map<String, dynamic> map) {
    return ListShareSubscriptionSourceShareSynchronizationSettingsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScheduledSourceSynchronizationSettingResponse>(guardedValue, (value) => ScheduledSourceSynchronizationSettingResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
