// ignore_for_file: unused_element, unnecessary_cast

class AiMetadataStoreState {
  /// (Output)
  /// The disk utilization of the MetadataStore in bytes.
  final String? diskUtilizationBytes;

  AiMetadataStoreState({
    this.diskUtilizationBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskUtilizationBytesValue = diskUtilizationBytes;
    if (diskUtilizationBytesValue != null) {
      map['diskUtilizationBytes'] = diskUtilizationBytesValue;
    }
    return map;
  }

  factory AiMetadataStoreState.fromMap(Map<String, dynamic> map) {
    return AiMetadataStoreState(
      diskUtilizationBytes: map['diskUtilizationBytes'] == null
          ? null
          : map['diskUtilizationBytes'] as String,
    );
  }
}
