// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getControls.
class GetControlsResult {
  /// List of all the ARNs for the controls applied to the `targetIdentifier`.
  final List<String>? enabledControls;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? targetIdentifier;

  /// Creates a new [GetControlsResult].
  /// [enabledControls] List of all the ARNs for the controls applied to the `targetIdentifier`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [targetIdentifier] Optional.
  const GetControlsResult({
    this.enabledControls,
    this.id,
    this.region,
    this.targetIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledControls': ?enabledControls,
      'id': ?id,
      'region': ?region,
      'targetIdentifier': ?targetIdentifier,
    };
  }

  factory GetControlsResult.fromMap(Map<String, dynamic> map) {
    return GetControlsResult(
      enabledControls: (() { final guardedValue = map['enabledControls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetIdentifier: (() { final guardedValue = map['targetIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
