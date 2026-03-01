// ignore_for_file: unused_element, unnecessary_cast


class IotHubDpsSku {
  /// The number of provisioned IoT Device Provisioning Service units.
  final int capacity;
  /// The name of the sku. Currently can only be set to `S1`.
  final String name;

  /// Creates a new [IotHubDpsSku].
  /// [capacity] The number of provisioned IoT Device Provisioning Service units.
  /// [name] The name of the sku. Currently can only be set to `S1`.
  IotHubDpsSku({
    required this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
    };
  }

  factory IotHubDpsSku.fromMap(Map<String, dynamic> map) {
    return IotHubDpsSku(
      capacity: map['capacity'] as int,
      name: map['name'] as String,
    );
  }
}

