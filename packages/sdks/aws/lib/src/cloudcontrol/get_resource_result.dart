// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResource.
class GetResourceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? identifier;
  /// JSON string matching the CloudFormation resource type schema with current configuration.
  final String? properties;
  final String? region;
  final String? roleArn;
  final String? typeName;
  final String? typeVersionId;

  /// Creates a new [GetResourceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identifier] Optional.
  /// [properties] JSON string matching the CloudFormation resource type schema with current configuration.
  /// [region] Optional.
  /// [roleArn] Optional.
  /// [typeName] Optional.
  /// [typeVersionId] Optional.
  const GetResourceResult({
    this.id,
    this.identifier,
    this.properties,
    this.region,
    this.roleArn,
    this.typeName,
    this.typeVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identifier': ?identifier,
      'properties': ?properties,
      'region': ?region,
      'roleArn': ?roleArn,
      'typeName': ?typeName,
      'typeVersionId': ?typeVersionId,
    };
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeName: (() { final guardedValue = map['typeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      typeVersionId: (() { final guardedValue = map['typeVersionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
