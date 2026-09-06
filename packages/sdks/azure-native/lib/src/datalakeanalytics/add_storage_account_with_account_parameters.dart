// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters used to add a new Azure Storage account while creating a new Data Lake Analytics account.
class AddStorageAccountWithAccountParameters {
  /// The access key associated with this Azure Storage account that will be used to connect to it.
  final pulumi.Input<String> accessKey;
  /// The unique name of the Azure Storage account to add.
  final pulumi.Input<String> name;
  /// The optional suffix for the storage account.
  final pulumi.Input<String?>? suffix;

  /// Creates a new [AddStorageAccountWithAccountParameters].
  /// [accessKey] The access key associated with this Azure Storage account that will be used to connect to it.
  /// [name] The unique name of the Azure Storage account to add.
  /// [suffix] The optional suffix for the storage account.
  AddStorageAccountWithAccountParameters({
    required this.accessKey,
    required this.name,
    pulumi.Input<String?>? suffix,
  }) : suffix = suffix ?? pulumi.Input.fromValue('azuredatalakestore.net');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'name': name,
      'suffix': ?suffix,
    };
  }

  factory AddStorageAccountWithAccountParameters.fromMap(Map<String, dynamic> map) {
    return AddStorageAccountWithAccountParameters(
      accessKey: pulumi.Input.fromValue(map['accessKey'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
