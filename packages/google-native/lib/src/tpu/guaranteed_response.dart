// ignore_for_file: unused_element, unnecessary_cast


/// Guaranteed tier definition.
class GuaranteedResponse {
  /// Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  final String minDuration;
  /// Optional. Specifies the request should be scheduled on reserved capacity.
  final bool reserved;

  /// Creates a new [GuaranteedResponse].
  /// [minDuration] Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
  /// [reserved] Optional. Specifies the request should be scheduled on reserved capacity.
  GuaranteedResponse({
    required this.minDuration,
    required this.reserved,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minDuration': minDuration,
      'reserved': reserved,
    };
  }

  factory GuaranteedResponse.fromMap(Map<String, dynamic> map) {
    return GuaranteedResponse(
      minDuration: map['minDuration'] as String,
      reserved: map['reserved'] as bool,
    );
  }
}

