/// The state of this Artifact. This is a property of the Artifact, and does not imply or capture any ongoing process. This property is managed by clients (such as Vertex AI Pipelines), and the system does not prescribe or check the validity of state transitions.
enum ArtifactState2 {
  stateUnspecified("STATE_UNSPECIFIED"),
  pending("PENDING"),
  live("LIVE");

  const ArtifactState2(this.value);
  final String value;

  static ArtifactState2 fromValue(String value) {
    for (final item in ArtifactState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactState2 value: $value');
  }
}
