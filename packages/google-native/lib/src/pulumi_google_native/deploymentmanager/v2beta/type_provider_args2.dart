// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'collection_override2.dart';
import 'credential2.dart';
import 'options3.dart';
import 'type_provider_label_entry2.dart';

/// The set of arguments for TypeProvider.
class TypeProviderArgs2 {
  /// Allows resource handling overrides for specific collections
  final Input<List<CollectionOverride2>>? collectionOverrides;

  /// Credential used when interacting with this type.
  final Input<Credential2>? credential;

  /// List of up to 2 custom certificate authority roots to use for TLS authentication when making calls on behalf of this type provider. If set, TLS authentication will exclusively use these roots instead of relying on publicly trusted certificate authorities when validating TLS certificate authenticity. The certificates must be in base64-encoded PEM format. The maximum size of each certificate must not exceed 10KB.
  final Input<List<String>>? customCertificateAuthorityRoots;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  final Input<String>? description;

  /// Descriptor Url for the this type provider.
  final Input<String>? descriptorUrl;

  /// Map of One Platform labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`
  final Input<List<TypeProviderLabelEntry2>>? labels;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Options to apply when handling any resources in this service.
  final Input<Options3>? options;
  final Input<String>? project;

  TypeProviderArgs2({
    this.collectionOverrides,
    this.credential,
    this.customCertificateAuthorityRoots,
    this.description,
    this.descriptorUrl,
    this.labels,
    this.name,
    this.options,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionOverridesValue = collectionOverrides;
    if (collectionOverridesValue != null) {
      map['collectionOverrides'] = Input.mapOptionalInputValue<
              List<CollectionOverride2>, List<Map<String, dynamic>>>(
          collectionOverridesValue,
          (value) =>
              Input.encodeList<CollectionOverride2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final credentialValue = credential;
    if (credentialValue != null) {
      map['credential'] =
          Input.mapOptionalInputValue<Credential2, Map<String, dynamic>>(
              credentialValue, (value) => value.toMap());
    }
    final customCertificateAuthorityRootsValue =
        customCertificateAuthorityRoots;
    if (customCertificateAuthorityRootsValue != null) {
      map['customCertificateAuthorityRoots'] =
          customCertificateAuthorityRootsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final descriptorUrlValue = descriptorUrl;
    if (descriptorUrlValue != null) {
      map['descriptorUrl'] = descriptorUrlValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = Input.mapOptionalInputValue<List<TypeProviderLabelEntry2>,
              List<Map<String, dynamic>>>(
          labelsValue,
          (value) =>
              Input.encodeList<TypeProviderLabelEntry2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] =
          Input.mapOptionalInputValue<Options3, Map<String, dynamic>>(
              optionsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory TypeProviderArgs2.fromMap(Map<String, dynamic> map) {
    return TypeProviderArgs2(
      collectionOverrides: Input.asOptionalInput<List<CollectionOverride2>>(
          map['collectionOverrides']),
      credential: Input.asOptionalInput<Credential2>(map['credential']),
      customCertificateAuthorityRoots: Input.asOptionalInput<List<String>>(
          map['customCertificateAuthorityRoots']),
      description: Input.asOptionalInput<String>(map['description']),
      descriptorUrl: Input.asOptionalInput<String>(map['descriptorUrl']),
      labels:
          Input.asOptionalInput<List<TypeProviderLabelEntry2>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      options: Input.asOptionalInput<Options3>(map['options']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
