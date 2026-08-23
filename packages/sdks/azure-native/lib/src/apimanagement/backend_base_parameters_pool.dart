// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_pool_item.dart';

class BackendBaseParametersPool {
  /// The list of backend entities belonging to a pool.
  final pulumi.Input<List<BackendPoolItem>>? services;

  /// Creates a new [BackendBaseParametersPool].
  /// [services] The list of backend entities belonging to a pool.
  const BackendBaseParametersPool({
    this.services,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'services': ?pulumi.Input.mapOptionalInputValue<List<BackendPoolItem>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<BackendPoolItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendBaseParametersPool.fromMap(Map<String, dynamic> map) {
    return BackendBaseParametersPool(
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendPoolItem>(guardedValue, (value) => BackendPoolItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
