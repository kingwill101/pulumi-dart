// ignore_for_file: unused_element, unnecessary_cast


/// Destination of the view data. This is optional. Currently only CSV format is supported.
class FileDestination {
  /// Destination of the view data. Currently only CSV format is supported.
  final List<String>? fileFormats;

  /// Creates a new [FileDestination].
  /// [fileFormats] Destination of the view data. Currently only CSV format is supported.
  FileDestination({
    this.fileFormats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileFormats': ?fileFormats,
    };
  }

  factory FileDestination.fromMap(Map<String, dynamic> map) {
    return FileDestination(
      fileFormats: map['fileFormats'] == null ? null : (map['fileFormats'] as List).cast<String>(),
    );
  }
}

