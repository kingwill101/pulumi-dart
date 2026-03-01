// ignore_for_file: unused_element, unnecessary_cast


/// Describes the named partition scheme of the service.
class NamedPartitionSchemeResponse {
  /// Array for the names of the partitions.
  final List<String> names;
  /// Enumerates the ways that a service can be partitioned.
  /// Expected value is 'Named'.
  final String partitionScheme;

  /// Creates a new [NamedPartitionSchemeResponse].
  /// [names] Array for the names of the partitions.
  /// [partitionScheme] Enumerates the ways that a service can be partitioned.
  NamedPartitionSchemeResponse({
    required this.names,
    required this.partitionScheme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'names': names,
      'partitionScheme': partitionScheme,
    };
  }

  factory NamedPartitionSchemeResponse.fromMap(Map<String, dynamic> map) {
    return NamedPartitionSchemeResponse(
      names: (map['names'] as List).cast<String>(),
      partitionScheme: map['partitionScheme'] as String,
    );
  }
}

