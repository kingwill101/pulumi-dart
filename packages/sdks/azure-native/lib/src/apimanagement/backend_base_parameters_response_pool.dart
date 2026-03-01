// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_pool_item_response.dart';

class BackendBaseParametersResponsePool {
  /// The list of backend entities belonging to a pool.
  final List<BackendPoolItemResponse>? services;

  /// Creates a new [BackendBaseParametersResponsePool].
  /// [services] The list of backend entities belonging to a pool.
  BackendBaseParametersResponsePool({
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'services': ?services == null ? null : pulumi.Input.encodeList<BackendPoolItemResponse, Map<String, dynamic>>(services!, (value) => value.toMap()),
    };
  }

  factory BackendBaseParametersResponsePool.fromMap(Map<String, dynamic> map) {
    return BackendBaseParametersResponsePool(
      services: map['services'] == null ? null : pulumi.Input.decodeList<BackendPoolItemResponse>(map['services'], (value) => BackendPoolItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

