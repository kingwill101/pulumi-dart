// ignore_for_file: unused_element, unnecessary_cast


class AiMetadataStoreState {
  /// (Output)
  /// The disk utilization of the MetadataStore in bytes.
  final String? diskUtilizationBytes;

  /// Creates a new [AiMetadataStoreState].
  /// [diskUtilizationBytes] (Output)
  AiMetadataStoreState({
    this.diskUtilizationBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskUtilizationBytes': ?diskUtilizationBytes,
    };
  }

  factory AiMetadataStoreState.fromMap(Map<String, dynamic> map) {
    return AiMetadataStoreState(
      diskUtilizationBytes: map['diskUtilizationBytes'] == null ? null : map['diskUtilizationBytes'] as String,
    );
  }
}

