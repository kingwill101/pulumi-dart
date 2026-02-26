// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_metadata_store_encryption_spec/ai_metadata_store_encryption_spec.dart';

/// The set of arguments for AiMetadataStore.
class AiMetadataStoreArgs {
  /// Description of the MetadataStore.
  final Input<String>? description;

  /// Customer-managed encryption key spec for a MetadataStore. If set, this MetadataStore and all sub-resources of this MetadataStore will be secured by this key.
  /// Structure is documented below.
  final Input<AiMetadataStoreEncryptionSpec>? encryptionSpec;

  /// The name of the MetadataStore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the Metadata Store. eg us-central1
  final Input<String>? region;

  AiMetadataStoreArgs({
    this.description,
    this.encryptionSpec,
    this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = Input.mapOptionalInputValue<
          AiMetadataStoreEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AiMetadataStoreArgs.fromMap(Map<String, dynamic> map) {
    return AiMetadataStoreArgs(
      description: Input.asOptionalInput<String>(map['description']),
      encryptionSpec: Input.asOptionalInput<AiMetadataStoreEncryptionSpec>(
          map['encryptionSpec']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
