// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'extended_key_usage_options_response.dart';
import 'key_usage_options_response.dart';
import 'object_id_response.dart';

/// A KeyUsage describes key usage values that may appear in an X.509 certificate.
class KeyUsageResponse {
  /// Describes high-level ways in which a key may be used.
  final KeyUsageOptionsResponse baseKeyUsage;

  /// Detailed scenarios in which a key may be used.
  final ExtendedKeyUsageOptionsResponse extendedKeyUsage;

  /// Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  final List<ObjectIdResponse> unknownExtendedKeyUsages;

  KeyUsageResponse({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    required this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseKeyUsage'] = baseKeyUsage.toMap();
    map['extendedKeyUsage'] = extendedKeyUsage.toMap();
    map['unknownExtendedKeyUsages'] =
        Input.encodeList<ObjectIdResponse, Map<String, dynamic>>(
            unknownExtendedKeyUsages, (value) => value.toMap());
    return map;
  }

  factory KeyUsageResponse.fromMap(Map<String, dynamic> map) {
    return KeyUsageResponse(
      baseKeyUsage: KeyUsageOptionsResponse.fromMap(
          (map['baseKeyUsage'] as Map).cast<String, dynamic>()),
      extendedKeyUsage: ExtendedKeyUsageOptionsResponse.fromMap(
          (map['extendedKeyUsage'] as Map).cast<String, dynamic>()),
      unknownExtendedKeyUsages: Input.decodeList<ObjectIdResponse>(
          map['unknownExtendedKeyUsages'],
          (value) =>
              ObjectIdResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
