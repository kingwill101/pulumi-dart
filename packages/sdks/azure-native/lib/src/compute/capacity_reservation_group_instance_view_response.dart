// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_reservation_instance_view_with_name_response.dart';
import 'sub_resource_read_only_response.dart';

class CapacityReservationGroupInstanceViewResponse {
  /// List of instance view of the capacity reservations under the capacity reservation group.
  final pulumi.Input<List<CapacityReservationInstanceViewWithNameResponse>>
  capacityReservations;

  /// List of the subscriptions that the capacity reservation group is shared with. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  final pulumi.Input<List<SubResourceReadOnlyResponse>> sharedSubscriptionIds;

  /// Creates a new [CapacityReservationGroupInstanceViewResponse].
  /// [capacityReservations] List of instance view of the capacity reservations under the capacity reservation group.
  /// [sharedSubscriptionIds] List of the subscriptions that the capacity reservation group is shared with. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  CapacityReservationGroupInstanceViewResponse({
    required this.capacityReservations,
    required this.sharedSubscriptionIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservations':
          pulumi.Input.mapInputValue<
            List<CapacityReservationInstanceViewWithNameResponse>,
            List<Map<String, dynamic>>
          >(
            capacityReservations,
            (value) =>
                pulumi.Input.encodeList<
                  CapacityReservationInstanceViewWithNameResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sharedSubscriptionIds':
          pulumi.Input.mapInputValue<
            List<SubResourceReadOnlyResponse>,
            List<Map<String, dynamic>>
          >(
            sharedSubscriptionIds,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceReadOnlyResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory CapacityReservationGroupInstanceViewResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapacityReservationGroupInstanceViewResponse(
      capacityReservations: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<CapacityReservationInstanceViewWithNameResponse>(
          map['capacityReservations']!,
          (value) => CapacityReservationInstanceViewWithNameResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sharedSubscriptionIds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SubResourceReadOnlyResponse>(
          map['sharedSubscriptionIds']!,
          (value) => SubResourceReadOnlyResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
