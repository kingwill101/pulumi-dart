// ignore_for_file: unused_element, unnecessary_cast


/// The parameters used to add a new Data Lake Store account while creating a new Data Lake Analytics account.
class AddDataLakeStoreWithAccountParameters {
  /// The unique name of the Data Lake Store account to add.
  final String name;
  /// The optional suffix for the Data Lake Store account.
  final String? suffix;

  /// Creates a new [AddDataLakeStoreWithAccountParameters].
  /// [name] The unique name of the Data Lake Store account to add.
  /// [suffix] The optional suffix for the Data Lake Store account.
  AddDataLakeStoreWithAccountParameters({
    required this.name,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'suffix': ?suffix,
    };
  }

  factory AddDataLakeStoreWithAccountParameters.fromMap(Map<String, dynamic> map) {
    return AddDataLakeStoreWithAccountParameters(
      name: map['name'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}

