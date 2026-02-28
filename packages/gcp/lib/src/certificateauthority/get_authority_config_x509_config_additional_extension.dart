// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_config_x509_config_additional_extension_object_id.dart';

class GetAuthorityConfigX509ConfigAdditionalExtension {
  /// Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// handle this extension, the client should consider this to be an error).
  final bool critical;

  /// Describes values that are relevant in a CA certificate.
  final List<GetAuthorityConfigX509ConfigAdditionalExtensionObjectId> objectIds;

  /// The value of this X.509 extension. A base64-encoded string.
  final String value;

  /// Creates a new [GetAuthorityConfigX509ConfigAdditionalExtension].
  /// [critical] Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// [objectIds] Describes values that are relevant in a CA certificate.
  /// [value] The value of this X.509 extension. A base64-encoded string.
  GetAuthorityConfigX509ConfigAdditionalExtension({
    required this.critical,
    required this.objectIds,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['critical'] = critical;
    map['objectIds'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigAdditionalExtensionObjectId,
        Map<String, dynamic>>(objectIds, (value) => value.toMap());
    map['value'] = value;
    return map;
  }

  factory GetAuthorityConfigX509ConfigAdditionalExtension.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigAdditionalExtension(
      critical: map['critical'] as bool,
      objectIds: pulumi.Input.decodeList<
              GetAuthorityConfigX509ConfigAdditionalExtensionObjectId>(
          map['objectIds'],
          (value) =>
              GetAuthorityConfigX509ConfigAdditionalExtensionObjectId.fromMap(
                  (value as Map).cast<String, dynamic>())),
      value: map['value'] as String,
    );
  }
}
