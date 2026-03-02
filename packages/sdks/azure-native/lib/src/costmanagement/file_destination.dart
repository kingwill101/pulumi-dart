// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Destination of the view data. This is optional. Currently only CSV format is supported.
class FileDestination {
  /// Destination of the view data. Currently only CSV format is supported.
  final pulumi.Input<List<String>>? fileFormats;

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
      fileFormats: map['fileFormats'] == null ? null : ((map['fileFormats']! as List).cast<String>()).input(),
    );
  }
}

