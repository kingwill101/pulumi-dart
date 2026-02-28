// ignore_for_file: unused_element, unnecessary_cast

class TaskDefinitionHostEntry {
  final String? hostname;
  final String? ipAddress;

  /// Creates a new [TaskDefinitionHostEntry].
  /// [hostname] Optional.
  /// [ipAddress] Optional.
  TaskDefinitionHostEntry({this.hostname, this.ipAddress});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    return map;
  }

  factory TaskDefinitionHostEntry.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionHostEntry(
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
    );
  }
}
