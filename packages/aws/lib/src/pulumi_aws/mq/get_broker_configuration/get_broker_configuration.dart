// ignore_for_file: unused_element, unnecessary_cast

class GetBrokerConfiguration {
  /// Configuration ID.
  final String id;

  /// Revision of the Configuration.
  final int revision;

  GetBrokerConfiguration({
    required this.id,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['revision'] = revision;
    return map;
  }

  factory GetBrokerConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBrokerConfiguration(
      id: map['id'] as String,
      revision: map['revision'] as int,
    );
  }
}
