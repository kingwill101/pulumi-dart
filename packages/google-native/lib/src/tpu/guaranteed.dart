// ignore_for_file: unused_element, unnecessary_cast

/// Guaranteed tier definition.
class Guaranteed {
  /// Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  final String? minDuration;

  /// Optional. Specifies the request should be scheduled on reserved capacity.
  final bool? reserved;

  /// Creates a new [Guaranteed].
  /// [minDuration] Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  /// [reserved] Optional. Specifies the request should be scheduled on reserved capacity.
  Guaranteed({
    this.minDuration,
    this.reserved,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minDurationValue = minDuration;
    if (minDurationValue != null) {
      map['minDuration'] = minDurationValue;
    }
    final reservedValue = reserved;
    if (reservedValue != null) {
      map['reserved'] = reservedValue;
    }
    return map;
  }

  factory Guaranteed.fromMap(Map<String, dynamic> map) {
    return Guaranteed(
      minDuration:
          map['minDuration'] == null ? null : map['minDuration'] as String,
      reserved: map['reserved'] == null ? null : map['reserved'] as bool,
    );
  }
}
