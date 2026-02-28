// ignore_for_file: unused_element, unnecessary_cast

class GetMachineTypesMachineTypeDeprecated {
  /// The URL of the suggested replacement for a deprecated machine type.
  final String replacement;

  /// The deprecation state of this resource. This can be `ACTIVE`, `DEPRECATED`, `OBSOLETE`, or `DELETED`.
  final String state;

  /// Creates a new [GetMachineTypesMachineTypeDeprecated].
  /// [replacement] The URL of the suggested replacement for a deprecated machine type.
  /// [state] The deprecation state of this resource. This can be `ACTIVE`, `DEPRECATED`, `OBSOLETE`, or `DELETED`.
  GetMachineTypesMachineTypeDeprecated({
    required this.replacement,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replacement'] = replacement;
    map['state'] = state;
    return map;
  }

  factory GetMachineTypesMachineTypeDeprecated.fromMap(
      Map<String, dynamic> map) {
    return GetMachineTypesMachineTypeDeprecated(
      replacement: map['replacement'] as String,
      state: map['state'] as String,
    );
  }
}
