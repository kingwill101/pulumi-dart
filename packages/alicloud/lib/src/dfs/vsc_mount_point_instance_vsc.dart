// ignore_for_file: unused_element, unnecessary_cast


class VscMountPointInstanceVsc {
  /// VSC Channel primary key representation, used to retrieve the specified VSC Channel.
  final String? vscId;
  /// VSC Mount status.
  final String? vscStatus;
  /// The VSC type.
  final String? vscType;

  /// Creates a new [VscMountPointInstanceVsc].
  /// [vscId] VSC Channel primary key representation, used to retrieve the specified VSC Channel.
  /// [vscStatus] VSC Mount status.
  /// [vscType] The VSC type.
  VscMountPointInstanceVsc({
    this.vscId,
    this.vscStatus,
    this.vscType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vscId': ?vscId,
      'vscStatus': ?vscStatus,
      'vscType': ?vscType,
    };
  }

  factory VscMountPointInstanceVsc.fromMap(Map<String, dynamic> map) {
    return VscMountPointInstanceVsc(
      vscId: map['vscId'] == null ? null : map['vscId'] as String,
      vscStatus: map['vscStatus'] == null ? null : map['vscStatus'] as String,
      vscType: map['vscType'] == null ? null : map['vscType'] as String,
    );
  }
}

