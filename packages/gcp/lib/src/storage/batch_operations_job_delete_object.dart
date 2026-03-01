// ignore_for_file: unused_element, unnecessary_cast


class BatchOperationsJobDeleteObject {
  /// enable flag to permanently delete object and all object versions if versioning is enabled on bucket.
  final bool permanentObjectDeletionEnabled;

  /// Creates a new [BatchOperationsJobDeleteObject].
  /// [permanentObjectDeletionEnabled] enable flag to permanently delete object and all object versions if versioning is enabled on bucket.
  BatchOperationsJobDeleteObject({
    required this.permanentObjectDeletionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permanentObjectDeletionEnabled': permanentObjectDeletionEnabled,
    };
  }

  factory BatchOperationsJobDeleteObject.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobDeleteObject(
      permanentObjectDeletionEnabled: map['permanentObjectDeletionEnabled'] as bool,
    );
  }
}

