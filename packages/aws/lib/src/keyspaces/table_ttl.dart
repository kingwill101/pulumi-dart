// ignore_for_file: unused_element, unnecessary_cast

class TableTtl {
  /// Valid values: `ENABLED`.
  final String status;

  /// Creates a new [TableTtl].
  /// [status] Valid values: `ENABLED`.
  TableTtl({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory TableTtl.fromMap(Map<String, dynamic> map) {
    return TableTtl(
      status: map['status'] as String,
    );
  }
}
