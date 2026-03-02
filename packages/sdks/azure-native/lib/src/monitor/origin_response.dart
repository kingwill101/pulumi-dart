// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details about the origin of the entity - the source that added it to the issue
class OriginResponse {
  /// The ID of the origin - for example, in case of 'Manual', the user ID/app ID, and in case of 'Automatic', the name of the automatic system
  final pulumi.Input<String> addedBy;
  /// The source of the origin - Manual or Automatic
  final pulumi.Input<String> addedByType;

  /// Creates a new [OriginResponse].
  /// [addedBy] The ID of the origin - for example, in case of 'Manual', the user ID/app ID, and in case of 'Automatic', the name of the automatic system
  /// [addedByType] The source of the origin - Manual or Automatic
  OriginResponse({
    required this.addedBy,
    required this.addedByType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedBy': addedBy,
      'addedByType': addedByType,
    };
  }

  factory OriginResponse.fromMap(Map<String, dynamic> map) {
    return OriginResponse(
      addedBy: (map['addedBy'] as String).input(),
      addedByType: (map['addedByType'] as String).input(),
    );
  }
}

