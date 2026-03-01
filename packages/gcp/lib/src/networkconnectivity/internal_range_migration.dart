// ignore_for_file: unused_element, unnecessary_cast

class InternalRangeMigration {
  /// Resource path as an URI of the source resource, for example a subnet.
  /// The project for the source resource should match the project for the
  /// InternalRange.
  /// An example /projects/{project}/regions/{region}/subnetworks/{subnet}
  final String source;

  /// Resource path of the target resource. The target project can be
  /// different, as in the cases when migrating to peer networks. The resource
  /// may not exist yet.
  /// For example /projects/{project}/regions/{region}/subnetworks/{subnet}
  final String target;

  /// Creates a new [InternalRangeMigration].
  /// [source] Resource path as an URI of the source resource, for example a subnet.
  /// [target] Resource path of the target resource. The target project can be
  InternalRangeMigration({required this.source, required this.target});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'source': source, 'target': target};
  }

  factory InternalRangeMigration.fromMap(Map<String, dynamic> map) {
    return InternalRangeMigration(
      source: map['source'] as String,
      target: map['target'] as String,
    );
  }
}
