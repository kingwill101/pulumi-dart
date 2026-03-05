// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters used to add a new Data Lake Store account while creating a new Data Lake Analytics account.
class AddDataLakeStoreWithAccountParameters {
  /// The unique name of the Data Lake Store account to add.
  final pulumi.Input<String> name;
  /// The optional suffix for the Data Lake Store account.
  final pulumi.Input<String>? suffix;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      suffix: (() { final guardedValue = map['suffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

