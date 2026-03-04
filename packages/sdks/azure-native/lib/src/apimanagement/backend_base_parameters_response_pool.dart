// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_pool_item_response.dart';

class BackendBaseParametersResponsePool {
  /// The list of backend entities belonging to a pool.
  final pulumi.Input<List<BackendPoolItemResponse>>? services;

  /// Creates a new [BackendBaseParametersResponsePool].
  /// [services] The list of backend entities belonging to a pool.
  BackendBaseParametersResponsePool({this.services});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'services':
          ?pulumi.Input.mapOptionalInputValue<
            List<BackendPoolItemResponse>,
            List<Map<String, dynamic>>
          >(
            services,
            (value) =>
                pulumi.Input.encodeList<
                  BackendPoolItemResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BackendBaseParametersResponsePool.fromMap(Map<String, dynamic> map) {
    return BackendBaseParametersResponsePool(
      services: (() {
        final guardedValue = map['services'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BackendPoolItemResponse>(
            guardedValue,
            (value) => BackendPoolItemResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
