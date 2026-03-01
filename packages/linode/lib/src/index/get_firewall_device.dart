// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallDevice {
  /// The ID of the underlying entity this device references (i.e. the Linode's ID).
  final int entityId;
  /// The Firewall's ID.
  final int id;
  /// The label of the underlying entity this device references.
  final String label;
  /// The type of Firewall Device.
  final String type;
  /// The URL of the underlying entity this device references.
  final String url;

  /// Creates a new [GetFirewallDevice].
  /// [entityId] The ID of the underlying entity this device references (i.e. the Linode's ID).
  /// [id] The Firewall's ID.
  /// [label] The label of the underlying entity this device references.
  /// [type] The type of Firewall Device.
  /// [url] The URL of the underlying entity this device references.
  GetFirewallDevice({
    required this.entityId,
    required this.id,
    required this.label,
    required this.type,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'id': id,
      'label': label,
      'type': type,
      'url': url,
    };
  }

  factory GetFirewallDevice.fromMap(Map<String, dynamic> map) {
    return GetFirewallDevice(
      entityId: map['entityId'] as int,
      id: map['id'] as int,
      label: map['label'] as String,
      type: map['type'] as String,
      url: map['url'] as String,
    );
  }
}

