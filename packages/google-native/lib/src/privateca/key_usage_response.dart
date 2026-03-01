// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [KeyUsageResponse].
  /// [baseKeyUsage] Describes high-level ways in which a key may be used.
  /// [extendedKeyUsage] Detailed scenarios in which a key may be used.
  /// [unknownExtendedKeyUsages] Used to describe extended key usages that are not listed in the KeyUsage.ExtendedKeyUsageOptions message.
  KeyUsageResponse({
    required this.baseKeyUsage,
    required this.extendedKeyUsage,
    required this.unknownExtendedKeyUsages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseKeyUsage': baseKeyUsage.toMap(),
      'extendedKeyUsage': extendedKeyUsage.toMap(),
      'unknownExtendedKeyUsages':
          pulumi.Input.encodeList<ObjectIdResponse, Map<String, dynamic>>(
            unknownExtendedKeyUsages,
            (value) => value.toMap(),
          ),
    };
  }

  factory KeyUsageResponse.fromMap(Map<String, dynamic> map) {
    return KeyUsageResponse(
      baseKeyUsage: KeyUsageOptionsResponse.fromMap(
        (map['baseKeyUsage'] as Map).cast<String, dynamic>(),
      ),
      extendedKeyUsage: ExtendedKeyUsageOptionsResponse.fromMap(
        (map['extendedKeyUsage'] as Map).cast<String, dynamic>(),
      ),
      unknownExtendedKeyUsages: pulumi.Input.decodeList<ObjectIdResponse>(
        map['unknownExtendedKeyUsages'],
        (value) =>
            ObjectIdResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
