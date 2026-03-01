// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionHostEntry {
  final String? hostname;
  final String? ipAddress;

  /// Creates a new [TaskDefinitionHostEntry].
  /// [hostname] Optional.
  /// [ipAddress] Optional.
  TaskDefinitionHostEntry({this.hostname, this.ipAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hostname': ?hostname, 'ipAddress': ?ipAddress};
  }

  factory TaskDefinitionHostEntry.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionHostEntry(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}
