// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains the IpTag associated with the public IP address
class IpTagResponse {
  /// Gets or sets the ipTag type: Example FirstPartyUsage.
  final pulumi.Input<String> ipTagType;

  /// Gets or sets value of the IpTag associated with the public IP. Example HDInsight, SQL, Storage etc
  final pulumi.Input<String> tag;

  /// Creates a new [IpTagResponse].
  /// [ipTagType] Gets or sets the ipTag type: Example FirstPartyUsage.
  /// [tag] Gets or sets value of the IpTag associated with the public IP. Example HDInsight, SQL, Storage etc
  IpTagResponse({required this.ipTagType, required this.tag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipTagType': ipTagType, 'tag': tag};
  }

  factory IpTagResponse.fromMap(Map<String, dynamic> map) {
    return IpTagResponse(
      ipTagType: pulumi.Input.fromValue(map['ipTagType'] as String),
      tag: pulumi.Input.fromValue(map['tag'] as String),
    );
  }
}
