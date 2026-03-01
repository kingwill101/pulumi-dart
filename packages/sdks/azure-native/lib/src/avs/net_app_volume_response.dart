// ignore_for_file: unused_element, unnecessary_cast


/// An Azure NetApp Files volume from Microsoft.NetApp provider
class NetAppVolumeResponse {
  /// Azure resource ID of the NetApp volume
  final String id;

  /// Creates a new [NetAppVolumeResponse].
  /// [id] Azure resource ID of the NetApp volume
  NetAppVolumeResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory NetAppVolumeResponse.fromMap(Map<String, dynamic> map) {
    return NetAppVolumeResponse(
      id: map['id'] as String,
    );
  }
}

