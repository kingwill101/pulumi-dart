// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesControllerPciModel {
  /// Specifies the name of the PCI model being used.
  final String name;

  /// Creates a new [DomainDevicesControllerPciModel].
  /// [name] Specifies the name of the PCI model being used.
  DomainDevicesControllerPciModel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory DomainDevicesControllerPciModel.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerPciModel(
      name: map['name'] as String,
    );
  }
}

