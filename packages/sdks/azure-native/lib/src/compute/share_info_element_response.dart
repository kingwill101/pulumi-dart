// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareInfoElementResponse {
  /// A relative URI containing the ID of the VM that has the disk attached.
  final pulumi.Input<String> vmUri;

  /// Creates a new [ShareInfoElementResponse].
  /// [vmUri] A relative URI containing the ID of the VM that has the disk attached.
  const ShareInfoElementResponse({
    required this.vmUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmUri': vmUri,
    };
  }

  factory ShareInfoElementResponse.fromMap(Map<String, dynamic> map) {
    return ShareInfoElementResponse(
      vmUri: pulumi.Input.fromValue(map['vmUri'] as String),
    );
  }
}

