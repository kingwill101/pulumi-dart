// ignore_for_file: unused_element, unnecessary_cast


/// DataLake Local Storage details.
class DataLakeLocalStorage {
  /// Volume name to write to.
  final String volumeName;

  /// Creates a new [DataLakeLocalStorage].
  /// [volumeName] Volume name to write to.
  DataLakeLocalStorage({
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeName': volumeName,
    };
  }

  factory DataLakeLocalStorage.fromMap(Map<String, dynamic> map) {
    return DataLakeLocalStorage(
      volumeName: map['volumeName'] as String,
    );
  }
}

