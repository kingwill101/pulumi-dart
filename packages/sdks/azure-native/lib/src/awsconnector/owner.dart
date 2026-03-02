// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Owner
class Owner {
  /// <p>Container for the display name of the owner. This value is only supported in the following Amazon Web Services Regions:</p> <ul> <li> <p>US East (N. Virginia)</p> </li> <li> <p>US West (N. California)</p> </li> <li> <p>US West (Oregon)</p> </li> <li> <p>Asia Pacific (Singapore)</p> </li> <li> <p>Asia Pacific (Sydney)</p> </li> <li> <p>Asia Pacific (Tokyo)</p> </li> <li> <p>Europe (Ireland)</p> </li> <li> <p>South America (São Paulo)</p> </li> </ul> <note> <p>This functionality is not supported for directory buckets.</p> </note>
  final pulumi.Input<String>? displayName;
  /// <p>Container for the ID of the owner.</p>
  final pulumi.Input<String>? id;

  /// Creates a new [Owner].
  /// [displayName] <p>Container for the display name of the owner. This value is only supported in the following Amazon Web Services Regions:</p> <ul> <li> <p>US East (N. Virginia)</p> </li> <li> <p>US West (N. California)</p> </li> <li> <p>US West (Oregon)</p> </li> <li> <p>Asia Pacific (Singapore)</p> </li> <li> <p>Asia Pacific (Sydney)</p> </li> <li> <p>Asia Pacific (Tokyo)</p> </li> <li> <p>Europe (Ireland)</p> </li> <li> <p>South America (São Paulo)</p> </li> </ul> <note> <p>This functionality is not supported for directory buckets.</p> </note>
  /// [id] <p>Container for the ID of the owner.</p>
  Owner({
    this.displayName,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
    };
  }

  factory Owner.fromMap(Map<String, dynamic> map) {
    return Owner(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

