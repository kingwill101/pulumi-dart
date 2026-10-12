// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImageVersionCodeArtifact {
  /// URI of the code artifact.
  final pulumi.Input<String> uri;

  /// Creates a new [GetImageVersionCodeArtifact].
  /// [uri] URI of the code artifact.
  const GetImageVersionCodeArtifact({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetImageVersionCodeArtifact.fromMap(Map<String, dynamic> map) {
    return GetImageVersionCodeArtifact(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
