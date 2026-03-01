// ignore_for_file: unused_element, unnecessary_cast


/// Status of the addon
class AddonStatusResponse {
  /// ErrorMessage will be set in the event that there is a terminal problem reconciling the AddOn and will contain a more verbose string suitable for logging and human consumption.
  final String? errorMessage;
  /// Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  final String? phase;
  final bool? ready;

  /// Creates a new [AddonStatusResponse].
  /// [errorMessage] ErrorMessage will be set in the event that there is a terminal problem reconciling the AddOn and will contain a more verbose string suitable for logging and human consumption.
  /// [phase] Phase represents the current phase of cluster actuation. E.g. Pending, Running, Terminating, Failed etc.
  /// [ready] Optional.
  AddonStatusResponse({
    this.errorMessage,
    this.phase,
    this.ready,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'phase': ?phase,
      'ready': ?ready,
    };
  }

  factory AddonStatusResponse.fromMap(Map<String, dynamic> map) {
    return AddonStatusResponse(
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      phase: map['phase'] == null ? null : map['phase'] as String,
      ready: map['ready'] == null ? null : map['ready'] as bool,
    );
  }
}

