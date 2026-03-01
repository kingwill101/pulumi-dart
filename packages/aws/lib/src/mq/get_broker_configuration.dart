// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerConfiguration {
  /// Configuration ID.
  final String id;

  /// Revision of the Configuration.
  final int revision;

  /// Creates a new [GetBrokerConfiguration].
  /// [id] Configuration ID.
  /// [revision] Revision of the Configuration.
  GetBrokerConfiguration({required this.id, required this.revision});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'revision': revision};
  }

  factory GetBrokerConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBrokerConfiguration(
      id: map['id'] as String,
      revision: map['revision'] as int,
    );
  }
}
