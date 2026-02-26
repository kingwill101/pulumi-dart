// ignore_for_file: unused_element, unnecessary_cast

class TableGlobalTableWitness {
  /// Name of the AWS Region that serves as a witness for the MRSC global table.
  final String? regionName;

  TableGlobalTableWitness({
    this.regionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionNameValue = regionName;
    if (regionNameValue != null) {
      map['regionName'] = regionNameValue;
    }
    return map;
  }

  factory TableGlobalTableWitness.fromMap(Map<String, dynamic> map) {
    return TableGlobalTableWitness(
      regionName:
          map['regionName'] == null ? null : map['regionName'] as String,
    );
  }
}
