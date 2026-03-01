// ignore_for_file: unused_element, unnecessary_cast


/// Identity for the resource.
class ManagedCassandraManagedServiceIdentity {
  /// The type of the resource.
  final String? type;

  /// Creates a new [ManagedCassandraManagedServiceIdentity].
  /// [type] The type of the resource.
  ManagedCassandraManagedServiceIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ManagedCassandraManagedServiceIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedCassandraManagedServiceIdentity(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

