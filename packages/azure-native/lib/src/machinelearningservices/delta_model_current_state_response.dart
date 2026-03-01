// ignore_for_file: unused_element, unnecessary_cast


/// Contract for DeltaModelCurrentState.
class DeltaModelCurrentStateResponse {
  /// Gets or sets Count of instances with model.
  final int? count;
  /// Gets or sets sample of instances with model.
  final String? sampleInstanceID;
  /// Gets or sets status.
  final String? status;

  /// Creates a new [DeltaModelCurrentStateResponse].
  /// [count] Gets or sets Count of instances with model.
  /// [sampleInstanceID] Gets or sets sample of instances with model.
  /// [status] Gets or sets status.
  DeltaModelCurrentStateResponse({
    this.count,
    this.sampleInstanceID,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'sampleInstanceID': ?sampleInstanceID,
      'status': ?status,
    };
  }

  factory DeltaModelCurrentStateResponse.fromMap(Map<String, dynamic> map) {
    return DeltaModelCurrentStateResponse(
      count: map['count'] == null ? null : map['count'] as int,
      sampleInstanceID: map['sampleInstanceID'] == null ? null : map['sampleInstanceID'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

