// ignore_for_file: unused_element, unnecessary_cast


class GetSshKeysSshKey {
  /// Fingerprint of the SSH Key.
  final String fingerprint;
  /// ID of the SSH Key.
  final int id;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  final Map<String, String> labels;
  /// Name of the SSH Key.
  final String name;
  /// Public key of the SSH Key pair.
  final String publicKey;

  /// Creates a new [GetSshKeysSshKey].
  /// [fingerprint] Fingerprint of the SSH Key.
  /// [id] ID of the SSH Key.
  /// [labels] User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  /// [name] Name of the SSH Key.
  /// [publicKey] Public key of the SSH Key pair.
  GetSshKeysSshKey({
    required this.fingerprint,
    required this.id,
    required this.labels,
    required this.name,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': fingerprint,
      'id': id,
      'labels': labels,
      'name': name,
      'publicKey': publicKey,
    };
  }

  factory GetSshKeysSshKey.fromMap(Map<String, dynamic> map) {
    return GetSshKeysSshKey(
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as int,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      publicKey: map['publicKey'] as String,
    );
  }
}

