// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Property/Properties which represent a unique ID.
class StrongIdResponse {
  /// Localized descriptions.
  final pulumi.Input<Map<String, String>>? description;
  /// Localized display name.
  final pulumi.Input<Map<String, String>>? displayName;
  /// The properties which make up the unique ID.
  final pulumi.Input<List<String>> keyPropertyNames;
  /// The Name identifying the strong ID.
  final pulumi.Input<String> strongIdName;

  /// Creates a new [StrongIdResponse].
  /// [description] Localized descriptions.
  /// [displayName] Localized display name.
  /// [keyPropertyNames] The properties which make up the unique ID.
  /// [strongIdName] The Name identifying the strong ID.
  StrongIdResponse({
    this.description,
    this.displayName,
    required this.keyPropertyNames,
    required this.strongIdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'keyPropertyNames': keyPropertyNames,
      'strongIdName': strongIdName,
    };
  }

  factory StrongIdResponse.fromMap(Map<String, dynamic> map) {
    return StrongIdResponse(
      description: map['description'] == null ? null : ((map['description']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName']! as Map).cast<String, String>()).input(),
      keyPropertyNames: ((map['keyPropertyNames'] as List).cast<String>()).input(),
      strongIdName: (map['strongIdName'] as String).input(),
    );
  }
}

