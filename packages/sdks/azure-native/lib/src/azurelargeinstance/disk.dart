// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the disk information fo the Azure Large Instance
class Disk {
  /// Specifies the size of an empty data disk in gigabytes.
  final int? diskSizeGB;
  /// The disk name.
  final String? name;

  /// Creates a new [Disk].
  /// [diskSizeGB] Specifies the size of an empty data disk in gigabytes.
  /// [name] The disk name.
  Disk({
    this.diskSizeGB,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': ?diskSizeGB,
      'name': ?name,
    };
  }

  factory Disk.fromMap(Map<String, dynamic> map) {
    return Disk(
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

