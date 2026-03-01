// ignore_for_file: unused_element, unnecessary_cast


/// The folder that this CDC is in. If not specified, CDC will appear at the root level.
class ChangeDataCaptureFolder {
  /// The name of the folder that this CDC is in.
  final String? name;

  /// Creates a new [ChangeDataCaptureFolder].
  /// [name] The name of the folder that this CDC is in.
  ChangeDataCaptureFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ChangeDataCaptureFolder.fromMap(Map<String, dynamic> map) {
    return ChangeDataCaptureFolder(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

