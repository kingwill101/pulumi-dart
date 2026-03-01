// ignore_for_file: unused_element, unnecessary_cast


class GetVolumesVolume {
  final bool deleteProtection;
  final int id;
  final Map<String, String> labels;
  final String linuxDevice;
  final String? location;
  final String name;
  final int? serverId;
  final int size;

  /// Creates a new [GetVolumesVolume].
  /// [deleteProtection] Required.
  /// [id] Required.
  /// [labels] Required.
  /// [linuxDevice] Required.
  /// [location] Optional.
  /// [name] Required.
  /// [serverId] Optional.
  /// [size] Required.
  GetVolumesVolume({
    required this.deleteProtection,
    required this.id,
    required this.labels,
    required this.linuxDevice,
    this.location,
    required this.name,
    this.serverId,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtection': deleteProtection,
      'id': id,
      'labels': labels,
      'linuxDevice': linuxDevice,
      'location': ?location,
      'name': name,
      'serverId': ?serverId,
      'size': size,
    };
  }

  factory GetVolumesVolume.fromMap(Map<String, dynamic> map) {
    return GetVolumesVolume(
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      linuxDevice: map['linuxDevice'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      serverId: map['serverId'] == null ? null : map['serverId'] as int,
      size: map['size'] as int,
    );
  }
}

