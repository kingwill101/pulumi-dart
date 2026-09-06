// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Requests for capacity for the pool.
class Requests {
  /// Requested capacity of the pool in GiB.
  final pulumi.Input<double?>? storage;

  /// Creates a new [Requests].
  /// [storage] Requested capacity of the pool in GiB.
  Requests({
    pulumi.Input<double?>? storage,
  }) : storage = storage ?? pulumi.Input.fromValue(1024);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storage': ?storage,
    };
  }

  factory Requests.fromMap(Map<String, dynamic> map) {
    return Requests(
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
