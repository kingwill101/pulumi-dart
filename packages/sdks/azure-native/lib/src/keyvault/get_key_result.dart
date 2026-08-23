// ignore_for_file: unused_element, unnecessary_cast

import 'key_attributes_response.dart';
import 'key_release_policy_response.dart';
import 'rotation_policy_response.dart';

/// Result data returned by getKey.
class GetKeyResult {
  /// The attributes of the key.
  final KeyAttributesResponse? attributes;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
  final String? curveName;
  /// Fully qualified identifier of the key vault resource.
  final String id;
  final List<String>? keyOps;
  /// The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096.
  final int? keySize;
  /// The URI to retrieve the current version of the key.
  final String keyUri;
  /// The URI to retrieve the specific version of the key.
  final String keyUriWithVersion;
  /// The type of the key. For valid values, see JsonWebKeyType.
  final String? kty;
  /// Azure location of the key vault resource.
  final String location;
  /// Name of the key vault resource.
  final String name;
  /// Key release policy in response. It will be used for both output and input. Omitted if empty
  final KeyReleasePolicyResponse? releasePolicy;
  /// Key rotation policy in response. It will be used for both output and input. Omitted if empty
  final RotationPolicyResponse? rotationPolicy;
  /// Tags assigned to the key vault resource.
  final Map<String, String> tags;
  /// Resource type of the key vault resource.
  final String type;

  /// Creates a new [GetKeyResult].
  /// [attributes] The attributes of the key.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [curveName] The elliptic curve name. For valid values, see JsonWebKeyCurveName. Default for EC and EC-HSM keys is P-256
  /// [id] Fully qualified identifier of the key vault resource.
  /// [keyOps] Optional.
  /// [keySize] The key size in bits. For example: 2048, 3072, or 4096 for RSA. Default for RSA and RSA-HSM keys is 2048. Exception made for bring your own key (BYOK), key exchange keys default to 4096.
  /// [keyUri] The URI to retrieve the current version of the key.
  /// [keyUriWithVersion] The URI to retrieve the specific version of the key.
  /// [kty] The type of the key. For valid values, see JsonWebKeyType.
  /// [location] Azure location of the key vault resource.
  /// [name] Name of the key vault resource.
  /// [releasePolicy] Key release policy in response. It will be used for both output and input. Omitted if empty
  /// [rotationPolicy] Key rotation policy in response. It will be used for both output and input. Omitted if empty
  /// [tags] Tags assigned to the key vault resource.
  /// [type] Resource type of the key vault resource.
  const GetKeyResult({
    this.attributes,
    required this.azureApiVersion,
    this.curveName,
    required this.id,
    this.keyOps,
    this.keySize,
    required this.keyUri,
    required this.keyUriWithVersion,
    this.kty,
    required this.location,
    required this.name,
    this.releasePolicy,
    this.rotationPolicy,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes?.toMap(),
      'azureApiVersion': azureApiVersion,
      'curveName': ?curveName,
      'id': id,
      'keyOps': ?keyOps,
      'keySize': ?keySize,
      'keyUri': keyUri,
      'keyUriWithVersion': keyUriWithVersion,
      'kty': ?kty,
      'location': location,
      'name': name,
      'releasePolicy': ?releasePolicy?.toMap(),
      'rotationPolicy': ?rotationPolicy?.toMap(),
      'tags': tags,
      'type': type,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return KeyAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      curveName: (() { final guardedValue = map['curveName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      keyOps: (() { final guardedValue = map['keyOps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      keyUri: map['keyUri'] as String,
      keyUriWithVersion: map['keyUriWithVersion'] as String,
      kty: (() { final guardedValue = map['kty']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      releasePolicy: (() { final guardedValue = map['releasePolicy']; if (guardedValue == null) return null; return KeyReleasePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rotationPolicy: (() { final guardedValue = map['rotationPolicy']; if (guardedValue == null) return null; return RotationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}
