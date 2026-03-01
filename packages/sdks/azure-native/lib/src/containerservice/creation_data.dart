// ignore_for_file: unused_element, unnecessary_cast


/// Data used when creating a target resource from a source resource.
class CreationData {
  /// This is the ARM ID of the source object to be used to create the target object.
  final String? sourceResourceId;

  /// Creates a new [CreationData].
  /// [sourceResourceId] This is the ARM ID of the source object to be used to create the target object.
  CreationData({
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory CreationData.fromMap(Map<String, dynamic> map) {
    return CreationData(
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
    );
  }
}

