// ignore_for_file: unused_element, unnecessary_cast


/// The list of Energy services resource's Data Partition Names.
class DataPartitionNames {
  final String? name;

  /// Creates a new [DataPartitionNames].
  /// [name] Optional.
  DataPartitionNames({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DataPartitionNames.fromMap(Map<String, dynamic> map) {
    return DataPartitionNames(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

