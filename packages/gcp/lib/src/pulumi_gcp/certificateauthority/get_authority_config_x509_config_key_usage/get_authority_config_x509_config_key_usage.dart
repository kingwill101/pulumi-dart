// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_authority_config_x509_config_key_usage_base_key_usage/get_authority_config_x509_config_key_usage_base_key_usage.dart';
import '../get_authority_config_x509_config_key_usage_extended_key_usage/get_authority_config_x509_config_key_usage_extended_key_usage.dart';
import '../get_authority_config_x509_config_key_usage_unknown_extended_key_usage/get_authority_config_x509_config_key_usage_unknown_extended_key_usage.dart';

class GetAuthorityConfigX509ConfigKeyUsage {
  /// Describes high-level ways in which a key may be used.
  final List<GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage> baseKeyUsages;

  /// Describes high-level ways in which a key may be used.
  final List<GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage>
      extendedKeyUsages;

  /// An ObjectId specifies an object identifier (OID). These provide context and describe types in ASN.1 messages.
  final List<GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>
      unknownExtendedKeyUsages;

  GetAuthorityConfigX509ConfigKeyUsage({
    required this.baseKeyUsages,
    required this.extendedKeyUsages,
    required this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseKeyUsages'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage,
        Map<String, dynamic>>(baseKeyUsages, (value) => value.toMap());
    map['extendedKeyUsages'] = pulumi.Input.encodeList<
        GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage,
        Map<String, dynamic>>(extendedKeyUsages, (value) => value.toMap());
    map['unknownExtendedKeyUsages'] = pulumi.Input.encodeList<
            GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage,
            Map<String, dynamic>>(
        unknownExtendedKeyUsages, (value) => value.toMap());
    return map;
  }

  factory GetAuthorityConfigX509ConfigKeyUsage.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigKeyUsage(
      baseKeyUsages: pulumi.Input.decodeList<
              GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage>(
          map['baseKeyUsages'],
          (value) => GetAuthorityConfigX509ConfigKeyUsageBaseKeyUsage.fromMap(
              (value as Map).cast<String, dynamic>())),
      extendedKeyUsages: pulumi.Input.decodeList<
              GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage>(
          map['extendedKeyUsages'],
          (value) =>
              GetAuthorityConfigX509ConfigKeyUsageExtendedKeyUsage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      unknownExtendedKeyUsages: pulumi.Input.decodeList<
              GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage>(
          map['unknownExtendedKeyUsages'],
          (value) => GetAuthorityConfigX509ConfigKeyUsageUnknownExtendedKeyUsage
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
