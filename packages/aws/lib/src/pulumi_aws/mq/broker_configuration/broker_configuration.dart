// ignore_for_file: unused_element, unnecessary_cast

class BrokerConfiguration {
  /// Configuration ID.
  final String? id;

  /// Revision of the Configuration.
  final int? revision;

  BrokerConfiguration({
    this.id,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    return map;
  }

  factory BrokerConfiguration.fromMap(Map<String, dynamic> map) {
    return BrokerConfiguration(
      id: map['id'] == null ? null : map['id'] as String,
      revision: map['revision'] == null ? null : map['revision'] as int,
    );
  }
}
