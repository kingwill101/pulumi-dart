// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceScript {
  /// Defines the path to the down script that will be executed when the interface is brought down.
  final String path;

  /// Creates a new [DomainDevicesInterfaceScript].
  /// [path] Defines the path to the down script that will be executed when the interface is brought down.
  DomainDevicesInterfaceScript({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesInterfaceScript.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceScript(
      path: map['path'] as String,
    );
  }
}

