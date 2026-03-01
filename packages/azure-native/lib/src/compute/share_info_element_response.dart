// ignore_for_file: unused_element, unnecessary_cast


class ShareInfoElementResponse {
  /// A relative URI containing the ID of the VM that has the disk attached.
  final String vmUri;

  /// Creates a new [ShareInfoElementResponse].
  /// [vmUri] A relative URI containing the ID of the VM that has the disk attached.
  ShareInfoElementResponse({
    required this.vmUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmUri': vmUri,
    };
  }

  factory ShareInfoElementResponse.fromMap(Map<String, dynamic> map) {
    return ShareInfoElementResponse(
      vmUri: map['vmUri'] as String,
    );
  }
}

