// ignore_for_file: unused_element, unnecessary_cast

class BrokerConfiguration {
  /// Configuration ID.
  final String? id;

  /// Revision of the Configuration.
  final int? revision;

  /// Creates a new [BrokerConfiguration].
  /// [id] Configuration ID.
  /// [revision] Revision of the Configuration.
  BrokerConfiguration({this.id, this.revision});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'revision': ?revision};
  }

  factory BrokerConfiguration.fromMap(Map<String, dynamic> map) {
    return BrokerConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      revision: map['revision'] == null ? null : map['revision'] as int,
    );
  }
}
