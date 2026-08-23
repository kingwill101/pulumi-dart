// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartner.
class GetPartnerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// This is the DateTime when the partner was created.
  final String? createdTime;
  /// Type of the partner
  final int? etag;
  /// Identifier of the partner
  final String id;
  /// Name of the partner
  final String name;
  /// This is the object id.
  final String? objectId;
  /// This is the partner id
  final String? partnerId;
  /// This is the partner name
  final String? partnerName;
  /// This is the tenant id.
  final String? tenantId;
  /// Type of resource. "Microsoft.ManagementPartner/partners"
  final String type;
  /// This is the DateTime when the partner was updated.
  final String? updatedTime;
  /// This is the version.
  final int? version;

  /// Creates a new [GetPartnerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdTime] This is the DateTime when the partner was created.
  /// [etag] Type of the partner
  /// [id] Identifier of the partner
  /// [name] Name of the partner
  /// [objectId] This is the object id.
  /// [partnerId] This is the partner id
  /// [partnerName] This is the partner name
  /// [tenantId] This is the tenant id.
  /// [type] Type of resource. "Microsoft.ManagementPartner/partners"
  /// [updatedTime] This is the DateTime when the partner was updated.
  /// [version] This is the version.
  const GetPartnerResult({
    required this.azureApiVersion,
    this.createdTime,
    this.etag,
    required this.id,
    required this.name,
    this.objectId,
    this.partnerId,
    this.partnerName,
    this.tenantId,
    required this.type,
    this.updatedTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdTime': ?createdTime,
      'etag': ?etag,
      'id': id,
      'name': name,
      'objectId': ?objectId,
      'partnerId': ?partnerId,
      'partnerName': ?partnerName,
      'tenantId': ?tenantId,
      'type': type,
      'updatedTime': ?updatedTime,
      'version': ?version,
    };
  }

  factory GetPartnerResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerId: (() { final guardedValue = map['partnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerName: (() { final guardedValue = map['partnerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      updatedTime: (() { final guardedValue = map['updatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}
