// ignore_for_file: unused_element, unnecessary_cast


/// Represents an operation to be performed on the object
class StorageTaskOperation {
  /// The operation to be performed on the object.
  final String name;
  /// Action to be taken when the operation fails for a object.
  final String? onFailure;
  /// Action to be taken when the operation is successful for a object.
  final String? onSuccess;
  /// Key-value parameters for the operation.
  final Map<String, String>? parameters;

  /// Creates a new [StorageTaskOperation].
  /// [name] The operation to be performed on the object.
  /// [onFailure] Action to be taken when the operation fails for a object.
  /// [onSuccess] Action to be taken when the operation is successful for a object.
  /// [parameters] Key-value parameters for the operation.
  StorageTaskOperation({
    required this.name,
    this.onFailure,
    this.onSuccess,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'onFailure': ?onFailure,
      'onSuccess': ?onSuccess,
      'parameters': ?parameters,
    };
  }

  factory StorageTaskOperation.fromMap(Map<String, dynamic> map) {
    return StorageTaskOperation(
      name: map['name'] as String,
      onFailure: map['onFailure'] == null ? null : map['onFailure'] as String,
      onSuccess: map['onSuccess'] == null ? null : map['onSuccess'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

