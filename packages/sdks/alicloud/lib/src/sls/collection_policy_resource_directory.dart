// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectionPolicyResourceDirectory {
  /// Supports the all (select all) mode and custom mode under this Resource Directory.
  final pulumi.Input<String>? accountGroupType;
  /// The list of member accounts when the Resource Directory is configured in custom mode.
  final pulumi.Input<List<String>>? members;

  /// Creates a new [CollectionPolicyResourceDirectory].
  /// [accountGroupType] Supports the all (select all) mode and custom mode under this Resource Directory.
  /// [members] The list of member accounts when the Resource Directory is configured in custom mode.
  CollectionPolicyResourceDirectory({
    this.accountGroupType,
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountGroupType': ?accountGroupType,
      'members': ?members,
    };
  }

  factory CollectionPolicyResourceDirectory.fromMap(Map<String, dynamic> map) {
    return CollectionPolicyResourceDirectory(
      accountGroupType: map['accountGroupType'] == null ? null : (map['accountGroupType']! as String).input(),
      members: map['members'] == null ? null : ((map['members']! as List).cast<String>()).input(),
    );
  }
}

