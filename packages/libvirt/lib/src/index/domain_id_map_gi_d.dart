// ignore_for_file: unused_element, unnecessary_cast


class DomainIdMapGiD {
  /// Sets the count of group ID mappings specified for the domain's identity management.
  final double count;
  /// Configures the starting GID for the group ID mapping in the domain.
  final double start;
  /// Sets the target GID for the group ID mapping in the domain.
  final double target;

  /// Creates a new [DomainIdMapGiD].
  /// [count] Sets the count of group ID mappings specified for the domain's identity management.
  /// [start] Configures the starting GID for the group ID mapping in the domain.
  /// [target] Sets the target GID for the group ID mapping in the domain.
  DomainIdMapGiD({
    required this.count,
    required this.start,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'start': start,
      'target': target,
    };
  }

  factory DomainIdMapGiD.fromMap(Map<String, dynamic> map) {
    return DomainIdMapGiD(
      count: map['count'] as double,
      start: map['start'] as double,
      target: map['target'] as double,
    );
  }
}

