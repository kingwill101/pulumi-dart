// ignore_for_file: unused_element, unnecessary_cast

class ConnectionEventingRuntimeDataStatus {
  /// An arbitrary description for the Connection.
  final String? description;

  /// (Output)
  /// State of the Eventing
  final String? state;

  ConnectionEventingRuntimeDataStatus({
    this.description,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory ConnectionEventingRuntimeDataStatus.fromMap(
      Map<String, dynamic> map) {
    return ConnectionEventingRuntimeDataStatus(
      description:
          map['description'] == null ? null : map['description'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
