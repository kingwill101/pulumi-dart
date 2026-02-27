// ignore_for_file: unused_element, unnecessary_cast

class TableTtlKeyspaces {
  /// Valid values: `ENABLED`.
  final String status;

  TableTtlKeyspaces({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory TableTtlKeyspaces.fromMap(Map<String, dynamic> map) {
    return TableTtlKeyspaces(
      status: map['status'] as String,
    );
  }
}
