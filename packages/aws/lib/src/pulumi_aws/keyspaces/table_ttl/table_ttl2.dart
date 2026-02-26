// ignore_for_file: unused_element, unnecessary_cast

class TableTtl2 {
  /// Valid values: `ENABLED`.
  final String status;

  TableTtl2({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['status'] = status;
    return map;
  }

  factory TableTtl2.fromMap(Map<String, dynamic> map) {
    return TableTtl2(
      status: map['status'] as String,
    );
  }
}
