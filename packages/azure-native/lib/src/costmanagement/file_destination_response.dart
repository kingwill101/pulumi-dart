// ignore_for_file: unused_element, unnecessary_cast


/// Destination of the view data. This is optional. Currently only CSV format is supported.
class FileDestinationResponse {
  /// Destination of the view data. Currently only CSV format is supported.
  final List<String>? fileFormats;

  /// Creates a new [FileDestinationResponse].
  /// [fileFormats] Destination of the view data. Currently only CSV format is supported.
  FileDestinationResponse({
    this.fileFormats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileFormats': ?fileFormats,
    };
  }

  factory FileDestinationResponse.fromMap(Map<String, dynamic> map) {
    return FileDestinationResponse(
      fileFormats: map['fileFormats'] == null ? null : (map['fileFormats'] as List).cast<String>(),
    );
  }
}

