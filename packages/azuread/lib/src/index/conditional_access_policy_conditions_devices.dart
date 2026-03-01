// ignore_for_file: unused_element, unnecessary_cast

import 'conditional_access_policy_conditions_devices_filter.dart';

class ConditionalAccessPolicyConditionsDevices {
  /// A `filter` block as documented below.
  ///
  /// > **Note:** For more information on device filters, see the [official documentation](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/concept-condition-filters-for-devices#supported-operators-and-device-properties-for-filters).
  final ConditionalAccessPolicyConditionsDevicesFilter? filter;

  /// Creates a new [ConditionalAccessPolicyConditionsDevices].
  /// [filter] A `filter` block as documented below.
  ConditionalAccessPolicyConditionsDevices({
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter == null ? null : filter!.toMap(),
    };
  }

  factory ConditionalAccessPolicyConditionsDevices.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsDevices(
      filter: map['filter'] == null ? null : ConditionalAccessPolicyConditionsDevicesFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
    );
  }
}

