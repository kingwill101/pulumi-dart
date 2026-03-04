// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Destination of the view data. This is optional. Currently only CSV format is supported.
class FileDestinationResponse {
  /// Destination of the view data. Currently only CSV format is supported.
  final pulumi.Input<List<String>>? fileFormats;

  /// Creates a new [FileDestinationResponse].
  /// [fileFormats] Destination of the view data. Currently only CSV format is supported.
  FileDestinationResponse({this.fileFormats});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fileFormats': ?fileFormats};
  }

  factory FileDestinationResponse.fromMap(Map<String, dynamic> map) {
    return FileDestinationResponse(
      fileFormats: (() {
        final guardedValue = map['fileFormats'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
