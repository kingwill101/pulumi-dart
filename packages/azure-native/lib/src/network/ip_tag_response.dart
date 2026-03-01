// ignore_for_file: unused_element, unnecessary_cast


/// Contains the IpTag associated with the object.
class IpTagResponse {
  /// The IP tag type. Example: FirstPartyUsage.
  final String? ipTagType;
  /// The value of the IP tag associated with the public IP. Example: SQL.
  final String? tag;

  /// Creates a new [IpTagResponse].
  /// [ipTagType] The IP tag type. Example: FirstPartyUsage.
  /// [tag] The value of the IP tag associated with the public IP. Example: SQL.
  IpTagResponse({
    this.ipTagType,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ?ipTagType,
      'tag': ?tag,
    };
  }

  factory IpTagResponse.fromMap(Map<String, dynamic> map) {
    return IpTagResponse(
      ipTagType: map['ipTagType'] == null ? null : map['ipTagType'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}

