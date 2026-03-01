// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_task_registry_credential_custom.dart';
import 'registry_task_registry_credential_source.dart';

class RegistryTaskRegistryCredential {
  /// One or more `custom` blocks as defined above.
  final List<RegistryTaskRegistryCredentialCustom>? customs;
  /// One `source` block as defined below.
  final RegistryTaskRegistryCredentialSource? source;

  /// Creates a new [RegistryTaskRegistryCredential].
  /// [customs] One or more `custom` blocks as defined above.
  /// [source] One `source` block as defined below.
  RegistryTaskRegistryCredential({
    this.customs,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': ?customs == null ? null : pulumi.Input.encodeList<RegistryTaskRegistryCredentialCustom, Map<String, dynamic>>(customs!, (value) => value.toMap()),
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory RegistryTaskRegistryCredential.fromMap(Map<String, dynamic> map) {
    return RegistryTaskRegistryCredential(
      customs: map['customs'] == null ? null : pulumi.Input.decodeList<RegistryTaskRegistryCredentialCustom>(map['customs'], (value) => RegistryTaskRegistryCredentialCustom.fromMap((value as Map).cast<String, dynamic>())),
      source: map['source'] == null ? null : RegistryTaskRegistryCredentialSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

