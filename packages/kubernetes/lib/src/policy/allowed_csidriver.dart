// ignore_for_file: unused_element, unnecessary_cast


/// AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
class AllowedCSIDriver {
  /// Name is the registered name of the CSI driver
  final String name;

  /// Creates a new [AllowedCSIDriver].
  /// [name] Name is the registered name of the CSI driver
  AllowedCSIDriver({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AllowedCSIDriver.fromMap(Map<String, dynamic> map) {
    return AllowedCSIDriver(
      name: map['name'] as String,
    );
  }
}

