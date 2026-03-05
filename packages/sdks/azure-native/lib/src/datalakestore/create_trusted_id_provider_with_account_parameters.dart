// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The parameters used to create a new trusted identity provider while creating a new Data Lake Store account.
class CreateTrustedIdProviderWithAccountParameters {
  /// The URL of this trusted identity provider.
  final pulumi.Input<String> idProvider;
  /// The unique name of the trusted identity provider to create.
  final pulumi.Input<String> name;

  /// Creates a new [CreateTrustedIdProviderWithAccountParameters].
  /// [idProvider] The URL of this trusted identity provider.
  /// [name] The unique name of the trusted identity provider to create.
  CreateTrustedIdProviderWithAccountParameters({
    required this.idProvider,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idProvider': idProvider,
      'name': name,
    };
  }

  factory CreateTrustedIdProviderWithAccountParameters.fromMap(Map<String, dynamic> map) {
    return CreateTrustedIdProviderWithAccountParameters(
      idProvider: pulumi.Input.fromValue(map['idProvider'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

