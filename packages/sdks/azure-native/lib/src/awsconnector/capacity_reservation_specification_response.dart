// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_preference_enum_value.dart';
import 'capacity_reservation_target_response.dart';

/// Definition of CapacityReservationSpecificationResponse
class CapacityReservationSpecificationResponse {
  /// &lt;p&gt;Describes the instance's Capacity Reservation preferences. Possible preferences include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;open&lt;/code&gt; - The instance can run in any &lt;code&gt;open&lt;/code&gt; Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;none&lt;/code&gt; - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<CapacityReservationPreferenceEnumValue>?
  capacityReservationPreference;

  /// &lt;p&gt;Information about the targeted Capacity Reservation or Capacity Reservation group.&lt;/p&gt;
  final pulumi.Input<CapacityReservationTargetResponse>?
  capacityReservationTarget;

  /// Creates a new [CapacityReservationSpecificationResponse].
  /// [capacityReservationPreference] &lt;p&gt;Describes the instance's Capacity Reservation preferences. Possible preferences include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;open&lt;/code&gt; - The instance can run in any &lt;code&gt;open&lt;/code&gt; Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;none&lt;/code&gt; - The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [capacityReservationTarget] &lt;p&gt;Information about the targeted Capacity Reservation or Capacity Reservation group.&lt;/p&gt;
  CapacityReservationSpecificationResponse({
    this.capacityReservationPreference,
    this.capacityReservationTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationPreference':
          ?pulumi.Input.mapOptionalInputValue<
            CapacityReservationPreferenceEnumValue,
            Map<String, dynamic>
          >(capacityReservationPreference, (value) => value.toMap()),
      'capacityReservationTarget':
          ?pulumi.Input.mapOptionalInputValue<
            CapacityReservationTargetResponse,
            Map<String, dynamic>
          >(capacityReservationTarget, (value) => value.toMap()),
    };
  }

  factory CapacityReservationSpecificationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapacityReservationSpecificationResponse(
      capacityReservationPreference: (() {
        final guardedValue = map['capacityReservationPreference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapacityReservationPreferenceEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      capacityReservationTarget: (() {
        final guardedValue = map['capacityReservationTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapacityReservationTargetResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
