// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

class ResourceSharingProfileResponse {
  /// Specifies an array of subscription resource IDs that capacity reservation group is shared with. Block Capacity Reservations does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  final pulumi.Input<List<SubResourceResponse>>? subscriptionIds;

  /// Creates a new [ResourceSharingProfileResponse].
  /// [subscriptionIds] Specifies an array of subscription resource IDs that capacity reservation group is shared with. Block Capacity Reservations does not support sharing across subscriptions. **Note:** Minimum api-version: 2023-09-01. Please refer to https://aka.ms/computereservationsharing for more details.
  ResourceSharingProfileResponse({this.subscriptionIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionIds':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubResourceResponse>,
            List<Map<String, dynamic>>
          >(
            subscriptionIds,
            (value) =>
                pulumi.Input.encodeList<
                  SubResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResourceSharingProfileResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSharingProfileResponse(
      subscriptionIds: (() {
        final guardedValue = map['subscriptionIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubResourceResponse>(
            guardedValue,
            (value) => SubResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
