// ignore_for_file: unused_element, unnecessary_cast


/// The parameters used to add a new Azure Storage account while creating a new Data Lake Analytics account.
class AddStorageAccountWithAccountParameters {
  /// The access key associated with this Azure Storage account that will be used to connect to it.
  final String accessKey;
  /// The unique name of the Azure Storage account to add.
  final String name;
  /// The optional suffix for the storage account.
  final String? suffix;

  /// Creates a new [AddStorageAccountWithAccountParameters].
  /// [accessKey] The access key associated with this Azure Storage account that will be used to connect to it.
  /// [name] The unique name of the Azure Storage account to add.
  /// [suffix] The optional suffix for the storage account.
  AddStorageAccountWithAccountParameters({
    required this.accessKey,
    required this.name,
    this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'name': name,
      'suffix': ?suffix,
    };
  }

  factory AddStorageAccountWithAccountParameters.fromMap(Map<String, dynamic> map) {
    return AddStorageAccountWithAccountParameters(
      accessKey: map['accessKey'] as String,
      name: map['name'] as String,
      suffix: map['suffix'] == null ? null : map['suffix'] as String,
    );
  }
}

