// ignore_for_file: unused_element, unnecessary_cast


/// The IP tag associated with the public IP address.
class IpTagResponse {
  /// IP tag type. Example: FirstPartyUsage.
  final String ipTagType;
  /// IP tag associated with the public IP. Example: SQL, Storage etc.
  final String tag;

  /// Creates a new [IpTagResponse].
  /// [ipTagType] IP tag type. Example: FirstPartyUsage.
  /// [tag] IP tag associated with the public IP. Example: SQL, Storage etc.
  IpTagResponse({
    required this.ipTagType,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ipTagType,
      'tag': tag,
    };
  }

  factory IpTagResponse.fromMap(Map<String, dynamic> map) {
    return IpTagResponse(
      ipTagType: map['ipTagType'] as String,
      tag: map['tag'] as String,
    );
  }
}

