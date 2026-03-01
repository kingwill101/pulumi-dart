// ignore_for_file: unused_element, unnecessary_cast


/// Contains the IpTag associated with the public IP address
class IpTag {
  /// Gets or sets the ipTag type: Example FirstPartyUsage.
  final String ipTagType;
  /// Gets or sets value of the IpTag associated with the public IP. Example HDInsight, SQL, Storage etc
  final String tag;

  /// Creates a new [IpTag].
  /// [ipTagType] Gets or sets the ipTag type: Example FirstPartyUsage.
  /// [tag] Gets or sets value of the IpTag associated with the public IP. Example HDInsight, SQL, Storage etc
  IpTag({
    required this.ipTagType,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTagType': ipTagType,
      'tag': tag,
    };
  }

  factory IpTag.fromMap(Map<String, dynamic> map) {
    return IpTag(
      ipTagType: map['ipTagType'] as String,
      tag: map['tag'] as String,
    );
  }
}

