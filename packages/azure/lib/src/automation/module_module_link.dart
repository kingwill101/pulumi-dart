// ignore_for_file: unused_element, unnecessary_cast

import 'module_module_link_hash.dart';

class ModuleModuleLink {
  /// A `hash` block as defined below.
  final ModuleModuleLinkHash? hash;
  /// The URI of the module content (zip or nupkg).
  final String uri;

  /// Creates a new [ModuleModuleLink].
  /// [hash] A `hash` block as defined below.
  /// [uri] The URI of the module content (zip or nupkg).
  ModuleModuleLink({
    this.hash,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': ?hash == null ? null : hash!.toMap(),
      'uri': uri,
    };
  }

  factory ModuleModuleLink.fromMap(Map<String, dynamic> map) {
    return ModuleModuleLink(
      hash: map['hash'] == null ? null : ModuleModuleLinkHash.fromMap((map['hash'] as Map).cast<String, dynamic>()),
      uri: map['uri'] as String,
    );
  }
}

