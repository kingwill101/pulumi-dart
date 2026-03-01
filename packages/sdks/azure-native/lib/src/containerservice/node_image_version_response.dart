// ignore_for_file: unused_element, unnecessary_cast


/// The node upgrade image version.
class NodeImageVersionResponse {
  /// The image version to upgrade the nodes to (e.g., 'AKSUbuntu-1804gen2containerd-2022.12.13').
  final String version;

  /// Creates a new [NodeImageVersionResponse].
  /// [version] The image version to upgrade the nodes to (e.g., 'AKSUbuntu-1804gen2containerd-2022.12.13').
  NodeImageVersionResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory NodeImageVersionResponse.fromMap(Map<String, dynamic> map) {
    return NodeImageVersionResponse(
      version: map['version'] as String,
    );
  }
}

