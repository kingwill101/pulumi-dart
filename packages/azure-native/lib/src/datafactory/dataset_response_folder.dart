// ignore_for_file: unused_element, unnecessary_cast


/// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
class DatasetResponseFolder {
  /// The name of the folder that this Dataset is in.
  final String? name;

  /// Creates a new [DatasetResponseFolder].
  /// [name] The name of the folder that this Dataset is in.
  DatasetResponseFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DatasetResponseFolder.fromMap(Map<String, dynamic> map) {
    return DatasetResponseFolder(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

