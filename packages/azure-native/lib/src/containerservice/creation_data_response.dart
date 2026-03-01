// ignore_for_file: unused_element, unnecessary_cast


/// Data used when creating a target resource from a source resource.
class CreationDataResponse {
  /// This is the ARM ID of the source object to be used to create the target object.
  final String? sourceResourceId;

  /// Creates a new [CreationDataResponse].
  /// [sourceResourceId] This is the ARM ID of the source object to be used to create the target object.
  CreationDataResponse({
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory CreationDataResponse.fromMap(Map<String, dynamic> map) {
    return CreationDataResponse(
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
    );
  }
}

